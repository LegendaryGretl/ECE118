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
#include "TopLevelHSM.h"
#include <stdio.h>
#include "pins.h"
#include "timers.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
#define BATTERY_DISCONNECT_THRESHOLD 175
#define TRACK_WIRE_DETECTED_LOGIC_HIGH 2000 // units: mV
#define TRACK_WIRE_DETECTED_LOGIC_LOW 1300 
#define BEACON_DETECTED_LOGIC_HIGH 2000

#define TC_DETECTS_NOTHING 935
#define TC_1_INCH_AWAY 500
#define TC_2_INCH_AWAY 830

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
 * @note 00 = no detection, 10 = left only, 01 = right only, 11 = both sides
 */
uint8_t CheckTrackWire(void) {
    static ES_EventTyp_t lastEvent = ES_NO_TRACK_WIRE_DETECTED;
    static uint8_t lastParam = 0;
    static int counter = -1;
    ES_EventTyp_t curEvent = ES_NO_TRACK_WIRE_DETECTED;
    uint8_t curParam = 0;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;

    // the returned event will indicate whether or not the track wire has been
    // detected, with the parameter indicating which side the track wire was 
    // detected on
    int left_voltage_level = (3300 * AD_ReadADPin(TRACK_WIRE_SENSOR_LEFT)) / 1023;
    int right_voltage_level = (3300 * AD_ReadADPin(TRACK_WIRE_SENSOR_RIGHT)) / 1023;

    if (left_voltage_level < TRACK_WIRE_DETECTED_LOGIC_HIGH) {
        curEvent = ES_TRACK_WIRE_DETECTED;
        curParam |= 0b10;
    }

    if (right_voltage_level < TRACK_WIRE_DETECTED_LOGIC_HIGH) {
        curEvent = ES_TRACK_WIRE_DETECTED;
        curParam |= 0b01;
    }
    
    if (curParam != lastParam){
        counter = 0;
        lastParam = curParam;
    } else if (counter > -1){
        counter++;
    }

    if (counter > 100) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = curParam;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
        lastParam = curParam;
        counter = -1;
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostTopLevelHSM(thisEvent);
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
    static int counter = -1;
    ES_EventTyp_t curEvent = ES_NO_BEACON_DETECTED;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;

    int beacon_voltage_level = (3300 * AD_ReadADPin(BEACON_DETECTOR)) / 1023;
    if (beacon_voltage_level < BEACON_DETECTED_LOGIC_HIGH) {
        curEvent = ES_BEACON_DETECTED;
    }

    if (curEvent != lastEvent) {
        counter = 0;
        lastEvent = curEvent;
    } else if (counter > -1) {
        counter++;
    }

    if (counter > 100) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = 0;
        returnVal = TRUE;
        counter = -1;
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostTopLevelHSM(thisEvent);
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
    static unsigned int prevPollTime = 0;
    ES_EventTyp_t curEvent = ES_NO_TAPE_DETECTED;
    uint16_t curParam = 0;
    ES_Event thisEvent;
    int i;
    uint16_t marker;
    uint8_t returnVal = FALSE;

    int tape_sensors[NUMBER_OF_TAPE_SENSORS] = {TAPE_SENSOR_FL, TAPE_SENSOR_FC,
        TAPE_SENSOR_FR, TAPE_SENSOR_BL, TAPE_SENSOR_BR, TAPE_SENSOR_SL, TAPE_SENSOR_SR,
        TAPE_SENSOR_TC, TAPE_SENSOR_TL};
    unsigned int curPollTime = TIMERS_GetTime();
#ifdef TEST_SENSOR_INTEGRATION
    curPollTime = 0;
#endif
    marker = 0b01;

    // read each tape sensor, indicate if they have been tripped or not
    for (i = 0; i < NUMBER_OF_TAPE_SENSORS; i++) {
        if (tape_sensors[i] == 1) { // when the tape sensor reads low, either tape or nothing is detected
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
#ifndef TEST_SENSOR_INTEGRATION
        prevPollTime = curPollTime;
#endif
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostTopLevelHSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    } else if ((curEvent == ES_TAPE_DETECTED) && ((curPollTime - prevPollTime) > 500)) {
        // report event every .5 seconds that the bot's still on tape
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = curParam;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
        lastParam = curParam;
#ifndef TEST_SENSOR_INTEGRATION
        prevPollTime = curPollTime;
#endif
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostTopLevelHSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif 
    }
    return (returnVal);
}

/**
 * @Function PollTapeSensors(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function indicates whether or not there's been a change in the tape detected
 * @note behaves the same as check tape sensors, except that it always reports an event when called
 *      mainly used by the get back on course state machine when checking for tape events
 */
uint8_t PollTapeSensors(void) {
    ES_EventTyp_t curEvent = ES_NO_TAPE_DETECTED;
    uint16_t curParam = 0;
    ES_Event thisEvent;
    int i;
    uint16_t marker;
    uint8_t returnVal = FALSE;

    int tape_sensors[NUMBER_OF_TAPE_SENSORS] = {TAPE_SENSOR_FL, TAPE_SENSOR_FC,
        TAPE_SENSOR_FR, TAPE_SENSOR_BL, TAPE_SENSOR_BR, TAPE_SENSOR_SL, TAPE_SENSOR_TC,
        TAPE_SENSOR_TC};

    marker = 0b01;

    // read each tape sensor, indicate if they have been tripped or not
    for (i = 0; i < NUMBER_OF_TAPE_SENSORS; i++) {
        if (tape_sensors[i] == 1) { // when the tape sensor reads low, either tape or nothing is detected
            curEvent = ES_TAPE_DETECTED;
            curParam |= marker;
        }
        marker <<= 1;
    }

    thisEvent.EventType = curEvent;
    thisEvent.EventParam = curParam;
    returnVal = TRUE;
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
    PostTopLevelHSM(thisEvent);
#else
    SaveEvent(thisEvent);
#endif   

    return (returnVal);
}

/**
 * @Function PollSideTapeSensors(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function returns the adc value of the corresponding side tape sensor
 * @note works similarly to the other poll function, except only for the side 
 *       tape sensors, and the param of the returned event is a value b/w
 *       0 - 1023 corresponding to analog output
 */
uint8_t PollSideTapeSensors(int mask) {
    ES_EventTyp_t curEvent = ES_NO_EVENT;
    uint16_t curParam = 0;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;

    if (mask & TAPE_SENSOR_SL_MASK) { // side left
        curEvent = ES_TAPE_SIDE_LEFT;
        curParam = AD_ReadADPin(TAPE_SENSOR_SL_AD);
    } else if (mask & TAPE_SENSOR_SR_MASK) { // side right
        curEvent = ES_TAPE_SIDE_RIGHT;
        curParam = AD_ReadADPin(TAPE_SENSOR_SR_AD);
    } else if (mask & TAPE_SENSOR_TC_MASK) { // top center
        curEvent = ES_TAPE_TOP_CENTER;
        curParam = AD_ReadADPin(TAPE_SENSOR_TC_AD);
    }

    thisEvent.EventType = curEvent;
    thisEvent.EventParam = curParam;
    returnVal = TRUE;
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
    PostTopLevelHSM(thisEvent);
#else
    SaveEvent(thisEvent);
#endif   

    return (returnVal);
}

/**
 * @Function CheckMotorEncoder(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function sends an event when it picks up a pulse from the motor's rotary encoder
 * @note the param for this function has 0b10 for left and 0b01 for right
 */
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

/**
 * @Function CheckBumpers(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function sends an event when a bumper is hit or released
 * @note the param for this function is the pattern of currently pressed bumpers
 * the pattern goes clockwise from the fore side left bumper
 */
uint8_t CheckBumpers(void) {
    static ES_EventTyp_t lastEvent = ES_BUMPER_RELEASED;
    static uint16_t lastParam = 0x00;
    static int counter = -1;
    ES_EventTyp_t curEvent = ES_BUMPER_RELEASED;
    uint16_t curParam = 0;
    ES_Event thisEvent;
    int i;
    uint16_t marker;
    uint8_t returnVal = FALSE;

    int bumpers[NUMBER_OF_BUMPERS] = {BUMPER_FSL, BUMPER_FFL, BUMPER_FFR,
        BUMPER_FSR, BUMPER_ASR, BUMPER_AFR, BUMPER_AFL, BUMPER_ASL};
    marker = 0b01;

    // read each tape sensor, indicate if they have been tripped or not
    for (i = 0; i < NUMBER_OF_BUMPERS; i++) {
        if (bumpers[i] == 0) {
            curEvent = ES_BUMPER_HIT;
            curParam |= marker;
        }
        marker <<= 1;
    }

    if (curParam != lastParam) { // detect change 
        counter = 0;
        lastEvent = curEvent;
        lastParam = curParam;
    } else if (counter > -1) { // debouncing, ensures that change is stable
        counter++;
    }

    if (counter >= 250) { // report back only stable changes
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = curParam;
        counter = -1;
        returnVal = TRUE;
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostTopLevelHSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}

/**
 * @Function CheckPingSensor(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function sends an event when it picks up a pulse from the ping sensor
 * @note The param for this function is the time corresponding to the last pulse's
 * high time
 * This is done to account for the fact that the timer outputs a 32 bit unsigned
 * integer, while the event's param is only 16 bits
 */
//uint8_t CheckPingSensor(void) {
//    static ES_EventTyp_t lastEvent = ES_PING_SENSOR_PULSE_LOW;
//    static unsigned int prevTime = 0;
//    ES_Event thisEvent;
//    ES_EventTyp_t curEvent = ES_PING_SENSOR_PULSE_LOW;
//    uint8_t returnVal;
//    unsigned int curTime = TIMERS_GetTime();
//    
//    if (PING_SENSOR_ECHO) {
//        curEvent = ES_PING_SENSOR_PULSE_HIGH;
//        prevTime = curTime;
//    }
//
//    if ((curEvent != lastEvent) && (curEvent == ES_PING_SENSOR_PULSE_LOW)) {
//        thisEvent.EventType = curEvent;
//        thisEvent.EventParam = curTime - prevTime; // indicates pulse high time
//        lastEvent = curEvent;
//#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
//        PostMotorEncoderService(thisEvent);
//#else
//        SaveEvent(thisEvent);
//#endif  
//    }
//    
//    return (returnVal);
//}

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