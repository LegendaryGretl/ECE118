/*
 * File: TemplateSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel Elkaim and Soja-Marie Morgens
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is another template file for the SubHSM's that is slightly differet, and
 * should be used for all of the subordinate state machines (flat or heirarchical)
 *
 * This is provided as an example and a good place to start.
 *
 * History
 * When           Who     What/Why
 * -------------- ---     --------
 * 09/13/13 15:17 ghe      added tattletail functionality and recursive calls
 * 01/15/12 11:12 jec      revisions for Gen2 framework
 * 11/07/11 11:26 jec      made the queue static
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunTemplateSM()
 * 10/23/11 18:20 jec      began conversion from SMTemplate.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include <stdio.h>

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include "motors.h"
#include "TopLevelHSM.h"
#include "DetectBeaconSubHSM.h"
#include "NavigateToTowerSubHSM.h"
#include "AlignAndLaunchSubHSM.h"
#include "SensorEventChecker.h" //#include all sub state machines called

/*******************************************************************************
 * PRIVATE #DEFINES                                                            *
 ******************************************************************************/
//Include any defines you need to do

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/


typedef enum {
    InitPState,
    DetectBeacon, // detect first beacon
    NavigateToTower, // navigate to the correct face of the tower
    AlignAndLaunch, // align with hole, launch ball, and detect next tower
} TopLevelHSMState_t;

static const char *StateNames[] = {
	"InitPState",
	"DetectBeacon",
	"NavigateToTower",
	"AlignAndLaunch",
};


/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine
   Example: char RunAway(uint_8 seconds);*/
/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static TopLevelHSMState_t CurrentState = InitPState; // <- change enum name to match ENUM
static uint8_t MyPriority;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitTopLevelHSM(uint8_t Priority) {
    MyPriority = Priority;
    // put us into the Initial PseudoState
    CurrentState = InitPState;
    // post the initial transition event
    if (ES_PostToService(MyPriority, INIT_EVENT) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostTemplateHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostTopLevelHSM(ES_Event ThisEvent) {
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunTemplateHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the heirarchical state
 *        machine, as this is called any time a new event is passed to the event
 *        queue. This function will be called recursively to implement the correct
 *        order for a state transition to be: exit current state -> enter next state
 *        using the ES_EXIT and ES_ENTRY events.
 * @note Remember to rename to something appropriate.
 *       The lower level state machines are run first, to see if the event is dealt
 *       with there rather than at the current level. ES_EXIT and ES_ENTRY events are
 *       not consumed as these need to pass pack to the higher level state machine.
 * @author J. Edward Carryer, 2011.10.23 19:25
 * @author Gabriel H Elkaim, 2011.10.23 19:25 */
ES_Event RunTopLevelHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    TopLevelHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPState: // If current state is initial Pseudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state
                // Initialize all sub-state machines
                InitDetectBeaconSubHSM();
                // now put the machine into the actual initial state
                nextState = DetectBeacon;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                ;
            }
            break;

        case DetectBeacon: // point bot in the direct of a beacon
#ifdef MOTOR_CALIBRATION
            ThisEvent.EventType = ES_START_MOTOR_CALIBRATION;
            PostMotorEncoderService(ThisEvent);
            break;
#endif
#ifdef TEST_MOTOR_SYNC
            if (ThisEvent.EventType == ES_MOTOR_ROTATION_COMPLETE) {
                if (ThisEvent.EventParam & 0b10) {
                    SetCalibratedLeftMotorSpeed(0);
                }
                if (ThisEvent.EventParam & 0b01) {
                    SetCalibratedRightMotorSpeed(0);
                }
                break;
            }
            SetCalibratedLeftMotorSpeed(100);
            SetCalibratedRightMotorSpeed(100);
            ThisEvent.EventType = ES_TURN_LEFT_MOTOR_N_ROTATIONS;
            ThisEvent.EventParam = 10;
            PostMotorEncoderService(ThisEvent);
            ThisEvent.EventType = ES_TURN_RIGHT_MOTOR_N_ROTATIONS;
            ThisEvent.EventParam = 10;
            PostMotorEncoderService(ThisEvent);
            break;
#endif
#ifdef TEST_SENSOR_INTEGRATION
            switch (ThisEvent.EventType) {
                case ES_BEACON_DETECTED:
                    printf("\r\nBeacon Detected");
                    break;
                case ES_NO_BEACON_DETECTED:
                    printf("\r\nBeacon Not Detected");
                    break;
                case ES_TRACK_WIRE_DETECTED:
                    printf("\r\nTrack Wire Detected: %x", ThisEvent.EventParam);
                    break;
                case ES_NO_TRACK_WIRE_DETECTED:
                    printf("\r\nTrack Wire Not Detected: %x", ThisEvent.EventParam);
                    break;
                case ES_TAPE_DETECTED:
                    printf("\r\nTape Detected -- ");
                    if (ThisEvent.EventParam & BOTTOM_TAPE_SENSORS) {
                        printf("Bottom Tape Sensors: %x", ThisEvent.EventParam & BOTTOM_TAPE_SENSORS);
                    }
                    if (ThisEvent.EventParam & SIDE_TAPE_SENSORS) {
                        printf("Side Tape Sensors: %x", ThisEvent.EventParam & SIDE_TAPE_SENSORS);
                    }
                    break;
                case ES_NO_TAPE_DETECTED:
                    printf("\r\nTape Not Detected -- ");
                    if (ThisEvent.EventParam & BOTTOM_TAPE_SENSORS) {
                        printf("Side Tape Sensors: %x", ThisEvent.EventParam & BOTTOM_TAPE_SENSORS);
                    }
                    if (ThisEvent.EventParam & SIDE_TAPE_SENSORS) {
                        printf("Side Tape Sensors: %x", ThisEvent.EventParam & SIDE_TAPE_SENSORS);
                    }
                    break;
                case ES_BUMPER_HIT:
                    printf("\r\nBumper Hit: %x", ThisEvent.EventParam);
                    break;
                case ES_BUMPER_RELEASED:
                    printf("\r\nBumper Released: %x", ThisEvent.EventParam);
                    break;
            }
            break;
#endif 
            ThisEvent = RunDetectBeaconSubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case ES_BEACON_DETECTED:
                    makeTransition = TRUE;
                    nextState = NavigateToTower;
                default:
                    break;
            }
            break;

        case NavigateToTower: // get bot on the correct face of a tower
            ThisEvent = RunNavigateToTowerSubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case ES_TRACK_WIRE_DETECTED:
                    makeTransition = TRUE;
                    nextState = AlignAndLaunch;
                    break;
                default:
                    break;
            }
            break;

        case AlignAndLaunch: // align shooter with hole and launch ball
            ThisEvent = RunAlignAndLaunchSubHSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case ES_BEACON_DETECTED:
                    makeTransition = TRUE;
                    nextState = NavigateToTower;
                    break;
                default:
                    break;
            }
            break;

        default: // all unhandled states fall into here
            break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunTopLevelHSM(EXIT_EVENT);
        CurrentState = nextState;
        RunTopLevelHSM(ENTRY_EVENT);
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
