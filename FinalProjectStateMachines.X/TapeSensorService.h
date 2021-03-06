/*
 * File: TemplateService.h
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Template file to set up a simple service to work with the Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that this file
 * will need to be modified to fit your exact needs, and most of the names will have
 * to be changed to match your code.
 *
 * This is provided as an example and a good place to start.
 *
 * Created on 23/Oct/2011
 * Updated on 13/Nov/2013
 */

#ifndef TapeSensorService_H  // <- This should be changed to your own guard on both
#define TapeSensorService_H  //    of these lines


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
#define TAPE_SENSOR_INPUT_PIN1 AD_PORTV3
#define TAPE_SENSOR_ENABLE_PIN1_TRIS PORTX03_TRIS
#define TAPE_SENSOR_ENABLE_PIN1_LAT PORTX03_LAT

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
 * @Function InitTemplateService(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateService function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitTapeSensorService(uint8_t Priority);

/**
 * @Function PostTemplateService(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostTapeSensorService(ES_Event ThisEvent);

/**
 * @Function RunTemplateService(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the service,
 *        as this is called any time a new event is passed to the event queue. 
 * @note Remember to rename to something appropriate.
 *       Returns ES_NO_EVENT if the event have been "consumed." 
 * @author J. Edward Carryer, 2011.10.23 19:25 */
ES_Event RunTapeSensorService(ES_Event ThisEvent);



#endif /* TemplateService_H */

