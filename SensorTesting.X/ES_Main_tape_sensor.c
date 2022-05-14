#include <BOARD.h>
#include <xc.h>
#include <stdio.h>
#include "ES_Configure.h"
#include "ES_Framework.h"
#include "SensorEventChecker.h"
#include "BOARD.h"
#include "AD.h"
#include "IO_Ports.h"
#include <stdio.h>
#include "pins.h"
#include "motors.h"
#include "LED.h"

void main(void) {
    ES_Return_t ErrorType;

    BOARD_Init();

    printf("Starting ES Framework Template\r\n");
    printf("using the 2nd Generation Events & Services Framework\r\n");

    // Your hardware initialization function calls go here
    AD_Init();
    PWM_Init();
    Motors_Init();

    // init input pins
    TRACK_WIRE_SENSOR_LEFT_TRIS = 1;
    TRACK_WIRE_SENSOR_RIGHT_TRIS = 1;
    BEACON_DETECTOR_TRIS = 1;

    SetLeftMotorSpeed(0);

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
