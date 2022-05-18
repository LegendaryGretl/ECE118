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
#define BUMPER_FSL_MASK (1<<0)
#define BUMPER_FFL_MASK (1<<1) 
#define BUMPER_FFR_MASK (1<<2)
#define BUMPER_FSR_MASK (1<<3) 
#define BUMPER_ASR_MASK (1<<4)
#define BUMPER_AFR_MASK (1<<5)
#define BUMPER_AFL_MASK (1<<6) 
#define BUMPER_ASL_MASK (1<<7)

// Tape Sensor Masks
#define BOTTOM_TAPE_SENSORS 0b00011111
#define SIDE_TAPE_SENSORS 0b11100000

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

