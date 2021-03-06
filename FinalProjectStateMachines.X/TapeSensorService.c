/*
 * File: TemplateService.h
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Template file to set up a simple service to work with the Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that this file
 * will need to be modified to fit your exact needs, and most of the names will have
 * to be changed to match your code.
 *
 * This is provided as an example and a good place to start.
 *
 * Created on 23/Oct/2011
 * Updated on 13/Nov/2013
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "BOARD.h"
#include "AD.h"
#include "ES_Configure.h"
#include "ES_Framework.h"
#include "TapeSensorService.h"
#include <stdio.h>
#include "BOARD.h"
#include "AD.h"
#include "IO_Ports.h"
#include "SensorEventChecker.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/

#define BATTERY_DISCONNECT_THRESHOLD 175
// these thresholds will change based on distance from tape sensor to ground, as
// well as the lighting conditions
#define HYSTERESIS_LOWER_THRESHOLD 990
#define HYSTERESIS_UPPER_THRESHOLD 1010

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                    *
 ******************************************************************************/
/* You will need MyPriority and maybe a state variable; you may need others
 * as well. */

static uint8_t MyPriority;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateService(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateService function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitTapeSensorService(uint8_t Priority) {
    ES_Event ThisEvent;

    MyPriority = Priority;

    // in here you write your initialization code
    // this includes all hardware and software initialization
    // that needs to occur.

    AD_AddPins(TAPE_SENSOR_INPUT_PIN1); // init ADC input pin
    TAPE_SENSOR_ENABLE_PIN1_TRIS = 0; // init enable pin to be output
    TAPE_SENSOR_ENABLE_PIN1_LAT = 0;

    // init tape sensor pins to be inputs
    TAPE_SENSOR_1_TRIS = 1;
    TAPE_SENSOR_2_TRIS = 1;
    TAPE_SENSOR_3_TRIS = 1;
    TAPE_SENSOR_4_TRIS = 1;
    TAPE_SENSOR_5_TRIS = 1;
    TAPE_SENSOR_6_TRIS = 1;
    TAPE_SENSOR_7_TRIS = 1;
    TAPE_SENSOR_8_TRIS = 1;

    // post the initial transition event
    ThisEvent.EventType = ES_INIT;
    if (ES_PostToService(MyPriority, ThisEvent) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostTemplateService(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostTapeSensorService(ES_Event ThisEvent) {
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunTemplateService(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the service,
 *        as this is called any time a new event is passed to the event queue. 
 * @note Remember to rename to something appropriate.
 *       Returns ES_NO_EVENT if the event have been "consumed." 
 * @author J. Edward Carryer, 2011.10.23 19:25 */
ES_Event RunTapeSensorService(ES_Event ThisEvent) {
    ES_Event ReturnEvent;
    ReturnEvent.EventType = ES_NO_EVENT; // assume no errors

    /********************************************
     in here you write your service code
     *******************************************/
    static ES_EventTyp_t lastEvent = ES_NO_TAPE_DETECTED;
    static uint16_t lastParam = 0x00;
    ES_EventTyp_t curEvent = ES_NO_TAPE_DETECTED;
    uint16_t curParam = 0;
    uint16_t light_level;
    int i;
    uint16_t marker;

    switch (ThisEvent.EventType) {
        case ES_INIT:
            // No hardware initialization or single time setups, those
            // go in the init function above.
            //
            // This section is used to reset service for some reason
            TAPE_SENSOR_ENABLE_PIN1_LAT = 0; // turn off the tape sensor
            break;

        case ES_TIMERACTIVE:
        case ES_TIMERSTOPPED:
            break;

        case ES_READ_TAPE_SENSOR:
            // some function elsewhere wants to read from the tape sensor
            // when more tape sensors are added, the argument of this event will 
            // set the tape sensor(s) that will be read
            TAPE_SENSOR_ENABLE_PIN1_LAT = 1; // turn on the tape sensor
            ES_Timer_InitTimer(TAPE_SENSOR_TIMER, 2);
            break;

        case ES_TIMEOUT:
            if (ThisEvent.EventParam != TAPE_SENSOR_TIMER) {
                break;
            }
            //            // ADC signal has stabilized and is ready to be read from 
            //            light_level = AD_ReadADPin(TAPE_SENSOR_INPUT_PIN1);
            //            if (light_level > HYSTERESIS_UPPER_THRESHOLD) { // tape detected
            //                curEvent = ES_TAPE_DETECTED;
            //            } else if (light_level < HYSTERESIS_LOWER_THRESHOLD) {
            //                curEvent = ES_NO_TAPE_DETECTED;
            //            } else {
            //                curEvent = lastEvent;
            //            }
            TAPE_SENSOR_ENABLE_PIN1_LAT = 0; // turn off the tape sensor   
            marker = 0b01;
            int tape_sensors[NUMBER_OF_TAPE_SENSORS] = {TAPE_SENSOR_1, TAPE_SENSOR_2, 
                TAPE_SENSOR_3, TAPE_SENSOR_4, TAPE_SENSOR_5, TAPE_SENSOR_6, 
                TAPE_SENSOR_7, TAPE_SENSOR_8};
            // read each tape sensor, indicate if they have been tripped or not
            for (i = 0; i < NUMBER_OF_TAPE_SENSORS; i++) {
                if (tape_sensors[i]) {
                    curEvent = ES_TAPE_DETECTED;
                    curParam |= marker;
                }
                marker <<= 1;
            }
            ReturnEvent.EventType = curEvent;
            ReturnEvent.EventParam = curParam;
            lastEvent = curEvent; // update history
            lastParam = curParam;
#ifndef SIMPLESERVICE_TEST           // keep this as is for test harness
            PostReadSensorService(ReturnEvent);
#else
            PostTapeSensorService(ReturnEvent);
#endif               
            break;
#ifdef SIMPLESERVICE_TEST     // keep this as is for test harness      
        default:
            printf("\r\nEvent: %s\tParam: 0x%X",
                    EventNames[ThisEvent.EventType], ThisEvent.EventParam);
            break;
#endif
    }

    return ReturnEvent;
}

/*******************************************************************************
 * PRIVATE FUNCTIONs                                                           *
 ******************************************************************************/

