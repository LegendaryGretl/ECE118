/* 
 * File:   TemplateEventChecker.h
 * Author: Gabriel Hugh Elkaim
 *
 * Template file to set up typical EventCheckers for the  Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the
 * names will have to be changed to match your code.
 *
 * This EventCheckers file will work with simple services, FSM's and HSM's.
 *
 * Remember that EventCheckers should only return TRUE when an event has occured,
 * and that the event is a TRANSITION between two detectable differences. They
 * should also be atomic and run as fast as possible for good results.
 *
 * This is provided as an example and a good place to start.
 *
 * Created on September 27, 2013, 8:37 AM
 * Modified on September 12, 2016, 7:59 PM
 */

#ifndef SENSOREVENTCHECKER_H
#define	SENSOREVENTCHECKER_H

/*******************************************************************************
 * PUBLIC #INCLUDES                                                            *
 ******************************************************************************/

#include "ES_Configure.h"   // defines ES_Event, INIT_EVENT, ENTRY_EVENT, and EXIT_EVENT
#include "BOARD.h"
#include "AD.h"
#include "IO_Ports.h"
#include <xc.h>

/*******************************************************************************
 * PUBLIC #DEFINES                                                             *
 ******************************************************************************/
// Bumper masks
#define BUMPER_FSL_MASK (1<<0) // fore side left
#define BUMPER_FFL_MASK (1<<1) // fore front left
#define BUMPER_FFR_MASK (1<<2) // fore front right
#define BUMPER_FSR_MASK (1<<3) // fore side right
#define BUMPER_ASR_MASK (1<<4) // aft side right
#define BUMPER_AFR_MASK (1<<5) // aft front right
#define BUMPER_AFL_MASK (1<<6) // aft front left
#define BUMPER_ASL_MASK (1<<7) // aft side left
#define FRONT_BUMPER_MASK (BUMPER_FFL_MASK | BUMPER_FFR_MASK | BUMPER_FSL_MASK | BUMPER_FSR_MASK)
#define BACK_BUMPER_MASK (BUMPER_AFL_MASK | BUMPER_AFR_MASK | BUMPER_ASL_MASK | BUMPER_ASR_MASK)

// Tape Sensor Masks
#define BOTTOM_TAPE_SENSORS 0b00011111
#define SIDE_TAPE_SENSORS 0b11100000
#define TAPE_SENSOR_FL_MASK (1<<0)
#define TAPE_SENSOR_FC_MASK (1<<1)
#define TAPE_SENSOR_FR_MASK (1<<2)
#define TAPE_SENSOR_FRONT_BOTTOM_MASK (TAPE_SENSOR_FL_MASK | TAPE_SENSOR_FC_MASK | TAPE_SENSOR_FR_MASK)
#define TAPE_SENSOR_BL_MASK (1<<3)
#define TAPE_SENSOR_BR_MASK (1<<4)
#define TAPE_SENSOR_SL_MASK (1<<5)
#define TAPE_SENSOR_SR_MASK (1<<6)
#define TAPE_SENSOR_TC_MASK (1<<7)
#define TAPE_SENSOR_TL_MASK (1<<8)
#define TAPE_SENSOR_SL_SR_MASK (TAPE_SENSOR_SL_MASK | TAPE_SENSOR_SR_MASK)
#define TAPE_SENSOR_TC_CLOSE_THRESHOLD 60

/*******************************************************************************
 * PUBLIC TYPEDEFS                                                             *
 ******************************************************************************/


/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/

/**
 * @Function CheckTrackWire(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function indicates whether or not track wire has been detected,
 * along with the side that the track wire was detected on
 * @note 00 = no detection, 01 = left only, 10 = right only, 11 = both sides
 */
uint8_t CheckTrackWire(void);

/**
 * @Function CheckBeacon(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function indicates whether or not the beacon has been detected
 * @note the param for this function is always 0
 */
uint8_t CheckBeacon(void);

/**
 * @Function CheckTapeSensors(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function indicates whether or not there's been a change in the tape detected
 * @note the param for this function indicates the state of all tape sensors
 */
uint8_t CheckTapeSensors(void);

/**
 * @Function PollTapeSensors(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function indicates whether or not there's been a change in the tape detected
 * @note behaves the same as check tape sensors, except that it always reports an event when called
 *      mainly used by the get back on course state machine when checking for tape events
 */
uint8_t PollTapeSensors(void);

/**
 * @Function PollSideTapeSensors(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function returns the adc value of the corresponding side tape sensor
 * @note works similarly to the other poll function, except only for the side 
 *       tape sensors, and the param of the returned event is a value b/w
 *       0 - 1023 corresponding to analog output
 */
uint8_t PollSideTapeSensors(int mask);

/**
 * @Function CheckMotorEncoder(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function sends an event when it picks up a pulse from the motor's rotary encoder
 * @note the param for this function has 0b10 for left and 0b01 for right
 */
uint8_t CheckMotorEncoder(void);

/**
 * @Function CheckBumpers(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function sends an event when a bumper is hit or released
 * @note the param for this function is the pattern of currently pressed bumpers
 * the pattern goes clockwise from the fore side left bumper
 */
uint8_t CheckBumpers(void);

/**
 * @Function CheckPingSensor(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function sends an event when it picks up a pulse from the ping sensor
 * @note the param for this function has 0b10 for left and 0b01 for right
 */
//uint8_t CheckPingSensor(void);

#endif	/* SENSOREVENTCHECKER_H */

