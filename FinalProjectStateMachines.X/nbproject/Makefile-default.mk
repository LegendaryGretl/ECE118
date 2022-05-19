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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FinalProjectStateMachines.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FinalProjectStateMachines.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../ECE118_library/src/AD.c ../ECE118_library/src/BOARD.c ../ECE118_library/src/ES_CheckEvents.c ../ECE118_library/src/ES_Framework.c ../ECE118_library/src/ES_KeyboardInput.c ../ECE118_library/src/ES_PostList.c ../ECE118_library/src/ES_Queue.c ../ECE118_library/src/ES_TattleTale.c ../ECE118_library/src/ES_Timers.c ../ECE118_library/src/IO_Ports.c ../ECE118_library/src/LED.c ../ECE118_library/src/RC_Servo.c ../ECE118_library/src/pwm.c ../ECE118_library/src/serial.c ../ECE118_library/src/timers.c "../ECE118_library/component libraries/motors.c" "../ECE118_library/component libraries/MotorEncoderService.c" "../ECE118_library/component libraries/RCServoService.c" "../ECE118_library/component libraries/SensorEventChecker.c" ES_Main.c TopLevelHSM.c DetectBeaconSubHSM.c NavigateToTowerSubHSM.c AlignAndLaunchSubHSM.c RobotMovementService.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/627994287/AD.o ${OBJECTDIR}/_ext/627994287/BOARD.o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ${OBJECTDIR}/_ext/627994287/LED.o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ${OBJECTDIR}/_ext/627994287/pwm.o ${OBJECTDIR}/_ext/627994287/serial.o ${OBJECTDIR}/_ext/627994287/timers.o ${OBJECTDIR}/_ext/1612843869/motors.o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o ${OBJECTDIR}/_ext/1612843869/RCServoService.o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o ${OBJECTDIR}/ES_Main.o ${OBJECTDIR}/TopLevelHSM.o ${OBJECTDIR}/DetectBeaconSubHSM.o ${OBJECTDIR}/NavigateToTowerSubHSM.o ${OBJECTDIR}/AlignAndLaunchSubHSM.o ${OBJECTDIR}/RobotMovementService.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/627994287/AD.o.d ${OBJECTDIR}/_ext/627994287/BOARD.o.d ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d ${OBJECTDIR}/_ext/627994287/LED.o.d ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d ${OBJECTDIR}/_ext/627994287/pwm.o.d ${OBJECTDIR}/_ext/627994287/serial.o.d ${OBJECTDIR}/_ext/627994287/timers.o.d ${OBJECTDIR}/_ext/1612843869/motors.o.d ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d ${OBJECTDIR}/_ext/1612843869/RCServoService.o.d ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d ${OBJECTDIR}/ES_Main.o.d ${OBJECTDIR}/TopLevelHSM.o.d ${OBJECTDIR}/DetectBeaconSubHSM.o.d ${OBJECTDIR}/NavigateToTowerSubHSM.o.d ${OBJECTDIR}/AlignAndLaunchSubHSM.o.d ${OBJECTDIR}/RobotMovementService.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/627994287/AD.o ${OBJECTDIR}/_ext/627994287/BOARD.o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ${OBJECTDIR}/_ext/627994287/LED.o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ${OBJECTDIR}/_ext/627994287/pwm.o ${OBJECTDIR}/_ext/627994287/serial.o ${OBJECTDIR}/_ext/627994287/timers.o ${OBJECTDIR}/_ext/1612843869/motors.o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o ${OBJECTDIR}/_ext/1612843869/RCServoService.o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o ${OBJECTDIR}/ES_Main.o ${OBJECTDIR}/TopLevelHSM.o ${OBJECTDIR}/DetectBeaconSubHSM.o ${OBJECTDIR}/NavigateToTowerSubHSM.o ${OBJECTDIR}/AlignAndLaunchSubHSM.o ${OBJECTDIR}/RobotMovementService.o

# Source Files
SOURCEFILES=../ECE118_library/src/AD.c ../ECE118_library/src/BOARD.c ../ECE118_library/src/ES_CheckEvents.c ../ECE118_library/src/ES_Framework.c ../ECE118_library/src/ES_KeyboardInput.c ../ECE118_library/src/ES_PostList.c ../ECE118_library/src/ES_Queue.c ../ECE118_library/src/ES_TattleTale.c ../ECE118_library/src/ES_Timers.c ../ECE118_library/src/IO_Ports.c ../ECE118_library/src/LED.c ../ECE118_library/src/RC_Servo.c ../ECE118_library/src/pwm.c ../ECE118_library/src/serial.c ../ECE118_library/src/timers.c ../ECE118_library/component libraries/motors.c ../ECE118_library/component libraries/MotorEncoderService.c ../ECE118_library/component libraries/RCServoService.c ../ECE118_library/component libraries/SensorEventChecker.c ES_Main.c TopLevelHSM.c DetectBeaconSubHSM.c NavigateToTowerSubHSM.c AlignAndLaunchSubHSM.c RobotMovementService.c



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

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=PIC32MX320F128H
ProjectDir="C:\Users\maansilv\Downloads\ECE118\FinalProjectStateMachines.X"
ProjectName=FinalProjectStateMachines
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\FinalProjectStateMachines.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="FinalProjectStateMachines.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/FinalProjectStateMachines.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/627994287/AD.o: ../ECE118_library/src/AD.c  .generated_files/flags/default/ca9ce44a766d401480cc80485c7b755d722b2318 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/AD.o.d" -o ${OBJECTDIR}/_ext/627994287/AD.o ../ECE118_library/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/BOARD.o: ../ECE118_library/src/BOARD.c  .generated_files/flags/default/72371d5c7540dc6be14d8e8abacbb0a950bade03 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/BOARD.o.d" -o ${OBJECTDIR}/_ext/627994287/BOARD.o ../ECE118_library/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o: ../ECE118_library/src/ES_CheckEvents.c  .generated_files/flags/default/2a99678a287bcab4caad3652ece17801e77b7a9c .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ../ECE118_library/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Framework.o: ../ECE118_library/src/ES_Framework.c  .generated_files/flags/default/647fb3d1b25d39d5352662d58b2188d20050c3cd .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ../ECE118_library/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o: ../ECE118_library/src/ES_KeyboardInput.c  .generated_files/flags/default/80fa20f435ec59ec076ca39980cd68f528757ded .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ../ECE118_library/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_PostList.o: ../ECE118_library/src/ES_PostList.c  .generated_files/flags/default/ff19d5f740065cb115ae5aa37be2128744a9df91 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ../ECE118_library/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Queue.o: ../ECE118_library/src/ES_Queue.c  .generated_files/flags/default/c386f6ef660c1e93a6ab46b6a263c629b636c139 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ../ECE118_library/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_TattleTale.o: ../ECE118_library/src/ES_TattleTale.c  .generated_files/flags/default/b56e924275156f71eeebec15f0c2421355d97ea2 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ../ECE118_library/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Timers.o: ../ECE118_library/src/ES_Timers.c  .generated_files/flags/default/f4ec063db0a86f03d9e5fd2056defe4af8052b22 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ../ECE118_library/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/IO_Ports.o: ../ECE118_library/src/IO_Ports.c  .generated_files/flags/default/6ae221bf9ef94e2443177c460c2a964ec1e1563b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ../ECE118_library/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/LED.o: ../ECE118_library/src/LED.c  .generated_files/flags/default/48bdf20a949b6d5469134b8e9179a550b541b329 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/LED.o.d" -o ${OBJECTDIR}/_ext/627994287/LED.o ../ECE118_library/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/RC_Servo.o: ../ECE118_library/src/RC_Servo.c  .generated_files/flags/default/f980a5ce3af569741709ba82bdd41a3f6f52e296 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ../ECE118_library/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/pwm.o: ../ECE118_library/src/pwm.c  .generated_files/flags/default/6e26275f0f5de8cd28c6a28df07a083b8fb4331b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/pwm.o.d" -o ${OBJECTDIR}/_ext/627994287/pwm.o ../ECE118_library/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/serial.o: ../ECE118_library/src/serial.c  .generated_files/flags/default/a95d78abc345b6603aef51f2ed5123425e719046 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/serial.o.d" -o ${OBJECTDIR}/_ext/627994287/serial.o ../ECE118_library/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/timers.o: ../ECE118_library/src/timers.c  .generated_files/flags/default/e9fe6646ec6348ea10ce2676a106fd4dd434b34a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/timers.o.d" -o ${OBJECTDIR}/_ext/627994287/timers.o ../ECE118_library/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/motors.o: ../ECE118_library/component\ libraries/motors.c  .generated_files/flags/default/1aae678cc8c8386dffdbd32f338f00be19330d89 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/motors.o.d" -o ${OBJECTDIR}/_ext/1612843869/motors.o "../ECE118_library/component libraries/motors.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o: ../ECE118_library/component\ libraries/MotorEncoderService.c  .generated_files/flags/default/1742b431970ec1635b06ae46f864e0aa6e0b6777 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d" -o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o "../ECE118_library/component libraries/MotorEncoderService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/RCServoService.o: ../ECE118_library/component\ libraries/RCServoService.c  .generated_files/flags/default/76d8c0d8f8ed123cc63077febd456179c3e2188 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/RCServoService.o.d" -o ${OBJECTDIR}/_ext/1612843869/RCServoService.o "../ECE118_library/component libraries/RCServoService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o: ../ECE118_library/component\ libraries/SensorEventChecker.c  .generated_files/flags/default/b447963e6f1576104c1770bef71559baa0a08931 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d" -o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o "../ECE118_library/component libraries/SensorEventChecker.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Main.o: ES_Main.c  .generated_files/flags/default/31a3a00183a041eaea89297ae9649e06e27da34d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Main.o.d 
	@${RM} ${OBJECTDIR}/ES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/ES_Main.o.d" -o ${OBJECTDIR}/ES_Main.o ES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TopLevelHSM.o: TopLevelHSM.c  .generated_files/flags/default/b4a0888bb56656bf6b9cefe8ee264cd2ec83cda6 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o.d 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/TopLevelHSM.o.d" -o ${OBJECTDIR}/TopLevelHSM.o TopLevelHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/DetectBeaconSubHSM.o: DetectBeaconSubHSM.c  .generated_files/flags/default/3fd2217a6a8148afb9563352903d4629b6e7019e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o.d 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/DetectBeaconSubHSM.o.d" -o ${OBJECTDIR}/DetectBeaconSubHSM.o DetectBeaconSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/NavigateToTowerSubHSM.o: NavigateToTowerSubHSM.c  .generated_files/flags/default/77515dee813ffcbde14d30798c05f79b94402dc9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o.d 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/NavigateToTowerSubHSM.o.d" -o ${OBJECTDIR}/NavigateToTowerSubHSM.o NavigateToTowerSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/AlignAndLaunchSubHSM.o: AlignAndLaunchSubHSM.c  .generated_files/flags/default/ff1bbe8725eacc7ff67090de532e97580f58c63f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o.d 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/AlignAndLaunchSubHSM.o.d" -o ${OBJECTDIR}/AlignAndLaunchSubHSM.o AlignAndLaunchSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RobotMovementService.o: RobotMovementService.c  .generated_files/flags/default/dd81c318343df33460a55b3abbafc9e2838c3762 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RobotMovementService.o.d 
	@${RM} ${OBJECTDIR}/RobotMovementService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/RobotMovementService.o.d" -o ${OBJECTDIR}/RobotMovementService.o RobotMovementService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/627994287/AD.o: ../ECE118_library/src/AD.c  .generated_files/flags/default/2f7c2ecd549bf07206cad9235ad948ab71192882 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/AD.o.d" -o ${OBJECTDIR}/_ext/627994287/AD.o ../ECE118_library/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/BOARD.o: ../ECE118_library/src/BOARD.c  .generated_files/flags/default/dbdf5309de0f7cb1e83619bb91332ba8aa0028c9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/BOARD.o.d" -o ${OBJECTDIR}/_ext/627994287/BOARD.o ../ECE118_library/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o: ../ECE118_library/src/ES_CheckEvents.c  .generated_files/flags/default/6cc2de6e3b3c1a332cf81eb656d8460f9f275c5e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ../ECE118_library/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Framework.o: ../ECE118_library/src/ES_Framework.c  .generated_files/flags/default/39a4548debd56132832882ef32497a74df00f6b1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ../ECE118_library/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o: ../ECE118_library/src/ES_KeyboardInput.c  .generated_files/flags/default/f50b9a99f121bca43de46d8deed2ea89ea6b608e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ../ECE118_library/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_PostList.o: ../ECE118_library/src/ES_PostList.c  .generated_files/flags/default/dbbc331419acffea9d1038fe62b16ff0fc54d0a1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ../ECE118_library/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Queue.o: ../ECE118_library/src/ES_Queue.c  .generated_files/flags/default/92e8f25ac69f5b1578e4d0ddcc05292e8fb88000 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ../ECE118_library/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_TattleTale.o: ../ECE118_library/src/ES_TattleTale.c  .generated_files/flags/default/de7c7ff475d473df9ce2ae8b7efcd4d31fc59138 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ../ECE118_library/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Timers.o: ../ECE118_library/src/ES_Timers.c  .generated_files/flags/default/9996b8aa55b15b07440d09895afd095614cbc62b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ../ECE118_library/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/IO_Ports.o: ../ECE118_library/src/IO_Ports.c  .generated_files/flags/default/3d7392555a194241fce4b5ed4d724a6503ac966a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ../ECE118_library/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/LED.o: ../ECE118_library/src/LED.c  .generated_files/flags/default/5c75647368cbec73890c4323b8b08540be49e232 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/LED.o.d" -o ${OBJECTDIR}/_ext/627994287/LED.o ../ECE118_library/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/RC_Servo.o: ../ECE118_library/src/RC_Servo.c  .generated_files/flags/default/eefae4ec2126ea5918fa51d9cc99069ccc23ae26 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ../ECE118_library/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/pwm.o: ../ECE118_library/src/pwm.c  .generated_files/flags/default/96cd902389814bc5c05cbc30bca7b2901dbbd96a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/pwm.o.d" -o ${OBJECTDIR}/_ext/627994287/pwm.o ../ECE118_library/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/serial.o: ../ECE118_library/src/serial.c  .generated_files/flags/default/37aeedb4ab61bf7cafe828832a8c3587785b0650 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/serial.o.d" -o ${OBJECTDIR}/_ext/627994287/serial.o ../ECE118_library/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/timers.o: ../ECE118_library/src/timers.c  .generated_files/flags/default/b8b90246676f4d06f2ea616e907cf021fa845630 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/timers.o.d" -o ${OBJECTDIR}/_ext/627994287/timers.o ../ECE118_library/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/motors.o: ../ECE118_library/component\ libraries/motors.c  .generated_files/flags/default/9b9662c5d37afed433ecda151b3b61bd2cec3d58 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/motors.o.d" -o ${OBJECTDIR}/_ext/1612843869/motors.o "../ECE118_library/component libraries/motors.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o: ../ECE118_library/component\ libraries/MotorEncoderService.c  .generated_files/flags/default/6b8499e3860181e468b382ba68cc2c472b8a8fa6 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d" -o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o "../ECE118_library/component libraries/MotorEncoderService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/RCServoService.o: ../ECE118_library/component\ libraries/RCServoService.c  .generated_files/flags/default/b3df04c549dffa03a6e2069f0d59542742b0d04b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/RCServoService.o.d" -o ${OBJECTDIR}/_ext/1612843869/RCServoService.o "../ECE118_library/component libraries/RCServoService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o: ../ECE118_library/component\ libraries/SensorEventChecker.c  .generated_files/flags/default/2de7f88f4f8432e8485b807b95897c472061a51b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d" -o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o "../ECE118_library/component libraries/SensorEventChecker.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Main.o: ES_Main.c  .generated_files/flags/default/92c5bcb03dfde07f666589ae2613aa690f4a0678 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Main.o.d 
	@${RM} ${OBJECTDIR}/ES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/ES_Main.o.d" -o ${OBJECTDIR}/ES_Main.o ES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TopLevelHSM.o: TopLevelHSM.c  .generated_files/flags/default/b2ab2a93b15e8e87e1a9eee25020bd8f3765956b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o.d 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/TopLevelHSM.o.d" -o ${OBJECTDIR}/TopLevelHSM.o TopLevelHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/DetectBeaconSubHSM.o: DetectBeaconSubHSM.c  .generated_files/flags/default/e6507a08f2d789758700861de3c7178ac4515fde .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o.d 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/DetectBeaconSubHSM.o.d" -o ${OBJECTDIR}/DetectBeaconSubHSM.o DetectBeaconSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/NavigateToTowerSubHSM.o: NavigateToTowerSubHSM.c  .generated_files/flags/default/4b485aa0d52ae24c56f9d9190fd74f4a0a1dce04 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o.d 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/NavigateToTowerSubHSM.o.d" -o ${OBJECTDIR}/NavigateToTowerSubHSM.o NavigateToTowerSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/AlignAndLaunchSubHSM.o: AlignAndLaunchSubHSM.c  .generated_files/flags/default/7a147527122578b42bc61d14bf678d60d42eafe8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o.d 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/AlignAndLaunchSubHSM.o.d" -o ${OBJECTDIR}/AlignAndLaunchSubHSM.o AlignAndLaunchSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RobotMovementService.o: RobotMovementService.c  .generated_files/flags/default/6ce3f8710f8882854912c3c4f4ed9890ef7fc5de .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RobotMovementService.o.d 
	@${RM} ${OBJECTDIR}/RobotMovementService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/RobotMovementService.o.d" -o ${OBJECTDIR}/RobotMovementService.o RobotMovementService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FinalProjectStateMachines.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../ECE118_library/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FinalProjectStateMachines.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/FinalProjectStateMachines.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../ECE118_library/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FinalProjectStateMachines.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/FinalProjectStateMachines.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif

.pre:
	@echo "--------------------------------------"
	@echo "User defined pre-build step: [python C:\Users\maansilv\Downloads\ECE118\ECE118_library\scripts\Enum_To_String.py]"
	@python C:\Users\maansilv\Downloads\ECE118\ECE118_library\scripts\Enum_To_String.py
	@echo "--------------------------------------"

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
