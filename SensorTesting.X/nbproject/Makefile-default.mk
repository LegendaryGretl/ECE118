#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SensorTesting.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SensorTesting.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../ECE118_library/src/AD.c ../ECE118_library/src/BOARD.c ../ECE118_library/src/IO_Ports.c ../ECE118_library/src/LED.c ../ECE118_library/src/RC_Servo.c ../ECE118_library/src/pwm.c ../ECE118_library/src/roach.c ../ECE118_library/src/serial.c ../ECE118_library/src/timers.c ../ECE118_library/src/ES_CheckEvents.c ../ECE118_library/src/ES_Framework.c ../ECE118_library/src/ES_KeyboardInput.c ../ECE118_library/src/ES_PostList.c ../ECE118_library/src/ES_Queue.c ../ECE118_library/src/ES_TattleTale.c ../ECE118_library/src/ES_Timers.c TapeSensorService.c ReadSensorService.c ES_Main_tape_sensor.c SensorEventChecker.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/627994287/AD.o ${OBJECTDIR}/_ext/627994287/BOARD.o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ${OBJECTDIR}/_ext/627994287/LED.o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ${OBJECTDIR}/_ext/627994287/pwm.o ${OBJECTDIR}/_ext/627994287/roach.o ${OBJECTDIR}/_ext/627994287/serial.o ${OBJECTDIR}/_ext/627994287/timers.o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ${OBJECTDIR}/TapeSensorService.o ${OBJECTDIR}/ReadSensorService.o ${OBJECTDIR}/ES_Main_tape_sensor.o ${OBJECTDIR}/SensorEventChecker.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/627994287/AD.o.d ${OBJECTDIR}/_ext/627994287/BOARD.o.d ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d ${OBJECTDIR}/_ext/627994287/LED.o.d ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d ${OBJECTDIR}/_ext/627994287/pwm.o.d ${OBJECTDIR}/_ext/627994287/roach.o.d ${OBJECTDIR}/_ext/627994287/serial.o.d ${OBJECTDIR}/_ext/627994287/timers.o.d ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d ${OBJECTDIR}/TapeSensorService.o.d ${OBJECTDIR}/ReadSensorService.o.d ${OBJECTDIR}/ES_Main_tape_sensor.o.d ${OBJECTDIR}/SensorEventChecker.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/627994287/AD.o ${OBJECTDIR}/_ext/627994287/BOARD.o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ${OBJECTDIR}/_ext/627994287/LED.o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ${OBJECTDIR}/_ext/627994287/pwm.o ${OBJECTDIR}/_ext/627994287/roach.o ${OBJECTDIR}/_ext/627994287/serial.o ${OBJECTDIR}/_ext/627994287/timers.o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ${OBJECTDIR}/TapeSensorService.o ${OBJECTDIR}/ReadSensorService.o ${OBJECTDIR}/ES_Main_tape_sensor.o ${OBJECTDIR}/SensorEventChecker.o

# Source Files
SOURCEFILES=../ECE118_library/src/AD.c ../ECE118_library/src/BOARD.c ../ECE118_library/src/IO_Ports.c ../ECE118_library/src/LED.c ../ECE118_library/src/RC_Servo.c ../ECE118_library/src/pwm.c ../ECE118_library/src/roach.c ../ECE118_library/src/serial.c ../ECE118_library/src/timers.c ../ECE118_library/src/ES_CheckEvents.c ../ECE118_library/src/ES_Framework.c ../ECE118_library/src/ES_KeyboardInput.c ../ECE118_library/src/ES_PostList.c ../ECE118_library/src/ES_Queue.c ../ECE118_library/src/ES_TattleTale.c ../ECE118_library/src/ES_Timers.c TapeSensorService.c ReadSensorService.c ES_Main_tape_sensor.c SensorEventChecker.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/SensorTesting.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="..\ECE118_library\bootloader320.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/627994287/AD.o: ../ECE118_library/src/AD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/AD.o.d" -o ${OBJECTDIR}/_ext/627994287/AD.o ../ECE118_library/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/AD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/BOARD.o: ../ECE118_library/src/BOARD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/BOARD.o.d" -o ${OBJECTDIR}/_ext/627994287/BOARD.o ../ECE118_library/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/BOARD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/IO_Ports.o: ../ECE118_library/src/IO_Ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ../ECE118_library/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/IO_Ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/LED.o: ../ECE118_library/src/LED.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/LED.o.d" -o ${OBJECTDIR}/_ext/627994287/LED.o ../ECE118_library/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/LED.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/RC_Servo.o: ../ECE118_library/src/RC_Servo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ../ECE118_library/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/RC_Servo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/pwm.o: ../ECE118_library/src/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/pwm.o.d" -o ${OBJECTDIR}/_ext/627994287/pwm.o ../ECE118_library/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/roach.o: ../ECE118_library/src/roach.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/roach.o.d" -o ${OBJECTDIR}/_ext/627994287/roach.o ../ECE118_library/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/roach.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/serial.o: ../ECE118_library/src/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/serial.o.d" -o ${OBJECTDIR}/_ext/627994287/serial.o ../ECE118_library/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/serial.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/timers.o: ../ECE118_library/src/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/timers.o.d" -o ${OBJECTDIR}/_ext/627994287/timers.o ../ECE118_library/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o: ../ECE118_library/src/ES_CheckEvents.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ../ECE118_library/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_Framework.o: ../ECE118_library/src/ES_Framework.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ../ECE118_library/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_Framework.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o: ../ECE118_library/src/ES_KeyboardInput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ../ECE118_library/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_PostList.o: ../ECE118_library/src/ES_PostList.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ../ECE118_library/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_PostList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_Queue.o: ../ECE118_library/src/ES_Queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ../ECE118_library/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_Queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_TattleTale.o: ../ECE118_library/src/ES_TattleTale.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ../ECE118_library/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_Timers.o: ../ECE118_library/src/ES_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ../ECE118_library/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_Timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TapeSensorService.o: TapeSensorService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TapeSensorService.o.d 
	@${RM} ${OBJECTDIR}/TapeSensorService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/TapeSensorService.o.d" -o ${OBJECTDIR}/TapeSensorService.o TapeSensorService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/TapeSensorService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ReadSensorService.o: ReadSensorService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ReadSensorService.o.d 
	@${RM} ${OBJECTDIR}/ReadSensorService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/ReadSensorService.o.d" -o ${OBJECTDIR}/ReadSensorService.o ReadSensorService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/ReadSensorService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ES_Main_tape_sensor.o: ES_Main_tape_sensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Main_tape_sensor.o.d 
	@${RM} ${OBJECTDIR}/ES_Main_tape_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/ES_Main_tape_sensor.o.d" -o ${OBJECTDIR}/ES_Main_tape_sensor.o ES_Main_tape_sensor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/ES_Main_tape_sensor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/SensorEventChecker.o: SensorEventChecker.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SensorEventChecker.o.d 
	@${RM} ${OBJECTDIR}/SensorEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/SensorEventChecker.o.d" -o ${OBJECTDIR}/SensorEventChecker.o SensorEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/SensorEventChecker.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/627994287/AD.o: ../ECE118_library/src/AD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/AD.o.d" -o ${OBJECTDIR}/_ext/627994287/AD.o ../ECE118_library/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/AD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/BOARD.o: ../ECE118_library/src/BOARD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/BOARD.o.d" -o ${OBJECTDIR}/_ext/627994287/BOARD.o ../ECE118_library/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/BOARD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/IO_Ports.o: ../ECE118_library/src/IO_Ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ../ECE118_library/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/IO_Ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/LED.o: ../ECE118_library/src/LED.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/LED.o.d" -o ${OBJECTDIR}/_ext/627994287/LED.o ../ECE118_library/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/LED.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/RC_Servo.o: ../ECE118_library/src/RC_Servo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ../ECE118_library/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/RC_Servo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/pwm.o: ../ECE118_library/src/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/pwm.o.d" -o ${OBJECTDIR}/_ext/627994287/pwm.o ../ECE118_library/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/roach.o: ../ECE118_library/src/roach.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/roach.o.d" -o ${OBJECTDIR}/_ext/627994287/roach.o ../ECE118_library/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/roach.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/serial.o: ../ECE118_library/src/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/serial.o.d" -o ${OBJECTDIR}/_ext/627994287/serial.o ../ECE118_library/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/serial.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/timers.o: ../ECE118_library/src/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/timers.o.d" -o ${OBJECTDIR}/_ext/627994287/timers.o ../ECE118_library/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o: ../ECE118_library/src/ES_CheckEvents.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ../ECE118_library/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_Framework.o: ../ECE118_library/src/ES_Framework.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ../ECE118_library/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_Framework.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o: ../ECE118_library/src/ES_KeyboardInput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ../ECE118_library/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_PostList.o: ../ECE118_library/src/ES_PostList.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ../ECE118_library/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_PostList.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_Queue.o: ../ECE118_library/src/ES_Queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ../ECE118_library/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_Queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_TattleTale.o: ../ECE118_library/src/ES_TattleTale.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ../ECE118_library/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/627994287/ES_Timers.o: ../ECE118_library/src/ES_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ../ECE118_library/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/_ext/627994287/ES_Timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/TapeSensorService.o: TapeSensorService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TapeSensorService.o.d 
	@${RM} ${OBJECTDIR}/TapeSensorService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/TapeSensorService.o.d" -o ${OBJECTDIR}/TapeSensorService.o TapeSensorService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/TapeSensorService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ReadSensorService.o: ReadSensorService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ReadSensorService.o.d 
	@${RM} ${OBJECTDIR}/ReadSensorService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/ReadSensorService.o.d" -o ${OBJECTDIR}/ReadSensorService.o ReadSensorService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/ReadSensorService.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ES_Main_tape_sensor.o: ES_Main_tape_sensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Main_tape_sensor.o.d 
	@${RM} ${OBJECTDIR}/ES_Main_tape_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/ES_Main_tape_sensor.o.d" -o ${OBJECTDIR}/ES_Main_tape_sensor.o ES_Main_tape_sensor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/ES_Main_tape_sensor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/SensorEventChecker.o: SensorEventChecker.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SensorEventChecker.o.d 
	@${RM} ${OBJECTDIR}/SensorEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"." -I"../ECE118_library/include" -I"../ECE118_library/src" -I"../ECE118_library/templates" -MMD -MF "${OBJECTDIR}/SensorEventChecker.o.d" -o ${OBJECTDIR}/SensorEventChecker.o SensorEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	@${FIXDEPS} "${OBJECTDIR}/SensorEventChecker.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SensorTesting.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../ECE118_library/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/SensorTesting.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SensorTesting.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../ECE118_library/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/SensorTesting.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/SensorTesting.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
