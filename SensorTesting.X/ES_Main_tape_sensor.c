#include <BOARD.h>
#include <xc.h>
#include <stdio.h>
#include "ES_Configure_tape_sensor.h"
#include "ES_Framework.h"
#include "BeaconTrackWireEventChecker.h"
#include "BOARD.h"
#include "AD.h"
#include "IO_Ports.h"
#include <stdio.h>

void main(void)
{
    ES_Return_t ErrorType;

    BOARD_Init();

    printf("Starting ES Framework Template\r\n");
    printf("using the 2nd Generation Events & Services Framework\r\n");

    // Your hardware initialization function calls go here
    BOARD_Init();
    AD_Init();
    TRACK_WIRE_SENSOR_LEFT_TRIS = 1;
    TRACK_WIRE_SENSOR_RIGHT_TRIS = 1;
    BEACON_DETECTOR_TRIS = 1;

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