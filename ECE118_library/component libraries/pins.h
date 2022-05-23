/* 
 * File:   pins.h
 * Author: Margaret Silva
 *
 * Created on May 12, 2022, 9:08 PM
 */

#ifndef PINS_H
#define	PINS_H

/*******************************************************************************
 * PUBLIC #INCLUDES                                                            *
 ******************************************************************************/

#include "IO_Ports.h"
#include "pwm.h"

/*******************************************************************************
 * PINS CURRENTLY IN USE                                                       *
 ******************************************************************************/

// pins for motor library ******************************************************
#define H_BRIDGE_EN_A PWM_PORTZ06
#define H_BRIDGE_EN_B PWM_PORTY12

#define H_BRIDGE_IN1 PORTZ03_LAT
#define H_BRIDGE_IN1_TRIS PORTZ03_TRIS

#define H_BRIDGE_IN2 PORTZ04_LAT
#define H_BRIDGE_IN2_TRIS PORTZ04_TRIS

#define H_BRIDGE_IN3 PORTZ05_LAT
#define H_BRIDGE_IN3_TRIS PORTZ05_TRIS

#define H_BRIDGE_IN4 PORTZ07_LAT
#define H_BRIDGE_IN4_TRIS PORTZ07_TRIS


// pins for motor encoder ******************************************************
#define LEFT_MOTOR_ENCODER PORTX03_BIT//PORTZ09_BIT -- this pin is a bit unresponsive
#define LEFT_MOTOR_ENCODER_TRIS PORTX03_TRIS//PORTZ09_TRIS

#define RIGHT_MOTOR_ENCODER PORTX04_BIT//PORTZ10_BIT -- this pin is a bit unresponsive
#define RIGHT_MOTOR_ENCODER_TRIS PORTX04_TRIS//PORTZ10_TRIS


// track wire pins *************************************************************
#define TRACK_WIRE_SENSOR_LEFT AD_PORTV3

#define TRACK_WIRE_SENSOR_RIGHT AD_PORTV4


// beacon detector pins ********************************************************
#define BEACON_DETECTOR AD_PORTV5


// tape sensor pins ************************************************************
#define TAPE_SENSOR_FL PORTY03_BIT // front left 
#define TAPE_SENSOR_FL_TRIS PORTY03_TRIS

#define TAPE_SENSOR_FC PORTY04_BIT // front center
#define TAPE_SENSOR_FC_TRIS PORTY04_TRIS

#define TAPE_SENSOR_FR PORTY05_BIT // front right
#define TAPE_SENSOR_FR_TRIS PORTY05_TRIS

#define TAPE_SENSOR_BL PORTY06_BIT // back left
#define TAPE_SENSOR_BL_TRIS PORTY06_TRIS

#define TAPE_SENSOR_BR PORTY07_BIT // back right
#define TAPE_SENSOR_BR_TRIS PORTY07_TRIS

#define TAPE_SENSOR_SL PORTY08_BIT // side left 
#define TAPE_SENSOR_SL_TRIS PORTY08_TRIS

#define TAPE_SENSOR_SB PORTY09_BIT // side center
#define TAPE_SENSOR_SB_TRIS PORTY09_TRIS

#define TAPE_SENSOR_SR PORTY10_BIT // side right
#define TAPE_SENSOR_SR_TRIS PORTY10_TRIS

#define NUMBER_OF_TAPE_SENSORS 8


// bumper pins *****************************************************************
#define BUMPER_FSL PORTX11_BIT // pin Z09 is probably dead
#define BUMPER_FSL_TRIS PORTX11_TRIS

#define BUMPER_FFL PORTY11_BIT // pin Z10 is dead, pin x12 is dead
#define BUMPER_FFL_TRIS PORTY11_TRIS

#define BUMPER_FFR PORTX05_BIT
#define BUMPER_FFR_TRIS PORTX05_TRIS

#define BUMPER_FSR PORTX06_BIT
#define BUMPER_FSR_TRIS PORTX06_TRIS

#define BUMPER_ASR PORTX07_BIT
#define BUMPER_ASR_TRIS PORTX07_TRIS

#define BUMPER_AFR PORTX08_BIT
#define BUMPER_AFR_TRIS PORTX08_TRIS

#define BUMPER_AFL PORTX09_BIT
#define BUMPER_AFL_TRIS PORTX09_TRIS

#define BUMPER_ASL PORTX10_BIT
#define BUMPER_ASL_TRIS PORTX10_TRIS

#define NUMBER_OF_BUMPERS 8


// RC servo pins ***************************************************************
#define RC_SERVO_PIN RC_PORTW08

#endif	/* PINS_H */

