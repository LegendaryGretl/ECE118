#include <BOARD.h>
#include <xc.h>
#include <stdio.h>
#include "ES_Configure.h"
#include "ES_Framework.h"
#include "motors.h"
#include "pwm.h"
#include "AD.h"
#include "RC_Servo.h"
#include "pins.h"
#include "timers.h"

void main(void) {
    ES_Return_t ErrorType;

    BOARD_Init();

    printf("Starting ES Framework Template\r\n");
    printf("using the 2nd Generation Events & Services Framework\r\n");
    printf("Compiled on %s %s\r\n", __DATE__, __TIME__);


    // Your hardware initialization function calls go here
    PWM_Init();
    AD_Init();
    RC_Init();
    Motors_Init();
    TIMERS_Init();
    AD_AddPins(TRACK_WIRE_SENSOR_LEFT);
    AD_AddPins(TRACK_WIRE_SENSOR_RIGHT);
    AD_AddPins(BEACON_DETECTOR);
    AD_AddPins(TAPE_SENSOR_SL_AD);
    AD_AddPins(TAPE_SENSOR_SR_AD);
    AD_AddPins(TAPE_SENSOR_TC_AD);

    // now initialize the Events and Services Framework and start it running
    ErrorType = ES_Initialize();
    if (ErrorType == Success) {
        ErrorType = ES_Run();

    }
    //if we got to here, there was an error
    switch (ErrorType) {
        case FailedPointer:
            printf("Failed on NULL pointer");
            break;
        case FailedInit:
            printf("Failed Initialization");
            break;
        default:
            printf("Other Failure: %d", ErrorType);
            break;
    }
    for (;;)
        ;

};

/*------------------------------- Footnotes -------------------------------*/
/*------------------------------ End of file ------------------------------*/
