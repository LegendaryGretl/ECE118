/*
 * File:   part4_main.c
 * Author: maansilv
 *
 * Created on April 22, 2022, 7:45 PM
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

int main(void) {

    BOARD_Init();
    PWM_Init();
    LED_Init();

    LED_AddBanks(LED_BANK1);
    LED_AddBanks(LED_BANK2);
    if (PWM_AddPins(PWM_PORTZ06) == ERROR) {
        printf("\r\nError adding PWM pins");
        while (1);
    }
    
    PORTY08_TRIS = 1; // input from switch
    PORTY09_TRIS = 0; // output to h bridge pin 2
    PORTY11_TRIS = 0; // output to h bridge pin 3 

    int leds_to_light = 0;
    int duty_cycle = MIN_PWM;

    printf("\r\nLab 3 Part 4, complied on %s %s", __DATE__, __TIME__);

    if (!(AD_ActivePins() & AD_PORTW3)) {
        if (AD_AddPins(AD_PORTW3) == ERROR) {
            printf("\r\nError adding AD pins");
            while (1);
        }
    }
    printf("\r\nactive pins: %x", AD_ActivePins());

    while (1) {
        //DELAY(A_LOT);
        if (AD_IsNewDataReady() == TRUE) {
            if (AD_ReadADPin(AD_PORTW3) == ERROR) {
                printf("\r\nError reading AD pins");
                while (1);
            }

            //printf("\r\nAD reading: %d", AD_ReadADPin(AD_PORTW3));
            leds_to_light = (15 * AD_ReadADPin(AD_PORTW3)) / 1023;
            LED_SetBank(LED_BANK1, leds_to_light);

            duty_cycle = (((MAX_PWM - MIN_PWM) * AD_ReadADPin(AD_PORTW3)) / 1023) + MIN_PWM;
            //printf("\r\n%d", duty_cycle);
            if (duty_cycle > MAX_PWM) {
                printf("\r\npulse too large: %d, %d", duty_cycle, AD_ReadADPin(AD_PORTW3));
                duty_cycle = MAX_PWM;
            } else if (duty_cycle < MIN_PWM) {
                printf("\r\npulse too smol: %d, %d", duty_cycle, AD_ReadADPin(AD_PORTW3));
                duty_cycle = MIN_PWM;
            }
            
            //printf("\r\ninput signal port: %d", PORTY08_BIT);
            if (PORTY08_BIT == 0){
                //printf("\r\ninput signal low");
                PORTY09_LAT = 0;
                PORTY11_LAT = 1;
                LED_SetBank(LED_BANK2, 0b0011);
            } else if (PORTY08_BIT == 1){
                //printf("\r\ninput signal low");
                PORTY09_LAT = 1;
                PORTY11_LAT = 0;
                LED_SetBank(LED_BANK2, 0b1100);
            } else {
                printf("\r\ninput signal error: %d", PORTY08_LAT);
            }
            
            if (PWM_SetDutyCycle(PWM_PORTZ06, duty_cycle) == ERROR) {
                printf("\r\nError setting PWM pins");
                while (1);
            }
        }
    }

    while (1);
}
