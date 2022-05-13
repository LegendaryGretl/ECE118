/*
 * File:   TemplateEventChecker.c
 * Author: Gabriel Hugh Elkaim
 *
 * Template file to set up typical EventCheckers for the  Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the
 * names will have to be changed to match your code.
 *
 * This EventCheckers file will work with both FSM's and HSM's.
 *
 * Remember that EventCheckers should only return TRUE when an event has occured,
 * and that the event is a TRANSITION between two detectable differences. They
 * should also be atomic and run as fast as possible for good results.
 *
 * This file includes a test harness that will run the event detectors listed in the
 * ES_Configure file in the project, and will conditionally compile main if the macro
 * EVENTCHECKER_TEST is defined (either in the project or in the file). This will allow
 * you to check you event detectors in their own project, and then leave them untouched
 * for your project unless you need to alter their post functions.
 *
 * Created on September 27, 2013, 8:37 AM
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "SensorEventChecker.h"
#include "MotorEncoderService.h"
#include "ES_Events.h"
#include "serial.h"
#include "AD.h"
#include "ReadSensorService.h"
#include <stdio.h>
#include "pins.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
#define BATTERY_DISCONNECT_THRESHOLD 175

/*******************************************************************************
 * EVENTCHECKER_TEST SPECIFIC CODE                                                             *
 ******************************************************************************/

//#define EVENTCHECKER_TEST
#ifdef EVENTCHECKER_TEST
#include <stdio.h>
#define SaveEvent(x) do {eventName=__func__; storedEvent=x;} while (0)

static const char *eventName;
static ES_Event storedEvent;
#endif

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this EventChecker. They should be functions
   relevant to the behavior of this particular event checker */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                    *
 ******************************************************************************/

/* Any private module level variable that you might need for keeping track of
   events would be placed here. Private variables should be STATIC so that they
   are limited in scope to this module. */

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function CheckTrackWire(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function indicates whether or not track wire has been detected,
 * along with the side that the track wire was detected on
 * @note 00 = no detection, 01 = left only, 10 = right only, 11 = both sides
 */
uint8_t CheckTrackWire(void) {
    static ES_EventTyp_t lastEvent = ES_NO_TRACK_WIRE_DETECTED;
    static uint8_t lastParam = 0;
    ES_EventTyp_t curEvent = ES_NO_TRACK_WIRE_DETECTED;
    uint8_t curParam = 0;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;

    //printf("track wire: %d %d", TRACK_WIRE_SENSOR_LEFT, TRACK_WIRE_SENSOR_RIGHT);

    // the returned event will indicate whether or not the track wire has been
    // detected, with the parameter indicating which side the track wire was 
    // detected on
    if (TRACK_WIRE_SENSOR_LEFT) {
        curEvent = ES_TRACK_WIRE_DETECTED;
        curParam |= 0b01;
    }
    if (TRACK_WIRE_SENSOR_RIGHT) {
        curEvent = ES_TRACK_WIRE_DETECTED;
        curParam |= 0b10;
    }

    if ((curEvent != lastEvent) || (curParam != lastParam)) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = curParam;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
        lastParam = curParam;
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostReadSensorService(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}

/**
 * @Function CheckBeacon(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function indicates whether or not the beacon has been detected
 * @note the param for this function is always 0
 */
uint8_t CheckBeacon(void) {
    static ES_EventTyp_t lastEvent = ES_NO_BEACON_DETECTED;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;

    //printf("beacon: %d", BEACON_DETECTOR);

    // returned event will indicate if beacon is detected or not
    if (BEACON_DETECTOR) {
        curEvent = ES_BEACON_DETECTED;
    } else {
        curEvent = ES_NO_BEACON_DETECTED;
    }

    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = 0;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostReadSensorService(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}

/**
 * @Function CheckTapeSensors(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function indicates whether or not there's been a change in the tape detected
 * @note the param for this function indicates the state of all tape sensors
 */
uint8_t CheckTapeSensors(void) {
    static ES_EventTyp_t lastEvent = ES_NO_TAPE_DETECTED;
    static uint16_t lastParam = 0x00;
    ES_EventTyp_t curEvent = ES_NO_TAPE_DETECTED;
    uint16_t curParam = 0;
    ES_Event thisEvent;
    int i;
    uint16_t marker;
    uint8_t returnVal = FALSE;

    int tape_sensors[NUMBER_OF_TAPE_SENSORS] = {TAPE_SENSOR_1, TAPE_SENSOR_2,
        TAPE_SENSOR_3, TAPE_SENSOR_4, TAPE_SENSOR_5, TAPE_SENSOR_6, TAPE_SENSOR_7,
        TAPE_SENSOR_8};
    marker = 0b01;

    // read each tape sensor, indicate if they have been tripped or not
    for (i = 0; i < NUMBER_OF_TAPE_SENSORS; i++) {
        if (tape_sensors[i]) {
            curEvent = ES_TAPE_DETECTED;
            curParam |= marker;
        }
        marker <<= 1;
    }

    if ((curEvent != lastEvent) || (curParam != lastParam)) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = curParam;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
        lastParam = curParam;
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostReadSensorService(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}

/**
 * @Function CheckLeftMotorEncoder(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function sends an event when it picks up a pulse from the motor's rotary encoder
 * @note the param for this function is always 0
 */
uint8_t CheckLeftMotorEncoder(void) {
    static ES_EventTyp_t lastEvent = ES_ENCODER_PULSE_LOW;
    ES_EventTyp_t curEvent = ES_ENCODER_PULSE_LOW;
    ES_Event thisEvent;
    uint8_t returnVal;

    if (LEFT_MOTOR_ENCODER) {
        curEvent = ES_ENCODER_PULSE_DETECTED_LEFT;
    }

    if (curEvent != lastEvent) { // check for change from last time
        lastEvent = curEvent; // update history
        if (curEvent == ES_ENCODER_PULSE_DETECTED_LEFT) {
            thisEvent.EventType = curEvent;
            returnVal = TRUE;
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
            PostMotorEncoderService(thisEvent);
#else
            SaveEvent(thisEvent);
#endif   
        }
    }
    return (returnVal);
}

/**
 * @Function CheckRightMotorEncoder(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function sends an event when it picks up a pulse from the motor's rotary encoder
 * @note the param for this function is always 0
 */
uint8_t CheckRightMotorEncoder(void) {
    static ES_EventTyp_t lastEvent = ES_ENCODER_PULSE_LOW;
    ES_EventTyp_t curEvent = ES_ENCODER_PULSE_LOW;
    ES_Event thisEvent;
    uint8_t returnVal;

    if (RIGHT_MOTOR_ENCODER) {
        curEvent = ES_ENCODER_PULSE_DETECTED_RIGHT;
    }

    if (curEvent != lastEvent) { // check for change from last time
        lastEvent = curEvent; // update history
        if (curEvent == ES_ENCODER_PULSE_DETECTED_RIGHT) {
            thisEvent.EventType = curEvent;
            returnVal = TRUE;
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
            PostMotorEncoderService(thisEvent);
#else
            SaveEvent(thisEvent);
#endif   
        }
    }
    return (returnVal);
}

uint8_t CheckMotorEncoder(void) {
    ES_Event thisEvent;
    uint8_t returnVal;
    static uint8_t lastParam = 0;
    uint8_t curParam = 0;

    if (LEFT_MOTOR_ENCODER) {
        curParam |= 0b10;
        //curEventLeft = ES_ENCODER_PULSE_DETECTED_LEFT;
    }

    if (RIGHT_MOTOR_ENCODER) {
        curParam |= 0b01;
        //curEventRight = ES_ENCODER_PULSE_DETECTED_RIGHT;
    }

    if ((curParam ^ lastParam) & curParam) {
        thisEvent.EventType = ES_ENCODER_PULSE_DETECTED;
        thisEvent.EventParam = (curParam ^ lastParam) & curParam; // indicates which encoder has received a pulse
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostMotorEncoderService(thisEvent);
#else
        SaveEvent(thisEvent);
#endif  
    }
    
    lastParam = curParam;
    return (returnVal);
}

/* 
 * The Test Harness for the event checkers is conditionally compiled using
 * the EVENTCHECKER_TEST macro (defined either in the file or at the project level).
 * No other main() can exist within the project.
 * 
 * It requires a valid ES_Configure.h file in the project with the correct events in 
 * the enum, and the correct list of event checkers in the EVENT_CHECK_LIST.
 * 
 * The test harness will run each of your event detectors identically to the way the
 * ES_Framework will call them, and if an event is detected it will print out the function
 * name, event, and event parameter. Use this to test your event checking code and
 * ensure that it is fully functional.
 * 
 * If you are locking up the output, most likely you are generating too many events.
 * Remember that events are detectable changes, not a state in itself.
 * 
 * Once you have fully tested your event checking code, you can leave it in its own
 * project and point to it from your other projects. If the EVENTCHECKER_TEST marco is
 * defined in the project, no changes are necessary for your event checkers to work
 * with your other projects.
 */
#ifdef EVENTCHECKER_TEST
#include <stdio.h>
static uint8_t(*EventList[])(void) = {EVENT_CHECK_LIST};

void PrintEvent(void);

void main(void) {
    BOARD_Init();
    /* user initialization code goes here */

    // Do not alter anything below this line
    int i;

    printf("\r\nEvent checking test harness for %s", __FILE__);

    while (1) {
        if (IsTransmitEmpty()) {
            for (i = 0; i< sizeof (EventList) >> 2; i++) {
                if (EventList[i]() == TRUE) {
                    PrintEvent();
                    break;
                }

            }
        }
    }
}

void PrintEvent(void) {
    printf("\r\nFunc: %s\tEvent: %s\tParam: 0x%X", eventName,
            EventNames[storedEvent.EventType], storedEvent.EventParam);
}
#endif