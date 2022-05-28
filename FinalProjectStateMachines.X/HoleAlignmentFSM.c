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
#include "HoleAlignmentFSM.h"
#include "pins.h"
#include "SensorEventChecker.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPSubState,
    //GetOnWall,
    AlignWithWall,
    AlignWithTapeForwards,
    AlignWithTapeBackwards,
    FineAdjustmentForwards,
    FineAdjustmentBackwards,
    GetBackOnWallForwards,
    GetBackOnWallBackwards,
    LeftAdjustmentTurn,
    RightAdjustmentTurn,
    CheckAlignment,
    VerifyShooterAlignment,
} HoleAlignmentFSMState_t;

static const char *StateNames[] = {
	"InitPSubState",
	"AlignWithWall",
	"AlignWithTapeForwards",
	"AlignWithTapeBackwards",
	"FineAdjustmentForwards",
	"FineAdjustmentBackwards",
	"GetBackOnWallForwards",
	"GetBackOnWallBackwards",
	"LeftAdjustmentTurn",
	"RightAdjustmentTurn",
	"CheckAlignment",
	"VerifyShooterAlignment",
};



/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */
static void TankTurnLeft(int degrees);
static void TankTurnRight(int degrees);
static void DriveForwards(int distance);
static void DriveForwardsPrecise(int distance);
static void DriveBackwards(int distance);
static void DriveBackwardsPrecise(int distance);
static void StopMoving(void);
static void GradualTurnLeft(int direction);
static void GradualTurnRight(int direction);

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static HoleAlignmentFSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
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
uint8_t InitHoleAlignmentFSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunHoleAlignmentFSM(INIT_EVENT);
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
ES_Event RunHoleAlignmentFSM(ES_Event ThisEvent) {
    static HoleAlignmentFSMState_t prevState = AlignWithTapeForwards;
    uint8_t makeTransition = FALSE; // use to flag transition
    HoleAlignmentFSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPSubState: // If current state is initial Psedudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state

                // now put the machine into the actual initial state
                nextState = AlignWithTapeForwards;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case AlignWithTapeForwards:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    ThisEvent.EventType = ES_MOVE_BOT_SET_SPEED;
                    ThisEvent.EventParam = 80;
                    PostRobotMovementService(ThisEvent);
                    //DriveForwards(2);
                    GradualTurnRight(1);
                    break;
                case ES_BUMPER_HIT:
                    if (ThisEvent.EventParam & (BUMPER_FFR_MASK | BUMPER_FSR_MASK)) {
                        prevState = CurrentState;
                        nextState = LeftAdjustmentTurn;
                        makeTransition = TRUE;
                    } else if (ThisEvent.EventParam & (BUMPER_AFR_MASK | BUMPER_ASR_MASK)) {
                        prevState = CurrentState;
                        nextState = RightAdjustmentTurn;
                        makeTransition = TRUE;
                    }
                    break;
                case ES_TRACK_WIRE_DETECTED:
                case ES_NO_TRACK_WIRE_DETECTED:
                    if ((ThisEvent.EventParam & 0b11) == 0b11) {
                        break;
                    } else if ((ThisEvent.EventParam & 0b11) == 0) { // go back to tower circling
                        break;
                    } else if ((ThisEvent.EventParam & 0b01) == 0) { // keep going forward
                        ThisEvent.EventType = ES_NO_EVENT;
                    } else if ((ThisEvent.EventParam & 0b10) == 0) { // reverse
                        ThisEvent.EventType = ES_NO_EVENT;
                        StopMoving();
                        nextState = AlignWithTapeBackwards;
                        makeTransition = TRUE;
                    }
                    break;
                case ES_TAPE_DETECTED:
                    if ((ThisEvent.EventParam & TAPE_SENSOR_TC_MASK) 
                            || (ThisEvent.EventParam & TAPE_SENSOR_TL_MASK)) {
                        StopMoving();
                        nextState = GetBackOnWallBackwards;
                        makeTransition = TRUE;
                        break;
                    } else if (ThisEvent.EventParam & TAPE_SENSOR_SL_MASK) {
                        StopMoving();
                        nextState = FineAdjustmentForwards;
                        makeTransition = TRUE;
                    } else if ((ThisEvent.EventParam & TAPE_SENSOR_SL_MASK) &&
                            (ThisEvent.EventParam & TAPE_SENSOR_SR_MASK)) {
                        StopMoving();
                        nextState = CheckAlignment;
                        makeTransition = TRUE;
                    } else if (ThisEvent.EventParam & TAPE_SENSOR_SR_MASK) {
                        StopMoving();
                        nextState = FineAdjustmentBackwards;
                        makeTransition = TRUE;
                    }
                    break;
                default:
                    break;
            }
            break;

        case GetBackOnWallForwards:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    DriveForwardsPrecise(10);
                    break;
                case ES_MOTOR_ROTATION_COMPLETE:
                    StopMoving();
                    nextState = AlignWithTapeForwards;
                    makeTransition = TRUE;
                    break;
                default:
                    break;
            }
            break;

        case FineAdjustmentForwards:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    DriveForwardsPrecise(2);
                    break;
                case ES_TAPE_DETECTED:
                    if (ThisEvent.EventParam & TAPE_SENSOR_TC_MASK) {
                        StopMoving();
                        nextState = GetBackOnWallBackwards;
                        makeTransition = TRUE;
                        break;
                    } else if ((ThisEvent.EventParam & TAPE_SENSOR_SL_MASK) &&
                            (ThisEvent.EventParam & TAPE_SENSOR_SR_MASK)) {
                        StopMoving();
                        nextState = CheckAlignment;
                        makeTransition = TRUE;
                    } else if (ThisEvent.EventParam & TAPE_SENSOR_SR_MASK) {
                        StopMoving();
                        nextState = FineAdjustmentBackwards;
                        makeTransition = TRUE;
                    }
                    break;
                case ES_MOTOR_ROTATION_COMPLETE:
                    nextState = AlignWithTapeForwards;
                    makeTransition = TRUE;
                    break;
                default:
                    break;
            }
            break;

        case AlignWithTapeBackwards:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    //GradualTurnLeft(0);
                    DriveBackwards(2);
                    break;
                case ES_BUMPER_HIT:
                    if (ThisEvent.EventParam & (BUMPER_FFR_MASK | BUMPER_FSR_MASK)) {
                        prevState = CurrentState;
                        nextState = LeftAdjustmentTurn;
                        makeTransition = TRUE;
                    } else if (ThisEvent.EventParam & (BUMPER_AFR_MASK | BUMPER_ASR_MASK)) {
                        prevState = CurrentState;
                        nextState = RightAdjustmentTurn;
                        makeTransition = TRUE;
                    }
                    break;
                case ES_TRACK_WIRE_DETECTED:
                case ES_NO_TRACK_WIRE_DETECTED:
                    if ((ThisEvent.EventParam & 0b11) == 0b11) {
                        break;
                    } else if ((ThisEvent.EventParam & 0b11) == 0) { // go back to tower circling
                        break;
                    } else if ((ThisEvent.EventParam & 0b01) == 0) { // go forward
                        ThisEvent.EventType = ES_NO_EVENT;
                        StopMoving();
                        nextState = AlignWithTapeForwards;
                        makeTransition = TRUE;
                    } else if ((ThisEvent.EventParam & 0b10) == 0) { // keep going backwards
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                    break;
                case ES_TAPE_DETECTED:
                    if (ThisEvent.EventParam & TAPE_SENSOR_TC_MASK) {
                        StopMoving();
                        nextState = GetBackOnWallForwards;
                        makeTransition = TRUE;
                        break;
                    } else if (ThisEvent.EventParam & TAPE_SENSOR_SR_MASK) {
                        StopMoving();
                        nextState = FineAdjustmentBackwards;
                        makeTransition = TRUE;
                    } else if ((ThisEvent.EventParam & TAPE_SENSOR_SL_MASK) &&
                            (ThisEvent.EventParam & TAPE_SENSOR_SR_MASK)) {
                        StopMoving();
                        nextState = CheckAlignment;
                        makeTransition = TRUE;
                    } else if (ThisEvent.EventParam & TAPE_SENSOR_SL_MASK) {
                        StopMoving();
                        nextState = FineAdjustmentForwards;
                        makeTransition = TRUE;
                    }
                    break;
                default:
                    break;
            }
            break;

        case FineAdjustmentBackwards:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    DriveBackwardsPrecise(2);
                    break;
                case ES_TAPE_DETECTED:
                    if (ThisEvent.EventParam & TAPE_SENSOR_TC_MASK) {
                        StopMoving();
                        nextState = GetBackOnWallForwards;
                        makeTransition = TRUE;
                        break;
                    } else if ((ThisEvent.EventParam & TAPE_SENSOR_SL_MASK) &&
                            (ThisEvent.EventParam & TAPE_SENSOR_SR_MASK)) {
                        StopMoving();
                        nextState = CheckAlignment;
                        makeTransition = TRUE;
                    } else if (ThisEvent.EventParam & TAPE_SENSOR_SL_MASK) {
                        StopMoving();
                        nextState = FineAdjustmentForwards;
                        makeTransition = TRUE;
                    }
                    break;
                case ES_MOTOR_ROTATION_COMPLETE:
                    nextState = AlignWithTapeBackwards;
                    makeTransition = TRUE;
                    break;
                default:
                    break;
            }
            break;

        case GetBackOnWallBackwards:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    DriveBackwardsPrecise(10);
                    break;
                case ES_MOTOR_ROTATION_COMPLETE:
                    StopMoving();
                    nextState = AlignWithTapeBackwards;
                    makeTransition = TRUE;
                    break;
                default:
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
                        StopMoving();
                        nextState = prevState;
                        makeTransition = TRUE;
                        break;
                    }
                    break;
                case ES_MOTOR_ROTATION_COMPLETE:
                    nextState = prevState;
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
                    if ((ThisEvent.EventParam & BUMPER_ASR_MASK) == 0) {
                        StopMoving();
                        nextState = prevState;
                        makeTransition = TRUE;
                        break;
                    }
                    break;
                case ES_MOTOR_ROTATION_COMPLETE:
                    nextState = prevState;
                    makeTransition = TRUE;
                    break;
                case ES_NO_EVENT:
                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        case CheckAlignment:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    ES_Timer_InitTimer(TOP_LEVEL_HSM_TIMER, 500);
                    PollTapeSensors();
                    break;
                case ES_NO_TAPE_DETECTED:
                case ES_TAPE_DETECTED:
                    if ((ThisEvent.EventParam & TAPE_SENSOR_SL_MASK) == 0) {
                        nextState = FineAdjustmentForwards;
                        makeTransition = TRUE;
                    } else if ((ThisEvent.EventParam & TAPE_SENSOR_SR_MASK) == 0) {
                        nextState = FineAdjustmentBackwards;
                        makeTransition = TRUE;
                    } else if ((ThisEvent.EventParam & TAPE_SENSOR_TL_MASK)) { // left tape sensor misaligned
                        StopMoving();
                        nextState = VerifyShooterAlignment;
                        makeTransition = TRUE;
                    }
                    break;
                case ES_TIMEOUT:
                    ThisEvent.EventType = ES_ALIGNED_WITH_CORRECT_HOLE;
                    CurrentState = AlignWithTapeForwards;
                    return ThisEvent;
                    break;
                case ES_BUMPER_HIT:
                    if (ThisEvent.EventParam & (BUMPER_FFR_MASK | BUMPER_FSR_MASK)) {
                        prevState = CurrentState;
                        nextState = LeftAdjustmentTurn;
                        makeTransition = TRUE;
                    } else if (ThisEvent.EventParam & (BUMPER_AFR_MASK | BUMPER_ASR_MASK)) {
                        prevState = CurrentState;
                        nextState = RightAdjustmentTurn;
                        makeTransition = TRUE;
                    }
                    break;
                default:
                    break;
            }
            break;

        case VerifyShooterAlignment:
            switch (ThisEvent.EventType) {
                case ES_ENTRY:
                    PollTapeSensors();
                    TankTurnRight(5);
                    break;
                case ES_BUMPER_HIT:
                    if (ThisEvent.EventParam & (BUMPER_FFR_MASK | BUMPER_FSR_MASK)) {
                        StopMoving();
                        ThisEvent.EventType = ES_ALIGNED_WITH_CORRECT_HOLE;
                        CurrentState = AlignWithTapeForwards;
                        return ThisEvent;
                        //TankTurnLeft(5);
                    }
                    break;
                case ES_TAPE_DETECTED:
                case ES_NO_TAPE_DETECTED:
                    if ((ThisEvent.EventParam & TAPE_SENSOR_SL_MASK) == 0) {
                        nextState = FineAdjustmentForwards;
                        makeTransition = TRUE;
                    } else if ((ThisEvent.EventParam & TAPE_SENSOR_SR_MASK) == 0) {
                        nextState = FineAdjustmentBackwards;
                        makeTransition = TRUE;
                    }else if ((ThisEvent.EventParam & TAPE_SENSOR_TL_MASK) == 0) {
                        StopMoving();
                        ThisEvent.EventType = ES_ALIGNED_WITH_CORRECT_HOLE;
                        CurrentState = AlignWithTapeForwards;
                        return ThisEvent;
                    } 
                    break;
                case ES_MOTOR_ROTATION_COMPLETE:
                    StopMoving();
                    ThisEvent.EventType = ES_ALIGNED_WITH_CORRECT_HOLE;
                    CurrentState = AlignWithTapeForwards;
                    return ThisEvent;
                    break;
            }
            break;

        default: // all unhandled states fall into here
            break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunHoleAlignmentFSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunHoleAlignmentFSM(ENTRY_EVENT); // <- rename to your own Run function
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

void DriveForwardsPrecise(int distance) {
    ES_Event event;
    event.EventType = ES_MOVE_BOT_DRIVE_FORWARDS_PRECISE;
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