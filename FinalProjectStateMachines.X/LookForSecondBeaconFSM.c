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

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include "TopLevelHSM.h"
#include "LookForSecondBeaconFSM.h"
#include "SensorEventChecker.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPSubState,
    ScanLeftForNewTower,
    RealignWithWall,
    DriveAlongWall,
    PivotAroundCorner,
    LeftAdjustmentTurn,
    RightAdjustmentTurn,
    RightMajorTurn,
} LookForSecondBeaconFSMState_t;

static const char *StateNames[] = {
	"InitPSubState",
	"ScanLeftForNewTower",
	"RealignWithWall",
	"DriveAlongWall",
	"PivotAroundCorner",
	"LeftAdjustmentTurn",
	"RightAdjustmentTurn",
	"RightMajorTurn",
};



/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */
static void DriveForwardsPrecise(int distance);
static void DriveForwards(int distance);
static void DriveBackwardsPrecise(int distance);
static void StopMoving(void);
static void DriveBackwards(int distance);
static void TankTurnLeft(int degrees);
static void TankTurnRight(int degrees);
static void PivotTurnRight(int direction);
static void GradualPivotTurnRight(int direction);

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static LookForSecondBeaconFSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
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
uint8_t InitLookForSecondBeaconFSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunLookForSecondBeaconFSM(INIT_EVENT);
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
ES_Event RunLookForSecondBeaconFSM(ES_Event ThisEvent) {
    static int marker = 0;
    uint8_t makeTransition = FALSE; // use to flag transition
    LookForSecondBeaconFSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPSubState: // If current state is initial Psedudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state

                // now put the machine into the actual initial state
                nextState = DriveAlongWall;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case ScanLeftForNewTower:
            switch (ThisEvent.EventType) {
                case ES_ENTRY: // start scan for new tower
                    TankTurnRight(300);
                    break;
                case ES_BEACON_DETECTED:
                    StopMoving();
                    CurrentState = ScanLeftForNewTower;
                    return ThisEvent;
                    break;
                case ES_MOTOR_ROTATION_COMPLETE:
                    StopMoving();
                    nextState = RealignWithWall;
                    makeTransition = TRUE;
                    break;
                case ES_BUMPER_HIT: // readjust to not continuously hit the wall
                    if ((ThisEvent.EventParam & BUMPER_ASR_MASK) ||
                            (ThisEvent.EventParam & BUMPER_AFR_MASK) ||
                            (ThisEvent.EventParam & BUMPER_AFL_MASK) ||
                            (ThisEvent.EventParam & BUMPER_ASL_MASK)) {
                        StopMoving();
                        nextState = RealignWithWall;
                        makeTransition = TRUE;
                    }
                    break;
                default:
                    break;
            }
            break;

        case RealignWithWall:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    TankTurnLeft(300);
                    break;
                case ES_BUMPER_HIT:
                    if ((ThisEvent.EventParam & BUMPER_FSR_MASK) ||
                            (ThisEvent.EventParam & BUMPER_FFR_MASK)) {
                        StopMoving();
                        nextState = LeftAdjustmentTurn;
                        makeTransition = TRUE;
                    } else if (ThisEvent.EventParam & BUMPER_ASR_MASK) {
                        StopMoving();
                        nextState = RightAdjustmentTurn;
                        makeTransition = TRUE;
                    }
                    break;
                case ES_MOTOR_ROTATION_COMPLETE:
                    break;
                case ES_BEACON_DETECTED:
                    ThisEvent.EventType = ES_NO_EVENT;
                default:
                    break;
            }
            break;

        case PivotAroundCorner:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    PivotTurnRight(0);
                    break;
                case ES_BUMPER_HIT:
                    if ((ThisEvent.EventParam & BUMPER_ASR_MASK) ||
                            (ThisEvent.EventParam & BUMPER_AFR_MASK)) {
                        StopMoving();
                        nextState = RightAdjustmentTurn;
                        makeTransition = TRUE;
                    } else if (ThisEvent.EventParam & BUMPER_FSR_MASK) {
                        StopMoving();
                        nextState = RightAdjustmentTurn;
                        makeTransition = TRUE;
                    } else if ((ThisEvent.EventParam & BUMPER_ASL_MASK) ||
                            (ThisEvent.EventParam & BUMPER_AFL_MASK)) {
                        StopMoving();
                        nextState = RightMajorTurn;
                        makeTransition = TRUE;
                    }
                    break;
                case ES_NO_EVENT:
                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        case DriveAlongWall:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    DriveBackwards(2);
                    break;
                case ES_TAPE_DETECTED: // has the bot gone past the side of the tower
                    if (ThisEvent.EventParam & TAPE_SENSOR_TL_MASK) {
                        StopMoving();
                        nextState = PivotAroundCorner;
                        makeTransition = TRUE;
                    }
                    break;
                case ES_BUMPER_HIT: // readjust to not continuously hit the wall
                    if (ThisEvent.EventParam & BUMPER_ASR_MASK) {
                        nextState = LeftAdjustmentTurn;
                        makeTransition = TRUE;
                    }
                    break;
                case ES_MOTOR_ROTATION_COMPLETE: // the bot has gone past the side of the tower
                    CurrentState = PivotAroundCorner;
                    ThisEvent.EventType = ES_TOWER_LOST;
                    return ThisEvent;
                    break;
                case ES_NO_EVENT:
                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        case LeftAdjustmentTurn:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    TankTurnLeft(15);
                    break;
                case ES_BUMPER_HIT:
                case ES_BUMPER_RELEASED:
                    if (((ThisEvent.EventParam & BUMPER_FSR_MASK) == 0) &&
                            ((ThisEvent.EventParam & BUMPER_FFR_MASK) == 0)) {
                        //TankTurnLeft(3);
                        StopMoving();
                        nextState = DriveAlongWall;
                        makeTransition = TRUE;
                        break;
                    }
                    break;
                case ES_MOTOR_ROTATION_COMPLETE:
                    nextState = DriveAlongWall;
                    makeTransition = TRUE;
                    break;
                case ES_NO_EVENT:
                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        case RightMajorTurn:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    TankTurnRight(45);
                    break;
                case ES_BUMPER_HIT:
                case ES_BUMPER_RELEASED:
                    if ((ThisEvent.EventParam & BUMPER_ASR_MASK) ||
                            (ThisEvent.EventParam & BUMPER_AFR_MASK)) {
                        StopMoving();
                        nextState = RightAdjustmentTurn;
                        makeTransition = TRUE;
                    } else if (ThisEvent.EventParam & BUMPER_FSR_MASK) {
                        StopMoving();
                        nextState = LeftAdjustmentTurn;
                        makeTransition = TRUE;
                    } else if (((ThisEvent.EventParam & BUMPER_ASL_MASK) == 0) &&
                            ((ThisEvent.EventParam & BUMPER_AFL_MASK) == 0)) {
                        StopMoving();
                        nextState = DriveAlongWall;
                        makeTransition = TRUE;
                        break;
                    }
                    break;
                case ES_MOTOR_ROTATION_COMPLETE:
                    nextState = DriveAlongWall;
                    makeTransition = TRUE;
                    break;
                case ES_NO_EVENT:
                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        case RightAdjustmentTurn:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    TankTurnRight(15);
                    break;
                case ES_BUMPER_HIT:
                case ES_BUMPER_RELEASED:
                    if (((ThisEvent.EventParam & BUMPER_ASR_MASK) == 0) &&
                            ((ThisEvent.EventParam & BUMPER_AFR_MASK) == 0)) {
                        //TankTurnRight(3);
                        StopMoving();
                        nextState = DriveAlongWall;
                        makeTransition = TRUE;
                        break;
                    }
                    break;
                case ES_MOTOR_ROTATION_COMPLETE:
                    nextState = DriveAlongWall;
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
        RunLookForSecondBeaconFSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunLookForSecondBeaconFSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}

/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

void DriveForwardsPrecise(int distance) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_DRIVE_FORWARDS_PRECISE;
    event.EventParam = distance;
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

void DriveBackwardsPrecise(int distance) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_DRIVE_BACKWARDS_PRECISE;
    event.EventParam = distance;
    PostRobotMovementService(event);
}

void StopMoving(void) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_STOP;
    PostRobotMovementService(event);
}

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

void PivotTurnRight(int direction) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_PIVOT_TURN_RIGHT;
    event.EventParam = direction;
    PostRobotMovementService(event);
}

void GradualPivotTurnRight(int direction) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_GRADUAL_PIVOT_TURN_RIGHT;
    event.EventParam = direction;
    PostRobotMovementService(event);
}