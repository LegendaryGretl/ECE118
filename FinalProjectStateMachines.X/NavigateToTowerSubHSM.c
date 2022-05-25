/*
 * File: TemplateSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is for a substate machine. Make sure it has a unique name
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
#include "NavigateToTowerSubHSM.h"
#include "pins.h"
#include "WallFollowFSM.h"
#include "SensorEventChecker.h"
#include "TowerEncirclementFSM.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPSubState,
    NavigateToBeacon,
    ReorientTowardBeacon,
    WallFollow,
    AvoidDeadBot,
} NavigateToTowerSubHSMState_t;

static const char *StateNames[] = {
	"InitPSubState",
	"NavigateToBeacon",
	"ReorientTowardBeacon",
	"WallFollow",
	"AvoidDeadBot",
};



/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */
static void TankTurnLeft(int degrees);
static void TankTurnRight(int degrees);
static void DriveForwards(int distance);
static void DriveBackwards(int distance);
static void StopMoving(void);
static void GradualTurnLeft(int direction);
static void GradualTurnRight(int direction);

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static NavigateToTowerSubHSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateSubHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitNavigateToTowerSubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunNavigateToTowerSubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

/**
 * @Function RunTemplateSubHSM(ES_Event ThisEvent)
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
ES_Event RunNavigateToTowerSubHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    NavigateToTowerSubHSMState_t nextState; // <- change type to correct enum
    static int wiggle_direction = 1; // can be 0 or 1
    static int wiggle_amount = 5; // turn amount in degrees

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPSubState: // If current state is initial Psedudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state
                //InitWallFollowFSM();
                InitTowerEncirclementFSM();

                // now put the machine into the actual initial state
                nextState = NavigateToBeacon;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case NavigateToBeacon: // Drive towards the beacon
            switch (ThisEvent.EventType) {
                case ES_ENTRY: // drive bot forwards
                    DriveForwards(15);
                    break;
                case ES_NO_BEACON_DETECTED: // transition to reorienting to beacon
                    // stop robot
                    StopMoving();
                    nextState = ReorientTowardBeacon;
                    makeTransition = TRUE;
                    break;
                case ES_BUMPER_HIT:
                    printf("\r\nBumper Hit while navigating");
                    // stop robot
                    StopMoving();
                    RunTowerEncirclementFSM(ThisEvent);
                    nextState = WallFollow;
                    makeTransition = TRUE;
                    break;
                case ES_NO_EVENT:
                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        case ReorientTowardBeacon: // wiggle back and forth to look for beacon
            switch (ThisEvent.EventType) {
                case ES_ENTRY: // init wiggle
                    wiggle_direction = 1;
                    wiggle_amount = 5;
                    // tank turn left wiggle amount
                    TankTurnLeft(wiggle_amount);
                    break;
                case ES_BEACON_DETECTED: // stop wiggle and return to beacon navigation
                    // stop robot
                    StopMoving();
                    wiggle_direction = 1;
                    wiggle_amount = 0;
                    nextState = NavigateToBeacon;
                    makeTransition = TRUE;
                    break;
                case ES_MOTOR_ROTATION_COMPLETE: // wiggle in opposite direction with increasing angle
                    wiggle_direction ^= 1;
                    if (wiggle_direction == 1) {
                        wiggle_amount += 5;
                        // tank turn left 2 * wiggle amount
                        TankTurnLeft(2 * wiggle_amount);
                    } else {
                        // tank turn right 2 * wiggle amount
                        TankTurnRight(2 * wiggle_amount);
                    }
                    break;
                case ES_BUMPER_HIT: // investigate bumper collision
                    // stop robot
                    StopMoving();
                    wiggle_direction = 1;
                    wiggle_amount = 0;
                    RunTowerEncirclementFSM(ThisEvent);
                    nextState = WallFollow;
                    makeTransition = TRUE;
                    break;
                case ES_NO_EVENT:
                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        case WallFollow: // follow along wall of tower until track wire is detected
            ThisEvent = RunTowerEncirclementFSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case ES_CORRECT_WALL_DETECTED: // check that correct wall has been detected
                    CurrentState = NavigateToBeacon;
                    return ThisEvent;
                    break;
                case ES_TOWER_LOST: // look for the tower again
                    printf("\r\nTower lost");
                    nextState = ReorientTowardBeacon;
                    makeTransition = TRUE;
                    break;
                case ES_NO_EVENT:
                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        case AvoidDeadBot: // go around dead bot and try to find the beacon again
            //ThisEvent = AvoidDeadBotFSM(ThisEvent);
            switch (ThisEvent.EventType) {
                case ES_DEAD_BOT_AVOIDED:
                    nextState = NavigateToBeacon;
                    makeTransition = TRUE;
                    break;
                case ES_NO_EVENT:
                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        default: // all unhandled states fall into here
            break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunNavigateToTowerSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunNavigateToTowerSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}

/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

void TankTurnLeft(int degrees) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_TANK_TURN_LEFT;
    event.EventParam = degrees;
    PostRobotMovementService(event);
}

void TankTurnRight(int degrees) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_TANK_TURN_RIGHT;
    event.EventParam = degrees;
    PostRobotMovementService(event);
}

void DriveForwards(int distance) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_DRIVE_FORWARDS;
    event.EventParam = distance;
    PostRobotMovementService(event);
}

void DriveBackwards(int distance) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_DRIVE_BACKWARDS;
    event.EventParam = distance;
    PostRobotMovementService(event);
}

void StopMoving(void) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_STOP;
    PostRobotMovementService(event);
}

void GradualTurnLeft(int direction) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_GRADUAL_TURN_LEFT;
    event.EventParam = direction;
    PostRobotMovementService(event);
}

void GradualTurnRight(int direction) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_GRADUAL_TURN_RIGHT;
    event.EventParam = direction;
    PostRobotMovementService(event);
}