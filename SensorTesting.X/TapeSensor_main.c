/*
 * File:   TapeSensor_main.c
 * Author: Margaret Silva
 *
 * Created on May 7, 2022, 8:29 PM
 */

#include "xc.h"
#include "BOARD.h"
#include "AD.h"
#include "IO_Ports.h"
#include "timers.h"
#include <stdio.h>

static unsigned int wait = 0;

#define DELAY(x) for (wait=0; wait <= x; wait++) {asm("nop");}
#define A_BIT 18300
#define A_LOT 183000
#define ADC_DELAY 2

#define TAPE_SENSOR_INPUT_PIN1 AD_PORTV3
#define TAPE_SENSOR_ENABLE_PIN1_TRIS PORTX03_TRIS
#define TAPE_SENSOR_ENABLE_PIN1_LAT PORTX03_LAT

int main(void) {
    BOARD_Init();
    AD_Init();
    TIMERS_Init();
    AD_AddPins(TAPE_SENSOR_INPUT_PIN1);
    TIMERS_StartTimer(1);

    TAPE_SENSOR_ENABLE_PIN1_TRIS = 0;
    TAPE_SENSOR_ENABLE_PIN1_LAT = 0;

    // test if values are getting properly read from ADC pin
    //        while (1) {
    //            TAPE_SENSOR_ENABLE_PIN1_LAT = 1;
    //            DELAY(A_LOT);
    //            while (!AD_IsNewDataReady());
    //            printf("\r\nLight value (on): %d", AD_ReadADPin(TAPE_SENSOR_INPUT_PIN1));
    //            TAPE_SENSOR_ENABLE_PIN1_LAT = 0;
    //            DELAY(A_LOT);
    //            while (!AD_IsNewDataReady());
    //            printf("Light value (off): %d", AD_ReadADPin(TAPE_SENSOR_INPUT_PIN1));
    //        }

    // blocking code to determine proper delay time for tape sensor
    while (1) {
        TAPE_SENSOR_ENABLE_PIN1_LAT = 1;
        TIMERS_InitTimer(1, ADC_DELAY);
        while(TIMERS_IsTimerExpired(1) == TIMER_NOT_EXPIRED);
        while (!AD_IsNewDataReady());
        printf("\r\nLight value (on): %d", AD_ReadADPin(TAPE_SENSOR_INPUT_PIN1));
        TAPE_SENSOR_ENABLE_PIN1_LAT = 0;
        TIMERS_InitTimer(1, ADC_DELAY);
        while(TIMERS_IsTimerExpired(1) == TIMER_NOT_EXPIRED);
        while (!AD_IsNewDataReady());
        printf("Light value (off): %d", AD_ReadADPin(TAPE_SENSOR_INPUT_PIN1));
    }

    while (1);
}
