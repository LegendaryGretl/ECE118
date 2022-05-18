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
#include "RobotMovementService.h"
#include "motors.h"
#include <stdio.h>

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/

#define BATTERY_DISCONNECT_THRESHOLD 175
#define STOP_TIME 500
#define WHEEL_ROTATION_FOR_360_BOT_TURN 1525
#define TICKS_PER_WHEEL_ROTATION 408

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
uint8_t InitTemplateService(uint8_t Priority) {
    ES_Event ThisEvent;

    MyPriority = Priority;

    // in here you write your initialization code
    // this includes all hardware and software initialization
    // that needs to occur.

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
uint8_t PostRobotMovementService(ES_Event ThisEvent) {
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
ES_Event RunRobotMovementService(ES_Event ThisEvent) {
    ES_Event ReturnEvent;
    static ES_Event lastEvent;
    ReturnEvent.EventType = ES_NO_EVENT; // assume no errors

    /********************************************
     in here you write your service code
     *******************************************/

    ES_EventTyp_t curEvent;

    switch (ThisEvent.EventType) {
        case ES_INIT:
            // No hardware initialization or single time setups, those
            // go in the init function above.
            //
            SetCalibratedLeftMotorSpeed(0);
            SetCalibratedRightMotorSpeed(0);
            // This section is used to reset service for some reason
            break;

        case ES_MOVE_BOT_STOP:
            SetCalibratedLeftMotorSpeed(0);
            SetCalibratedRightMotorSpeed(0);
            break;

        case ES_MOVE_BOT_DRIVE_FORWARDS:
            // Stop the bot for 1/2 second, then drive forwards
            SetCalibratedLeftMotorSpeed(0);
            SetCalibratedRightMotorSpeed(0);
            lastEvent = ThisEvent;
            ES_Timer_InitTimer(ROBOT_MOVEMENT_TIMER, STOP_TIME);
            break;

        case ES_MOVE_BOT_DRIVE_BACKWARDS:
            // Stop the bot for 1/2 second, then drive backwards
            SetCalibratedLeftMotorSpeed(0);
            SetCalibratedRightMotorSpeed(0);
            lastEvent = ThisEvent;
            ES_Timer_InitTimer(ROBOT_MOVEMENT_TIMER, STOP_TIME);
            break;

        case ES_MOVE_BOT_TANK_TURN_LEFT:
            // Stop the bot for 1/2 second, then start turn
            SetCalibratedLeftMotorSpeed(0);
            SetCalibratedRightMotorSpeed(0);
            lastEvent = ThisEvent;
            ES_Timer_InitTimer(ROBOT_MOVEMENT_TIMER, STOP_TIME);
            break;

        case ES_MOVE_BOT_TANK_TURN_RIGHT:
            // Stop the bot for 1/2 second, then start turn
            SetCalibratedLeftMotorSpeed(0);
            SetCalibratedRightMotorSpeed(0);
            lastEvent = ThisEvent;
            ES_Timer_InitTimer(ROBOT_MOVEMENT_TIMER, STOP_TIME);
            break;

        case ES_MOVE_BOT_GRADUAL_TURN_LEFT:
            // Stop the bot for 1/2 second, then start turn
            SetCalibratedLeftMotorSpeed(0);
            SetCalibratedRightMotorSpeed(0);
            lastEvent = ThisEvent;
            ES_Timer_InitTimer(ROBOT_MOVEMENT_TIMER, STOP_TIME);
            break;

        case ES_MOVE_BOT_GRADUAL_TURN_RIGHT:
            // Stop the bot for 1/2 second, then start turn
            SetCalibratedLeftMotorSpeed(0);
            SetCalibratedRightMotorSpeed(0);
            lastEvent = ThisEvent;
            ES_Timer_InitTimer(ROBOT_MOVEMENT_TIMER, STOP_TIME);
            break;

        case ES_TIMERACTIVE:
        case ES_TIMERSTOPPED:
            break;

        case ES_TIMEOUT:
            if (ThisEvent.EventParam != ROBOT_MOVEMENT_TIMER) {
                break;
            }
            int rotation_ticks;
            switch (lastEvent.EventType) {
                case ES_MOVE_BOT_DRIVE_FORWARDS:
                    SetCalibratedLeftMotorSpeed(100);
                    SetCalibratedRightMotorSpeed(100);
                    if (ThisEvent.EventParam > 0) {
                        rotation_ticks = lastEvent.EventParam;
                    } else {
                        rotation_ticks = 10;
                    }
                    ReturnEvent.EventType = ES_TURN_LEFT_MOTOR_N_ROTATIONS;
                    ReturnEvent.EventParam = rotation_ticks;
                    PostMotorEncoderService(ReturnEvent);
                    ReturnEvent.EventType = ES_TURN_RIGHT_MOTOR_N_ROTATIONS;
                    PostMotorEncoderService(ReturnEvent);
                    break;
                case ES_MOVE_BOT_DRIVE_BACKWARDS:
                    SetCalibratedLeftMotorSpeed(-100);
                    SetCalibratedRightMotorSpeed(-100);
                    if (ThisEvent.EventParam > 0) {
                        rotation_ticks = lastEvent.EventParam;
                    } else {
                        rotation_ticks = 10;
                    }
                    ReturnEvent.EventType = ES_TURN_LEFT_MOTOR_N_ROTATIONS;
                    ReturnEvent.EventParam = rotation_ticks;
                    PostMotorEncoderService(ReturnEvent);
                    ReturnEvent.EventType = ES_TURN_RIGHT_MOTOR_N_ROTATIONS;
                    PostMotorEncoderService(ReturnEvent);
                    break;
                case ES_MOVE_BOT_TANK_TURN_LEFT:
                    SetCalibratedLeftMotorSpeed(-100);
                    SetCalibratedRightMotorSpeed(100);
                    rotation_ticks = (WHEEL_ROTATION_FOR_360_BOT_TURN * lastEvent.EventParam) / 360;
                    ReturnEvent.EventType = ES_TURN_LEFT_MOTOR_N_DEGREES;
                    ReturnEvent.EventParam = rotation_ticks;
                    PostMotorEncoderService(ReturnEvent);
                    ReturnEvent.EventType = ES_TURN_RIGHT_MOTOR_N_DEGREES;
                    PostMotorEncoderService(ReturnEvent);
                    break;
                case ES_MOVE_BOT_TANK_TURN_RIGHT:
                    SetCalibratedLeftMotorSpeed(100);
                    SetCalibratedRightMotorSpeed(-100);
                    rotation_ticks = (WHEEL_ROTATION_FOR_360_BOT_TURN * lastEvent.EventParam) / 360;
                    ReturnEvent.EventType = ES_TURN_LEFT_MOTOR_N_DEGREES;
                    ReturnEvent.EventParam = rotation_ticks;
                    PostMotorEncoderService(ReturnEvent);
                    ReturnEvent.EventType = ES_TURN_RIGHT_MOTOR_N_DEGREES;
                    PostMotorEncoderService(ReturnEvent);
                    break;
                case ES_MOVE_BOT_GRADUAL_TURN_LEFT:
                    if (lastEvent.EventParam) { // drive forwards
                        SetCalibratedLeftMotorSpeed(80);
                        SetCalibratedRightMotorSpeed(100);
                    } else { // drive backwards
                        SetCalibratedLeftMotorSpeed(-80);
                        SetCalibratedRightMotorSpeed(-100);
                    }
                    rotation_ticks = 10;
                    // limit drive amount to 10 wheel rotations
                    ReturnEvent.EventType = ES_TURN_LEFT_MOTOR_N_ROTATIONS;
                    ReturnEvent.EventParam = rotation_ticks;
                    PostMotorEncoderService(ReturnEvent);
                    ReturnEvent.EventType = ES_TURN_RIGHT_MOTOR_N_ROTATIONS;
                    PostMotorEncoderService(ReturnEvent);
                    break;
                case ES_MOVE_BOT_GRADUAL_TURN_RIGHT:
                    if (lastEvent.EventParam) { // drive forwards
                        SetCalibratedLeftMotorSpeed(100);
                        SetCalibratedRightMotorSpeed(80);
                    } else { // drive backwards
                        SetCalibratedLeftMotorSpeed(-100);
                        SetCalibratedRightMotorSpeed(-80);
                    }
                    rotation_ticks = 10;
                    // limit drive amount to 10 wheel rotations
                    ReturnEvent.EventType = ES_TURN_LEFT_MOTOR_N_ROTATIONS;
                    ReturnEvent.EventParam = rotation_ticks;
                    PostMotorEncoderService(ReturnEvent);
                    ReturnEvent.EventType = ES_TURN_RIGHT_MOTOR_N_ROTATIONS;
                    PostMotorEncoderService(ReturnEvent);
                    break;
            }

        case ES_MOTOR_ROTATION_COMPLETE:
            if (ThisEvent.EventParam & 0b10) {
                SetCalibratedLeftMotorSpeed(0);
            }
            if (ThisEvent.EventParam & 0b01) {
                SetCalibratedRightMotorSpeed(0);
            }
            if (lastEvent.EventType == ES_MOTOR_ROTATION_COMPLETE) { // check that both motors are ready to be stopped
                ReturnEvent.EventType = curEvent;
                ReturnEvent.EventParam = 0;
#ifndef SIMPLESERVICE_TEST           // keep this as is for test harness
                PostTopLevelHSM(ReturnEvent);
#else
                PostRobotMovementService(ReturnEvent);
#endif   
            }
            lastEvent = ThisEvent;
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

