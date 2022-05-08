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
#include "ES_Configure_tape_sensor.h"
#include "ES_Framework.h"
#include "ReadSensorService.h"
#include <stdio.h>

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/

#define BATTERY_DISCONNECT_THRESHOLD 175
#define DELAY_BETWEEN_READINGS 1000

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
uint8_t InitReadSensorService(uint8_t Priority) {
    ES_Event ThisEvent;

    MyPriority = Priority;

    // in here you write your initialization code
    // this includes all hardware and software initialization
    // that needs to occur.
    ES_Timer_InitTimer(READ_SENSOR_TIMER, DELAY_BETWEEN_READINGS);
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
uint8_t PostReadSensorService(ES_Event ThisEvent) {
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
ES_Event RunReadSensorService(ES_Event ThisEvent) {
    ES_Event ReturnEvent;
    ES_Event post_this_event;
    ReturnEvent.EventType = ES_NO_EVENT; // assume no errors

    /********************************************
     in here you write your service code
     *******************************************/
    static ES_EventTyp_t lastEvent = ES_NO_EVENT;

    switch (ThisEvent.EventType) {
        case ES_INIT:
            // No hardware initialization or single time setups, those
            // go in the init function above.
            //
            // This section is used to reset service for some reason
            lastEvent = ES_NO_EVENT;
            break;

        case ES_TIMERACTIVE:
        case ES_TIMERSTOPPED:
            break;

        case ES_TIMEOUT:
            if (ThisEvent.EventParam == READ_SENSOR_TIMER) {
                // time to take a new reading!
                post_this_event.EventType = ES_READ_TAPE_SENSOR; // assume no errors
                PostTapeSensorService(post_this_event);
            } else {
                break;
            }
            break;

        case ES_TAPE_DETECTED:
            printf("\r\nTape detected: %d", ThisEvent.EventParam);
            ES_Timer_InitTimer(READ_SENSOR_TIMER, DELAY_BETWEEN_READINGS);
            break;

        case ES_NO_TAPE_DETECTED:
            printf("\r\nNo tape detected: %d", ThisEvent.EventParam);
            ES_Timer_InitTimer(READ_SENSOR_TIMER, DELAY_BETWEEN_READINGS);
            break;

        default:
            //            if (ThisEvent.EventType == ES_TAPE_DETECTED) {
            //                printf("\r\nTape detected: %d", ThisEvent.EventParam);
            //            } else if (ThisEvent.EventType == ES_NO_TAPE_DETECTED) {
            //                printf("\r\nNo tape detected: %d", ThisEvent.EventParam);
            //            } else {
            //                printf("\r\nsome other event occurred");
            //            }
            //            // some sensor returned a result
            //            if (ThisEvent.EventType != lastEvent) { // check for change from last time
            //
            //                ReturnEvent.EventType = ThisEvent.EventType;
            //                ReturnEvent.EventParam = ThisEvent.EventParam;
            //                lastEvent = ThisEvent.EventType; // update history
            //#ifndef SIMPLESERVICE_TEST           // keep this as is for test harness
            //                //PostGenericService(ReturnEvent);
            //#else
            //                PostReadSensorService(ReturnEvent);
            //#endif   
            //            }
            //ES_Timer_InitTimer(READ_SENSOR_TIMER, 100);
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

