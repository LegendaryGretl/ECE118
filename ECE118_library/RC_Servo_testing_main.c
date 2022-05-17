/*
 * File:   RC_Servo_testing_main.c
 * Author: Margaret Silva
 *
 * Created on May 15, 2022, 7:06 PM
 */


#include "xc.h"
#include "BOARD.h"
#include "RC_Servo.h"
#include "pins.h"

// Basic RC Servo test code

static unsigned int wait = 0;

#define DELAY(x) for (wait=0; wait <= x; wait++) {asm("nop");}
#define A_BIT 18300
#define A_LOT 10*183000

int main(void) {

    BOARD_Init();
    RC_Init();
    
    printf("RC Servo Testing, complied on %s %s\r\n", __DATE__, __TIME__);

    RC_AddPins(RC_SERVO_PIN);

    while (1) {
        RC_SetPulseTime(RC_SERVO_PIN, MINPULSE);
        DELAY(A_LOT);

        RC_SetPulseTime(RC_SERVO_PIN, MAXPULSE);
        DELAY(A_LOT);
    }

    while (1);
}
