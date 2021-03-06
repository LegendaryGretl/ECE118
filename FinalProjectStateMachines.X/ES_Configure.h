/****************************************************************************
 Module
     ES_Configure.h
 Description
     This file contains macro definitions that are edited by the user to
     adapt the Events and Services framework to a particular application.
 Notes
     
 History
 When           Who     What/Why
 -------------- ---     --------
 01/15/12 10:03 jec      started coding
 *****************************************************************************/

#ifndef CONFIGURE_H
#define CONFIGURE_H


//defines for keyboard input
//#define USE_KEYBOARD_INPUT
//What State machine are we testing
//#define POSTFUNCTION_FOR_KEYBOARD_INPUT PostTopLevelHSM

//define for TattleTale
//#define USE_TATTLETALE

//uncomment to supress the entry and exit events
//#define SUPPRESS_EXIT_ENTRY_IN_TATTLE

/****************************************************************************/
// Name/define the events of interest
// Universal events occupy the lowest entries, followed by user-defined events

/****************************************************************************/
typedef enum {
    ES_NO_EVENT, ES_ERROR, /* used to indicate an error from the service */
    ES_INIT, /* used to transition from initial pseudo-state */
    ES_ENTRY, /* used to enter a state*/
    ES_EXIT, /* used to exit a state*/
    ES_KEYINPUT, /* used to signify a key has been pressed*/
    ES_LISTEVENTS, /* used to list events in keyboard input, does not get posted to fsm*/
    ES_TIMEOUT, /* signals that the timer has expired */
    ES_TIMERACTIVE, /* signals that a timer has become active */
    ES_TIMERSTOPPED, /* signals that a timer has stopped*/
    /* User-defined events start here */
    // Battery Events **********************************************************
    BATTERY_CONNECTED,
    BATTERY_DISCONNECTED,
    // Sensor Events ***********************************************************
    ES_TAPE_DETECTED, // param shows pattern of tape sensor signals
    ES_NO_TAPE_DETECTED,
    ES_TAPE_SIDE_LEFT, // param: analog output of given tape sensor
    ES_TAPE_SIDE_RIGHT,
    ES_TAPE_TOP_CENTER,
    ES_BEACON_DETECTED, // param is always 0
    ES_NO_BEACON_DETECTED,
    ES_TRACK_WIRE_DETECTED, // param shows which track wire is tripped
    ES_NO_TRACK_WIRE_DETECTED,
    ES_BUMPER_HIT, // param shows pattern of bumpers currently pressed
    ES_BUMPER_RELEASED,
    // Motor Encoder Events ****************************************************
    ES_ENCODER_PULSE_DETECTED, // param: 0b10 = left, 0b01 = right
    ES_ENCODER_PULSE_LOW,
    ES_TURN_LEFT_MOTOR_N_DEGREES, // param: number of degrees to rotate
    ES_TURN_LEFT_MOTOR_N_ROTATIONS, // param: number of rotations to complete
    ES_TURN_RIGHT_MOTOR_N_DEGREES,
    ES_TURN_RIGHT_MOTOR_N_ROTATIONS,
    ES_MOTOR_ROTATION_COMPLETE, // param: 0b10 = left, 0b01 = right            
    // RC Servo Events *********************************************************
    ES_RC_SERVO_STRIKE_START, // sets off the RC servo to hit a ping pong ball
    ES_RC_SERVO_STRIKE_COMPLETE, // indicates that the ball has been hit            
    // State Machine Events ****************************************************
    ES_BACK_ON_COURSE, // the bot has avoided the tape
    ES_DEAD_BOT_AVOIDED, // the bot has successfully gone around the dead bot
    ES_CORRECT_WALL_DETECTED, // the bot has detected the track wire wall
    ES_ALIGNED_WITH_CORRECT_HOLE, // the bot is ready to launch a ping pong ball   
    ES_TOWER_LOST, // the bot has lost contact with the tower it was following
    ES_CORRECT_SIDE_LOST, // the bot has missed the correct side and needs to do another lap
    // Motor Calibration Events ************************************************
    ES_START_MOTOR_CALIBRATION, // calibrate motors so max speed of faster one matches that of slower one
    ES_MOTOR_CALIBRATION_LEFT_SLOWER, // param: # of ticks left over on slower motor
    ES_MOTOR_CALIBRATION_RIGHT_SLOWER,
    // Robot Movement Events ***************************************************
#ifndef USE_KEYBOARD_INPUT
    ES_MOVE_BOT_DRIVE_FORWARDS, // param: distance to drive. 0 means drive forever
    ES_MOVE_BOT_DRIVE_FORWARDS_PRECISE, // param: distance to drive (in inches)
    ES_MOVE_BOT_DRIVE_BACKWARDS,
    ES_MOVE_BOT_DRIVE_BACKWARDS_PRECISE, // param: distance to drive (in inches)
    ES_MOVE_BOT_STOP,
    ES_MOVE_BOT_TANK_TURN_LEFT, // param: degrees to turn
    ES_MOVE_BOT_TANK_TURN_RIGHT,
    ES_MOVE_BOT_GRADUAL_TURN_LEFT, // param: direction of drive. 1 = forward, 0 = backwards
    ES_MOVE_BOT_GRADUAL_TURN_RIGHT,
    ES_MOVE_BOT_PIVOT_TURN_RIGHT, // param: direction of drive. 1 = forward, 0 = backwards
    ES_MOVE_BOT_GRADUAL_PIVOT_TURN_RIGHT,
    ES_MOVE_BOT_SET_SPEED, // param: new default speed for motors
#endif
    NUMBEROFEVENTS,
} ES_EventTyp_t;

static const char *EventNames[] = {
	"ES_NO_EVENT",
	"ES_ERROR",
	"ES_INIT",
	"ES_ENTRY",
	"ES_EXIT",
	"ES_KEYINPUT",
	"ES_LISTEVENTS",
	"ES_TIMEOUT",
	"ES_TIMERACTIVE",
	"ES_TIMERSTOPPED",
	"BATTERY_CONNECTED",
	"BATTERY_DISCONNECTED",
	"ES_TAPE_DETECTED",
	"ES_NO_TAPE_DETECTED",
	"ES_TAPE_SIDE_LEFT",
	"ES_TAPE_SIDE_RIGHT",
	"ES_TAPE_TOP_CENTER",
	"ES_BEACON_DETECTED",
	"ES_NO_BEACON_DETECTED",
	"ES_TRACK_WIRE_DETECTED",
	"ES_NO_TRACK_WIRE_DETECTED",
	"ES_BUMPER_HIT",
	"ES_BUMPER_RELEASED",
	"ES_ENCODER_PULSE_DETECTED",
	"ES_ENCODER_PULSE_LOW",
	"ES_TURN_LEFT_MOTOR_N_DEGREES",
	"ES_TURN_LEFT_MOTOR_N_ROTATIONS",
	"ES_TURN_RIGHT_MOTOR_N_DEGREES",
	"ES_TURN_RIGHT_MOTOR_N_ROTATIONS",
	"ES_MOTOR_ROTATION_COMPLETE",
	"ES_RC_SERVO_STRIKE_START",
	"ES_RC_SERVO_STRIKE_COMPLETE",
	"ES_BACK_ON_COURSE",
	"ES_DEAD_BOT_AVOIDED",
	"ES_CORRECT_WALL_DETECTED",
	"ES_ALIGNED_WITH_CORRECT_HOLE",
	"ES_TOWER_LOST",
	"ES_CORRECT_SIDE_LOST",
	"ES_START_MOTOR_CALIBRATION",
	"ES_MOTOR_CALIBRATION_LEFT_SLOWER",
	"ES_MOTOR_CALIBRATION_RIGHT_SLOWER",
	"ES_MOVE_BOT_DRIVE_FORWARDS",
	"ES_MOVE_BOT_DRIVE_FORWARDS_PRECISE",
	"ES_MOVE_BOT_DRIVE_BACKWARDS",
	"ES_MOVE_BOT_DRIVE_BACKWARDS_PRECISE",
	"ES_MOVE_BOT_STOP",
	"ES_MOVE_BOT_TANK_TURN_LEFT",
	"ES_MOVE_BOT_TANK_TURN_RIGHT",
	"ES_MOVE_BOT_GRADUAL_TURN_LEFT",
	"ES_MOVE_BOT_GRADUAL_TURN_RIGHT",
	"ES_MOVE_BOT_PIVOT_TURN_RIGHT",
	"ES_MOVE_BOT_GRADUAL_PIVOT_TURN_RIGHT",
	"ES_MOVE_BOT_SET_SPEED",
	"NUMBEROFEVENTS",
};




/****************************************************************************/
// This are the name of the Event checking function header file.
#define EVENT_CHECK_HEADER "SensorEventChecker.h"

/****************************************************************************/
// This is the list of event checking functions
#define EVENT_CHECK_LIST  CheckTrackWire, CheckBeacon, CheckTapeSensors, CheckMotorEncoder, CheckBumpers

/****************************************************************************/
// These are the definitions for the post functions to be executed when the
// corresponding timer expires. All 16 must be defined. If you are not using
// a timers, then you can use TIMER_UNUSED
#define TIMER_UNUSED ((pPostFunc)0)
#define TIMER0_RESP_FUNC PostRCServoService
#define TIMER1_RESP_FUNC PostRobotMovementService
#define TIMER2_RESP_FUNC PostTopLevelHSM
#define TIMER3_RESP_FUNC PostTopLevelHSM
#define TIMER4_RESP_FUNC TIMER_UNUSED
#define TIMER5_RESP_FUNC TIMER_UNUSED
#define TIMER6_RESP_FUNC TIMER_UNUSED
#define TIMER7_RESP_FUNC TIMER_UNUSED
#define TIMER8_RESP_FUNC TIMER_UNUSED
#define TIMER9_RESP_FUNC TIMER_UNUSED
#define TIMER10_RESP_FUNC TIMER_UNUSED
#define TIMER11_RESP_FUNC TIMER_UNUSED
#define TIMER12_RESP_FUNC TIMER_UNUSED
#define TIMER13_RESP_FUNC TIMER_UNUSED
#define TIMER14_RESP_FUNC TIMER_UNUSED
#define TIMER15_RESP_FUNC TIMER_UNUSED


/****************************************************************************/
// Give the timer numbers symbolc names to make it easier to move them
// to different timers if the need arises. Keep these definitons close to the
// definitions for the response functions to make it easire to check that
// the timer number matches where the timer event will be routed

#define RC_SERVO_TIMER 0
#define ROBOT_MOVEMENT_TIMER 1
#define TOP_LEVEL_HSM_TIMER 2
#define GET_UNSTUCK_TIMER 3


/****************************************************************************/
// The maximum number of services sets an upper bound on the number of 
// services that the framework will handle. Reasonable values are 8 and 16
// HOWEVER: at this time only a value of 8 is supported.
#define MAX_NUM_SERVICES 8

/****************************************************************************/
// This macro determines that nuber of services that are *actually* used in
// a particular application. It will vary in value from 1 to MAX_NUM_SERVICES
#define NUM_SERVICES 5

/****************************************************************************/
// These are the definitions for Service 0, the lowest priority service
// every Events and Services application must have a Service 0. Further 
// services are added in numeric sequence (1,2,3,...) with increasing 
// priorities
// the header file with the public fuction prototypes
#define SERV_0_HEADER "ES_KeyboardInput.h"
// the name of the Init function
#define SERV_0_INIT InitKeyboardInput
// the name of the run function
#define SERV_0_RUN RunKeyboardInput
// How big should this service's Queue be?
#define SERV_0_QUEUE_SIZE 9

/****************************************************************************/
// These are the definitions for Service 1
#if NUM_SERVICES > 1
// the header file with the public fuction prototypes
#define SERV_1_HEADER "MotorEncoderService.h"
// the name of the Init function
#define SERV_1_INIT InitMotorEncoderService
// the name of the run function
#define SERV_1_RUN RunMotorEncoderService
// How big should this services Queue be?
#define SERV_1_QUEUE_SIZE 20
#endif

// These are the definitions for Service 2
#if NUM_SERVICES > 2
// the header file with the public fuction prototypes
#define SERV_2_HEADER "TopLevelHSM.h"
// the name of the Init function
#define SERV_2_INIT InitTopLevelHSM
// the name of the run function
#define SERV_2_RUN RunTopLevelHSM
// How big should this services Queue be?
#define SERV_2_QUEUE_SIZE 20
#endif



/****************************************************************************/
// These are the definitions for Service 3
#if NUM_SERVICES > 3
// the header file with the public fuction prototypes
#define SERV_3_HEADER "RCServoService.h"
// the name of the Init function
#define SERV_3_INIT InitRCServoService
// the name of the run function
#define SERV_3_RUN RunRCServoService
// How big should this services Queue be?
#define SERV_3_QUEUE_SIZE 3
#endif

/****************************************************************************/
// These are the definitions for Service 4
#if NUM_SERVICES > 4
// the header file with the public fuction prototypes
#define SERV_4_HEADER "RobotMovementService.h"
// the name of the Init function
#define SERV_4_INIT InitRobotMovementService
// the name of the run function
#define SERV_4_RUN RunRobotMovementService
// How big should this services Queue be?
#define SERV_4_QUEUE_SIZE 3
#endif

/****************************************************************************/
// These are the definitions for Service 5
#if NUM_SERVICES > 5
// the header file with the public fuction prototypes
#define SERV_5_HEADER "TestService.h"
// the name of the Init function
#define SERV_5_INIT TestServiceInit
// the name of the run function
#define SERV_5_RUN TestServiceRun
// How big should this services Queue be?
#define SERV_5_QUEUE_SIZE 3
#endif

/****************************************************************************/
// These are the definitions for Service 6
#if NUM_SERVICES > 6
// the header file with the public fuction prototypes
#define SERV_6_HEADER "TestService.h"
// the name of the Init function
#define SERV_6_INIT TestServiceInit
// the name of the run function
#define SERV_6_RUN TestServiceRun
// How big should this services Queue be?
#define SERV_6_QUEUE_SIZE 3
#endif

/****************************************************************************/
// These are the definitions for Service 7
#if NUM_SERVICES > 7
// the header file with the public fuction prototypes
#define SERV_7_HEADER "TestService.h"
// the name of the Init function
#define SERV_7_INIT TestServiceInit
// the name of the run function
#define SERV_7_RUN TestServiceRun
// How big should this services Queue be?
#define SERV_7_QUEUE_SIZE 3
#endif

/****************************************************************************/
// the name of the posting function that you want executed when a new 
// keystroke is detected.
// The default initialization distributes keystrokes to all state machines
#define POST_KEY_FUNC ES_PostAll



/****************************************************************************/
// These are the definitions for the Distribution lists. Each definition
// should be a comma seperated list of post functions to indicate which
// services are on that distribution list.
#define NUM_DIST_LISTS 0
#if NUM_DIST_LISTS > 0 
#define DIST_LIST0 PostTemplateFSM
#endif
#if NUM_DIST_LISTS > 1 
#define DIST_LIST1 PostTemplateFSM
#endif
#if NUM_DIST_LISTS > 2 
#define DIST_LIST2 PostTemplateFSM
#endif
#if NUM_DIST_LISTS > 3 
#define DIST_LIST3 PostTemplateFSM
#endif
#if NUM_DIST_LISTS > 4 
#define DIST_LIST4 PostTemplateFSM
#endif
#if NUM_DIST_LISTS > 5 
#define DIST_LIST5 PostTemplateFSM
#endif
#if NUM_DIST_LISTS > 6 
#define DIST_LIST6 PostTemplateFSM
#endif
#if NUM_DIST_LISTS > 7 
#define DIST_LIST7 PostTemplateFSM
#endif



#endif /* CONFIGURE_H */