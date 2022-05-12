/*
 * File:   MotorTesting_main.c
 * Author: maansilv
 *
 * Created on May 12, 2022, 3:29 PM
 */

#include "xc.h"
#include <stdio.h>
#include "BOARD.h"
#include "serial.h"
#include "LED.h"
#include "AD.h"
#include "pwm.h"
#include "IO_Ports.h"

static unsigned int wait = 0;

#define DELAY(x)    for (wait = 0; wait <= x; wait++) {asm("nop");}
#define FlushPrintBuffer() //while(!IsTransmitEmpty())
#define A_BIT       18300
#define A_LOT       183000

#define H_BRIDGE_EN_A PWM_PORTZ06

#define H_BRIDGE_IN1 PORTZ04_LAT
#define H_BRIDGE_IN1_TRIS PORTZ04_TRIS

#define H_BRIDGE_IN2 PORTZ05_LAT
#define H_BRIDGE_IN2_TRIS PORTZ05_TRIS

#define MIN_SPEED 0
#define MAX_SPEED 100

int main(void) {

    BOARD_Init();
    PWM_Init();
    
    printf("Initial Motor Testing, complied on %s %s\r\n", __DATE__, __TIME__);
    
    if (PWM_AddPins(H_BRIDGE_EN_A) == ERROR) {
        printf("\r\nError adding PWM pins");
        while (1);
    }
    
    H_BRIDGE_IN1_TRIS = 0; // output to h bridge pin 2
    H_BRIDGE_IN2_TRIS = 0; // output to h bridge pin 3 

    int duty_cycle = MIN_PWM;
    int cur_speed = 50;
    
    duty_cycle = (((MAX_PWM - MIN_PWM) * cur_speed) / MAX_SPEED) + MIN_PWM;
    if (duty_cycle > MAX_PWM){
        printf("duty cycle too large\r\n");
        duty_cycle = MAX_PWM;
    }
    if (duty_cycle < MIN_PWM){
        printf("duty cycle too smol\r\n");
        duty_cycle = MIN_PWM;
    }
    
    H_BRIDGE_IN1 = 1;
    H_BRIDGE_IN2 = 0;

    PWM_SetDutyCycle(H_BRIDGE_EN_A, duty_cycle);

    while (1);
}