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

#ifndef BEACONTRACKWIREEVENTCHECKER_H
#define	BEACONTRACKWIREEVENTCHECKER_H

/*******************************************************************************
 * PUBLIC #INCLUDES                                                            *
 ******************************************************************************/

#include "ES_Configure_tape_sensor.h"   // defines ES_Event, INIT_EVENT, ENTRY_EVENT, and EXIT_EVENT
#include "BOARD.h"
#include "AD.h"
#include "IO_Ports.h"
#include <xc.h>

/*******************************************************************************
 * PUBLIC #DEFINES                                                             *
 ******************************************************************************/
#define TRACK_WIRE_SENSOR_LEFT_TRIS PORTX12_TRIS
#define TRACK_WIRE_SENSOR_LEFT PORTX12_BIT
#define TRACK_WIRE_SENSOR_RIGHT_TRIS PORTX10_TRIS
#define TRACK_WIRE_SENSOR_RIGHT PORTX10_BIT
#define BEACON_DETECTOR_TRIS PORTX11_TRIS
#define BEACON_DETECTOR PORTX11_BIT

#define TAPE_SENSOR_1 PORTY03_BIT
#define TAPE_SENSOR_1_TRIS PORTY03_TRIS

#define TAPE_SENSOR_2 PORTY04_BIT
#define TAPE_SENSOR_2_TRIS PORTY04_TRIS

#define TAPE_SENSOR_3 PORTY05_BIT
#define TAPE_SENSOR_3_TRIS PORTY05_TRIS

#define TAPE_SENSOR_4 PORTY06_BIT
#define TAPE_SENSOR_4_TRIS PORTY06_TRIS

#define TAPE_SENSOR_5 PORTY07_BIT
#define TAPE_SENSOR_5_TRIS PORTY07_TRIS

#define TAPE_SENSOR_6 PORTY08_BIT
#define TAPE_SENSOR_6_TRIS PORTY08_TRIS

#define TAPE_SENSOR_7 PORTY09_BIT
#define TAPE_SENSOR_7_TRIS PORTY09_TRIS

#define TAPE_SENSOR_8 PORTY10_BIT
#define TAPE_SENSOR_8_TRIS PORTY10_TRIS

#define NUMBER_OF_TAPE_SENSORS 8

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



#endif	/* TEMPLATEEVENTCHECKER_H */

