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
#define LEFT_MOTOR_ENCODER PORTZ09_BIT
#define LEFT_MOTOR_ENCODER_TRIS PORTZ09_TRIS

#define RIGHT_MOTOR_ENCODER PORTZ10_BIT
#define RIGHT_MOTOR_ENCODER_TRIS PORTZ10_TRIS


// track wire pins *************************************************************
#define TRACK_WIRE_SENSOR_LEFT AD_PORTV3

#define TRACK_WIRE_SENSOR_RIGHT AD_PORTV4


// beacon detector pins ********************************************************
#define BEACON_DETECTOR_TRIS PORTX11_TRIS
#define BEACON_DETECTOR PORTX11_BIT


// tape sensor pins ************************************************************
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


// bumper pins *****************************************************************
#define BUMPER_FSL PORTX03_BIT
#define BUMPER_FSL_TRIS PORTX03_TRIS

#define BUMPER_FFL PORTX04_BIT
#define BUMPER_FFL_TRIS PORTX04_TRIS

#define BUMPER_FFR PORTX05_BIT
#define BUMPER_FFR_TRIS PORTX05_TRIS

#define BUMPER_FSR PORTX06_BIT
#define BUMPER_FSR_TRIS PORTX06_TRIS

#define BUMPER_ASL PORTX07_BIT
#define BUMPER_ASL_TRIS PORTX07_TRIS

#define BUMPER_AFL PORTX08_BIT
#define BUMPER_AFL_TRIS PORTX08_TRIS

#define BUMPER_AFR PORTX09_BIT
#define BUMPER_AFR_TRIS PORTX09_TRIS

#define BUMPER_ASR PORTZ08_BIT
#define BUMPER_ASR_TRIS PORTZ08_TRIS

#define NUMBER_OF_BUMPERS 8

// ping sensor pins ************************************************************
#define PING_SENSOR_ENABLE_TRIS PORTX12_TRIS
#define PING_SENSOR_ENABLE PORTX12_LAT

#define PING_SENSOR_ECHO_TRIS PORTX10_TRIS
#define PING_SENSOR_ECHO PORTX10_BIT

#endif	/* PINS_H */

