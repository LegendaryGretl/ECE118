// INLCUDED LIBRARIES
#include "motors.h"
#include "xc.h"
#include <stdio.h>
#include "BOARD.h"
#include "serial.h"
#include "LED.h"
#include "AD.h"
#include "pwm.h"
#include "IO_Ports.h"
#include "pins.h"

// #DEFINE CONSTANTS   
// formula for max speed : (100 * (5000 - ticks left over on slower motor)) / 5000
#define LEFT_MOTOR_MAX_SPEED 100
#define RIGHT_MOTOR_MAX_SPEED 97//(100 * (5000 - 230)) / 5000

/**
 * @Function Motors_Init(void)
 * @param None
 * @return SUCCESS or ERROR
 * @brief  Initializes the pins needed to run both motors
 * @note  Assumes that board and pwm have already been initialized
 * @author Margaret Silva 5.12.2022 */
char Motors_Init(void) {
    // add pwm pins used to enable motors
    if (PWM_AddPins(H_BRIDGE_EN_A) == ERROR) {
        return ERROR;
    }
    if (PWM_AddPins(H_BRIDGE_EN_B) == ERROR) {
        return ERROR;
    }

    // set pins connect to h-bridge inputs to output mode
    H_BRIDGE_IN1_TRIS = 0;
    H_BRIDGE_IN2_TRIS = 0;
    H_BRIDGE_IN3_TRIS = 0;
    H_BRIDGE_IN4_TRIS = 0;

    // set pins connected to encoder outputs to input mode
    LEFT_MOTOR_ENCODER_TRIS = 1;
    RIGHT_MOTOR_ENCODER_TRIS = 1;

    return SUCCESS;
}

/**
 * @Function SetLeftMotorSpeed(void)
 * @param speed, an integer in range [-100, 100]. negative makes the motor run 
 *          backwards
 * @return SUCCESS or ERROR
 * @brief  Sets the left motor to turn at the provided speed
 * @note  if the speed is out of range, will return an error and set speed within
 *          safe range
 * @author Margaret Silva 5.12.2022 */
char SetLeftMotorSpeed(int speed) {
    int duty_cycle;
    char result = SUCCESS;
    // set direction
    if (speed < 0) {
        H_BRIDGE_IN1 = 0;
        H_BRIDGE_IN2 = 1;
        speed *= -1; // convert to positive
    } else {
        H_BRIDGE_IN1 = 1;
        H_BRIDGE_IN2 = 0;
    }

    // calculate duty cycle and ensure it's within the safe range
    duty_cycle = (((MAX_PWM - MIN_PWM) * speed) / MAX_MOTOR_SPEED) + MIN_PWM;
    if (duty_cycle > MAX_PWM) {
        result = ERROR;
        duty_cycle = MAX_PWM;
    }
    if (duty_cycle < MIN_PWM) {
        result = ERROR;
        duty_cycle = MIN_PWM;
    }
    // set duty cycle
    PWM_SetDutyCycle(H_BRIDGE_EN_A, duty_cycle);

    return result;
}

/**
 * @Function SetRightMotorSpeed(void)
 * @param speed, an integer in range [-100, 100]. negative makes the motor run 
 *          backwards
 * @return SUCCESS or ERROR
 * @brief  Sets the right motor to turn at the provided speed
 * @note  if the speed is out of range, will return an error and set speed within
 *          safe range
 * @author Margaret Silva 5.12.2022 */
char SetRightMotorSpeed(int speed) {
    int duty_cycle;
    char result = SUCCESS;
    // set direction
    if (speed < 0) {
        H_BRIDGE_IN3 = 0;
        H_BRIDGE_IN4 = 1;
        speed *= -1; // convert to positive
    } else {
        H_BRIDGE_IN3 = 1;
        H_BRIDGE_IN4 = 0;
    }

    // calculate duty cycle and ensure it's within the safe range
    duty_cycle = (((MAX_PWM - MIN_PWM) * speed) / MAX_MOTOR_SPEED) + MIN_PWM;
    if (duty_cycle > MAX_PWM) {
        result = ERROR;
        duty_cycle = MAX_PWM;
    }
    if (duty_cycle < MIN_PWM) {
        result = ERROR;
        duty_cycle = MIN_PWM;
    }
    // set duty cycle
    PWM_SetDutyCycle(H_BRIDGE_EN_B, duty_cycle);

    return result;
}

/**
 * @Function SetCalibratedLeftMotorSpeed(void)
 * @param speed, an integer in range [-100, 100]. negative makes the motor run 
 *          backwards
 * @return SUCCESS or ERROR
 * @brief  Sets the left motor to turn at the provided speed
 * @note  This function uses SetLeftMotorSpeed, but calibrates the speed based 
 *        on the last motor calibration
 * @author Margaret Silva 5.17.2022 */
char SetCalibratedLeftMotorSpeed(int speed) {
    int calib_speed = (LEFT_MOTOR_MAX_SPEED * speed) / 100;
    return SetLeftMotorSpeed(calib_speed);
}

/**
 * @Function SetCalibratedRightMotorSpeed(void)
 * @param speed, an integer in range [-100, 100]. negative makes the motor run 
 *          backwards
 * @return SUCCESS or ERROR
 * @brief  Sets the right motor to turn at the provided speed
 * @note  This function uses SetRightMotorSpeed, but calibrates the speed based 
 *        on the last motor calibration
 * @author Margaret Silva 5.17.2022 */
char SetCalibratedRightMotorSpeed(int speed) {
    int calib_speed = (RIGHT_MOTOR_MAX_SPEED * speed) / 100;
    return SetRightMotorSpeed(calib_speed);
}


// TEST HARNESS
#ifdef TEST_MOTOR_LIBRARY
static unsigned int wait = 0;
#define DELAY(x)    for (wait = 0; wait <= x; wait++) {asm("nop");}
#define A_LOT       10*183000

int main(void) {
    BOARD_Init();
    PWM_Init();
    Motors_Init();

    printf("Motor Library Test Harness, complied on %s %s\r\n", __DATE__, __TIME__);

    printf("Testing left motor:\r\n");
    printf("Drive forward at\r\n");
    printf("25 speed, ");
    SetLeftMotorSpeed(25);
    DELAY(A_LOT);
    printf("50 speed, ");
    SetLeftMotorSpeed(50);
    DELAY(A_LOT);
    printf("100 speed\r\n");
    SetLeftMotorSpeed(100);
    DELAY(A_LOT);
    printf("Stop motor\r\n");
    SetLeftMotorSpeed(0);
    DELAY(A_LOT);
    printf("Drive backwards at\r\n");
    printf("25 speed, ");
    SetLeftMotorSpeed(-25);
    DELAY(A_LOT);
    printf("50 speed, ");
    SetLeftMotorSpeed(-50);
    DELAY(A_LOT);
    printf("100 speed\r\n");
    SetLeftMotorSpeed(-100);
    DELAY(A_LOT);
    printf("Stop motor\r\n");
    SetLeftMotorSpeed(0);
    DELAY(A_LOT);

    printf("Testing right motor:\r\n");
    printf("Drive forward at\r\n");
    printf("25 speed, ");
    SetRightMotorSpeed(25);
    DELAY(A_LOT);
    printf("50 speed, ");
    SetRightMotorSpeed(50);
    DELAY(A_LOT);
    printf("100 speed\r\n");
    SetRightMotorSpeed(100);
    DELAY(A_LOT);
    printf("Stop motor\r\n");
    SetRightMotorSpeed(0);
    DELAY(A_LOT);
    printf("Drive backwards at\r\n");
    printf("25 speed, ");
    SetRightMotorSpeed(-25);
    DELAY(A_LOT);
    printf("50 speed, ");
    SetRightMotorSpeed(-50);
    DELAY(A_LOT);
    printf("100 speed\r\n");
    SetRightMotorSpeed(-100);
    DELAY(A_LOT);
    printf("Stop motor\r\n");
    SetRightMotorSpeed(0);
    DELAY(A_LOT);

    printf("Testing both motor:\r\n");
    printf("Drive both forward at\r\n");
    printf("50 speed, ");
    SetLeftMotorSpeed(50);
    SetRightMotorSpeed(50);
    DELAY(A_LOT);
    printf("100 speed\r\n");
    SetLeftMotorSpeed(100);
    SetRightMotorSpeed(100);
    DELAY(A_LOT);
    printf("Stop motors\r\n");
    SetLeftMotorSpeed(0);
    SetRightMotorSpeed(0);
    DELAY(A_LOT);
    printf("Drive both backwards at\r\n");
    printf("50 speed, ");
    SetLeftMotorSpeed(-50);
    SetRightMotorSpeed(-50);
    DELAY(A_LOT);
    printf("100 speed\r\n");
    SetLeftMotorSpeed(-100);
    SetRightMotorSpeed(-100);
    DELAY(A_LOT);
    printf("Stop motors\r\n");
    SetLeftMotorSpeed(0);
    SetRightMotorSpeed(0);
    DELAY(A_LOT);
    printf("Left forwards, right backwards at\r\n");
    printf("50 speed, ");
    SetLeftMotorSpeed(50);
    SetRightMotorSpeed(-50);
    DELAY(A_LOT);
    printf("100 speed\r\n");
    SetLeftMotorSpeed(100);
    SetRightMotorSpeed(-100);
    DELAY(A_LOT);
    printf("Stop motors\r\n");
    SetLeftMotorSpeed(0);
    SetRightMotorSpeed(0);
    DELAY(A_LOT);
    printf("Left backwards, right forwards at\r\n");
    printf("50 speed, ");
    SetLeftMotorSpeed(-50);
    SetRightMotorSpeed(50);
    DELAY(A_LOT);
    printf("100 speed\r\n");
    SetLeftMotorSpeed(-100);
    SetRightMotorSpeed(100);
    DELAY(A_LOT);
    printf("Stop motors\r\n");
    SetLeftMotorSpeed(0);
    SetRightMotorSpeed(0);
    DELAY(A_LOT);

    while (1);
}
#endif

#ifdef TEST_MOTOR_ENCODER
static unsigned int wait = 0;
#define DELAY(x)    for (wait = 0; wait <= x; wait++) {asm("nop");}
#define A_LOT       10*183000

int main(void) {
    BOARD_Init();
    PWM_Init();
    Motors_Init();

    printf("Motor Encoder Test Harness, complied on %s %s\r\n", __DATE__, __TIME__);

    SetLeftMotorSpeed(100);

    while (1);
}

#endif