/* 
 * File:   motors.h
 * Author: Margaret Silva
 *
 * Created on May 12, 2022, 4:33 PM
 */

#ifndef MOTORS_H
#define	MOTORS_H

// INCLUDE 

// PUBLIC DEFINES
#define MIN_MOTOR_SPEED 0
#define MAX_MOTOR_SPEED 100

// PUBLIC FUNTIONS

/**
 * @Function Motors_Init(void)
 * @param None
 * @return SUCCESS or ERROR
 * @brief  Initializes the pins needed to run both motors
 * @note  Assumes that board and pwm have already been initialized
 * @author Margaret Silva 5.12.2022 */
char Motors_Init(void);

/**
 * @Function SetLeftMotorSpeed(void)
 * @param speed, an integer in range [-100, 100]. negative makes the motor run 
 *          backwards
 * @return SUCCESS or ERROR
 * @brief  Sets the left motor to turn at the provided speed
 * @note  if the speed is out of range, will return an error and set speed within
 *          safe range
 * @author Margaret Silva 5.12.2022 */
char SetLeftMotorSpeed(int speed);

/**
 * @Function SetRightMotorSpeed(void)
 * @param speed, an integer in range [-100, 100]. negative makes the motor run 
 *          backwards
 * @return SUCCESS or ERROR
 * @brief  Sets the right motor to turn at the provided speed
 * @note  if the speed is out of range, will return an error and set speed within
 *          safe range
 * @author Margaret Silva 5.12.2022 */
char SetRightMotorSpeed(int speed);

#endif	/* MOTORS_H */

