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
SOURCEFILES_QUOTED_IF_SPACED=../ECE118_library/src/AD.c ../ECE118_library/src/BOARD.c ../ECE118_library/src/ES_CheckEvents.c ../ECE118_library/src/ES_Framework.c ../ECE118_library/src/ES_KeyboardInput.c ../ECE118_library/src/ES_PostList.c ../ECE118_library/src/ES_Queue.c ../ECE118_library/src/ES_TattleTale.c ../ECE118_library/src/ES_Timers.c ../ECE118_library/src/IO_Ports.c ../ECE118_library/src/LED.c ../ECE118_library/src/RC_Servo.c ../ECE118_library/src/pwm.c ../ECE118_library/src/serial.c ../ECE118_library/src/timers.c "../ECE118_library/component libraries/motors.c" "../ECE118_library/component libraries/MotorEncoderService.c" "../ECE118_library/component libraries/RCServoService.c" "../ECE118_library/component libraries/SensorEventChecker.c" ES_Main.c TopLevelHSM.c DetectBeaconSubHSM.c NavigateToTowerSubHSM.c AlignAndLaunchSubHSM.c RobotMovementService.c GetBackOnCourseFSM.c WallFollowFSM.c HoleAlignmentFSM.c TowerEncirclementFSM.c LookForSecondBeaconFSM.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/627994287/AD.o ${OBJECTDIR}/_ext/627994287/BOARD.o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ${OBJECTDIR}/_ext/627994287/LED.o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ${OBJECTDIR}/_ext/627994287/pwm.o ${OBJECTDIR}/_ext/627994287/serial.o ${OBJECTDIR}/_ext/627994287/timers.o ${OBJECTDIR}/_ext/1612843869/motors.o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o ${OBJECTDIR}/_ext/1612843869/RCServoService.o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o ${OBJECTDIR}/ES_Main.o ${OBJECTDIR}/TopLevelHSM.o ${OBJECTDIR}/DetectBeaconSubHSM.o ${OBJECTDIR}/NavigateToTowerSubHSM.o ${OBJECTDIR}/AlignAndLaunchSubHSM.o ${OBJECTDIR}/RobotMovementService.o ${OBJECTDIR}/GetBackOnCourseFSM.o ${OBJECTDIR}/WallFollowFSM.o ${OBJECTDIR}/HoleAlignmentFSM.o ${OBJECTDIR}/TowerEncirclementFSM.o ${OBJECTDIR}/LookForSecondBeaconFSM.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/627994287/AD.o.d ${OBJECTDIR}/_ext/627994287/BOARD.o.d ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d ${OBJECTDIR}/_ext/627994287/LED.o.d ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d ${OBJECTDIR}/_ext/627994287/pwm.o.d ${OBJECTDIR}/_ext/627994287/serial.o.d ${OBJECTDIR}/_ext/627994287/timers.o.d ${OBJECTDIR}/_ext/1612843869/motors.o.d ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d ${OBJECTDIR}/_ext/1612843869/RCServoService.o.d ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d ${OBJECTDIR}/ES_Main.o.d ${OBJECTDIR}/TopLevelHSM.o.d ${OBJECTDIR}/DetectBeaconSubHSM.o.d ${OBJECTDIR}/NavigateToTowerSubHSM.o.d ${OBJECTDIR}/AlignAndLaunchSubHSM.o.d ${OBJECTDIR}/RobotMovementService.o.d ${OBJECTDIR}/GetBackOnCourseFSM.o.d ${OBJECTDIR}/WallFollowFSM.o.d ${OBJECTDIR}/HoleAlignmentFSM.o.d ${OBJECTDIR}/TowerEncirclementFSM.o.d ${OBJECTDIR}/LookForSecondBeaconFSM.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/627994287/AD.o ${OBJECTDIR}/_ext/627994287/BOARD.o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ${OBJECTDIR}/_ext/627994287/LED.o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ${OBJECTDIR}/_ext/627994287/pwm.o ${OBJECTDIR}/_ext/627994287/serial.o ${OBJECTDIR}/_ext/627994287/timers.o ${OBJECTDIR}/_ext/1612843869/motors.o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o ${OBJECTDIR}/_ext/1612843869/RCServoService.o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o ${OBJECTDIR}/ES_Main.o ${OBJECTDIR}/TopLevelHSM.o ${OBJECTDIR}/DetectBeaconSubHSM.o ${OBJECTDIR}/NavigateToTowerSubHSM.o ${OBJECTDIR}/AlignAndLaunchSubHSM.o ${OBJECTDIR}/RobotMovementService.o ${OBJECTDIR}/GetBackOnCourseFSM.o ${OBJECTDIR}/WallFollowFSM.o ${OBJECTDIR}/HoleAlignmentFSM.o ${OBJECTDIR}/TowerEncirclementFSM.o ${OBJECTDIR}/LookForSecondBeaconFSM.o

# Source Files
SOURCEFILES=../ECE118_library/src/AD.c ../ECE118_library/src/BOARD.c ../ECE118_library/src/ES_CheckEvents.c ../ECE118_library/src/ES_Framework.c ../ECE118_library/src/ES_KeyboardInput.c ../ECE118_library/src/ES_PostList.c ../ECE118_library/src/ES_Queue.c ../ECE118_library/src/ES_TattleTale.c ../ECE118_library/src/ES_Timers.c ../ECE118_library/src/IO_Ports.c ../ECE118_library/src/LED.c ../ECE118_library/src/RC_Servo.c ../ECE118_library/src/pwm.c ../ECE118_library/src/serial.c ../ECE118_library/src/timers.c ../ECE118_library/component libraries/motors.c ../ECE118_library/component libraries/MotorEncoderService.c ../ECE118_library/component libraries/RCServoService.c ../ECE118_library/component libraries/SensorEventChecker.c ES_Main.c TopLevelHSM.c DetectBeaconSubHSM.c NavigateToTowerSubHSM.c AlignAndLaunchSubHSM.c RobotMovementService.c GetBackOnCourseFSM.c WallFollowFSM.c HoleAlignmentFSM.c TowerEncirclementFSM.c LookForSecondBeaconFSM.c



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
${OBJECTDIR}/_ext/627994287/AD.o: ../ECE118_library/src/AD.c  .generated_files/flags/default/a1fa6f7dcc9b6ce37d8018b938e67759fa840cc2 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/AD.o.d" -o ${OBJECTDIR}/_ext/627994287/AD.o ../ECE118_library/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/BOARD.o: ../ECE118_library/src/BOARD.c  .generated_files/flags/default/a4a9c9c4751a06aaba08817ddf250092bacddbf7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/BOARD.o.d" -o ${OBJECTDIR}/_ext/627994287/BOARD.o ../ECE118_library/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o: ../ECE118_library/src/ES_CheckEvents.c  .generated_files/flags/default/f24bdddd29d4edecbdf85a3099e32ec83cf31390 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ../ECE118_library/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Framework.o: ../ECE118_library/src/ES_Framework.c  .generated_files/flags/default/e1267bedd9e2217f6edc12c346cbf8ac7a67863 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ../ECE118_library/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o: ../ECE118_library/src/ES_KeyboardInput.c  .generated_files/flags/default/77fcdfa2fee4f6ba473ae44a3ca89b0fcffa53c7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ../ECE118_library/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_PostList.o: ../ECE118_library/src/ES_PostList.c  .generated_files/flags/default/3e90af82c5aeb957ee5384fd2d9a042897a05737 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ../ECE118_library/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Queue.o: ../ECE118_library/src/ES_Queue.c  .generated_files/flags/default/1aa95fb4b6cd9bd9509902e43f8841827faefc6c .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ../ECE118_library/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_TattleTale.o: ../ECE118_library/src/ES_TattleTale.c  .generated_files/flags/default/a3a39a954c915f653b760e20ac57909985e607d9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ../ECE118_library/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Timers.o: ../ECE118_library/src/ES_Timers.c  .generated_files/flags/default/57cc35ec514c9b54dcc3987928f435d5232a7276 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ../ECE118_library/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/IO_Ports.o: ../ECE118_library/src/IO_Ports.c  .generated_files/flags/default/491579106d5bc3551b8ed58c0ecee3b622f18f50 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ../ECE118_library/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/LED.o: ../ECE118_library/src/LED.c  .generated_files/flags/default/9673abe431944ce925024056063a4a56b0939048 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/LED.o.d" -o ${OBJECTDIR}/_ext/627994287/LED.o ../ECE118_library/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/RC_Servo.o: ../ECE118_library/src/RC_Servo.c  .generated_files/flags/default/2c2e733c59b0fa5dac3d204da1cd9848c1a0265c .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ../ECE118_library/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/pwm.o: ../ECE118_library/src/pwm.c  .generated_files/flags/default/f1aafc593e97e873651e688de91b15478f097bed .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/pwm.o.d" -o ${OBJECTDIR}/_ext/627994287/pwm.o ../ECE118_library/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/serial.o: ../ECE118_library/src/serial.c  .generated_files/flags/default/64d0b3c50c48d92210b3c5ecdf5e06ae72faf2a1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/serial.o.d" -o ${OBJECTDIR}/_ext/627994287/serial.o ../ECE118_library/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/timers.o: ../ECE118_library/src/timers.c  .generated_files/flags/default/8210cc0bb8f0044ae5f3b5370070245396fd5f38 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/timers.o.d" -o ${OBJECTDIR}/_ext/627994287/timers.o ../ECE118_library/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/motors.o: ../ECE118_library/component\ libraries/motors.c  .generated_files/flags/default/3061c8978ce0d6cbba905e386bbe2e7039f14b95 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/motors.o.d" -o ${OBJECTDIR}/_ext/1612843869/motors.o "../ECE118_library/component libraries/motors.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o: ../ECE118_library/component\ libraries/MotorEncoderService.c  .generated_files/flags/default/a0231c94ed4931a59a77213e8ab8d71f70cd50d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d" -o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o "../ECE118_library/component libraries/MotorEncoderService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/RCServoService.o: ../ECE118_library/component\ libraries/RCServoService.c  .generated_files/flags/default/9b244f2b52f457396b47eedf11151127d8453c7f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/RCServoService.o.d" -o ${OBJECTDIR}/_ext/1612843869/RCServoService.o "../ECE118_library/component libraries/RCServoService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o: ../ECE118_library/component\ libraries/SensorEventChecker.c  .generated_files/flags/default/c3646b4e8818db3e936a143f618e3cbf726d9dd0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d" -o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o "../ECE118_library/component libraries/SensorEventChecker.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Main.o: ES_Main.c  .generated_files/flags/default/e368c451f3aa841d688bba69260722f07f4c3263 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Main.o.d 
	@${RM} ${OBJECTDIR}/ES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/ES_Main.o.d" -o ${OBJECTDIR}/ES_Main.o ES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TopLevelHSM.o: TopLevelHSM.c  .generated_files/flags/default/ae3f5684d5c3ab8edfc8e3fa7980f9b33477cfd0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o.d 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/TopLevelHSM.o.d" -o ${OBJECTDIR}/TopLevelHSM.o TopLevelHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/DetectBeaconSubHSM.o: DetectBeaconSubHSM.c  .generated_files/flags/default/440b76e5c49b7b8d85f61cd11f44fb735d5229e2 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o.d 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/DetectBeaconSubHSM.o.d" -o ${OBJECTDIR}/DetectBeaconSubHSM.o DetectBeaconSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/NavigateToTowerSubHSM.o: NavigateToTowerSubHSM.c  .generated_files/flags/default/35046c47443ebe0e6419ffe5415240ea3fd8685f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o.d 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/NavigateToTowerSubHSM.o.d" -o ${OBJECTDIR}/NavigateToTowerSubHSM.o NavigateToTowerSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/AlignAndLaunchSubHSM.o: AlignAndLaunchSubHSM.c  .generated_files/flags/default/296a0091abea613c7a100f07fe873c21e38ca2d7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o.d 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/AlignAndLaunchSubHSM.o.d" -o ${OBJECTDIR}/AlignAndLaunchSubHSM.o AlignAndLaunchSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RobotMovementService.o: RobotMovementService.c  .generated_files/flags/default/f3991c414fc070fbf4900c4e37355737fc26079e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RobotMovementService.o.d 
	@${RM} ${OBJECTDIR}/RobotMovementService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/RobotMovementService.o.d" -o ${OBJECTDIR}/RobotMovementService.o RobotMovementService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/GetBackOnCourseFSM.o: GetBackOnCourseFSM.c  .generated_files/flags/default/ae0dede43210c12f56808e99a9e7cce33f9db370 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GetBackOnCourseFSM.o.d 
	@${RM} ${OBJECTDIR}/GetBackOnCourseFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/GetBackOnCourseFSM.o.d" -o ${OBJECTDIR}/GetBackOnCourseFSM.o GetBackOnCourseFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/WallFollowFSM.o: WallFollowFSM.c  .generated_files/flags/default/3837c470f08772611645c046c90584800f877d31 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/WallFollowFSM.o.d 
	@${RM} ${OBJECTDIR}/WallFollowFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/WallFollowFSM.o.d" -o ${OBJECTDIR}/WallFollowFSM.o WallFollowFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/HoleAlignmentFSM.o: HoleAlignmentFSM.c  .generated_files/flags/default/bf52c0e1cc54dcb8a2a275e673973b9bca97c2f8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/HoleAlignmentFSM.o.d 
	@${RM} ${OBJECTDIR}/HoleAlignmentFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/HoleAlignmentFSM.o.d" -o ${OBJECTDIR}/HoleAlignmentFSM.o HoleAlignmentFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TowerEncirclementFSM.o: TowerEncirclementFSM.c  .generated_files/flags/default/13664ca41b711186d98a0cc1f4714a00ccab9d57 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TowerEncirclementFSM.o.d 
	@${RM} ${OBJECTDIR}/TowerEncirclementFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/TowerEncirclementFSM.o.d" -o ${OBJECTDIR}/TowerEncirclementFSM.o TowerEncirclementFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LookForSecondBeaconFSM.o: LookForSecondBeaconFSM.c  .generated_files/flags/default/213ddd42bdf7e4ccf1d288604652d89eac9b0b80 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LookForSecondBeaconFSM.o.d 
	@${RM} ${OBJECTDIR}/LookForSecondBeaconFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/LookForSecondBeaconFSM.o.d" -o ${OBJECTDIR}/LookForSecondBeaconFSM.o LookForSecondBeaconFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/627994287/AD.o: ../ECE118_library/src/AD.c  .generated_files/flags/default/b97be7df3e184908ad4de0f20f3550f6775996e3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/AD.o.d" -o ${OBJECTDIR}/_ext/627994287/AD.o ../ECE118_library/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/BOARD.o: ../ECE118_library/src/BOARD.c  .generated_files/flags/default/8a650f18dc483aa5061444c56c567df504cf5b2f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/BOARD.o.d" -o ${OBJECTDIR}/_ext/627994287/BOARD.o ../ECE118_library/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o: ../ECE118_library/src/ES_CheckEvents.c  .generated_files/flags/default/7c3bbc57f3dda7e15b35c70515a4a9e1da9ff4d7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ../ECE118_library/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Framework.o: ../ECE118_library/src/ES_Framework.c  .generated_files/flags/default/7d8c349bc6e7a2fa50c50f07a2d219c77129c439 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ../ECE118_library/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o: ../ECE118_library/src/ES_KeyboardInput.c  .generated_files/flags/default/bdd20be1188eaea81673e64ebec2317ef0ac9100 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ../ECE118_library/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_PostList.o: ../ECE118_library/src/ES_PostList.c  .generated_files/flags/default/35cb565f59ed1307dcecdf6965530f2c58ee855a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ../ECE118_library/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Queue.o: ../ECE118_library/src/ES_Queue.c  .generated_files/flags/default/849d60968b101f240885b4a7b6c666afe9fa45ef .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ../ECE118_library/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_TattleTale.o: ../ECE118_library/src/ES_TattleTale.c  .generated_files/flags/default/a8648ef9c0b57df7dc2736c4d20218b0fa90d2cb .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ../ECE118_library/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Timers.o: ../ECE118_library/src/ES_Timers.c  .generated_files/flags/default/feec06f1d92897351e401feda573db4a7c38469f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ../ECE118_library/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/IO_Ports.o: ../ECE118_library/src/IO_Ports.c  .generated_files/flags/default/ea4c679ff4594a43f2506a7cb2d3acfef6df695 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ../ECE118_library/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/LED.o: ../ECE118_library/src/LED.c  .generated_files/flags/default/c6243ad4a35aa08253200ddc3309c8f81b750caf .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/LED.o.d" -o ${OBJECTDIR}/_ext/627994287/LED.o ../ECE118_library/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/RC_Servo.o: ../ECE118_library/src/RC_Servo.c  .generated_files/flags/default/3e3e1da264f330e52285202b18c273cb8417b07e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ../ECE118_library/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/pwm.o: ../ECE118_library/src/pwm.c  .generated_files/flags/default/6fe141386570917f625ec671b9c173443a6c5df9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/pwm.o.d" -o ${OBJECTDIR}/_ext/627994287/pwm.o ../ECE118_library/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/serial.o: ../ECE118_library/src/serial.c  .generated_files/flags/default/6fe5c0f687fd7882049a0e88c1bd9f516bb86962 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/serial.o.d" -o ${OBJECTDIR}/_ext/627994287/serial.o ../ECE118_library/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/timers.o: ../ECE118_library/src/timers.c  .generated_files/flags/default/89ec78b68ae7686284769bed53eda4b78cfb73e1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/timers.o.d" -o ${OBJECTDIR}/_ext/627994287/timers.o ../ECE118_library/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/motors.o: ../ECE118_library/component\ libraries/motors.c  .generated_files/flags/default/3296223337f1988c933dabb46c779d75f93bd781 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/motors.o.d" -o ${OBJECTDIR}/_ext/1612843869/motors.o "../ECE118_library/component libraries/motors.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o: ../ECE118_library/component\ libraries/MotorEncoderService.c  .generated_files/flags/default/f82c9c2368618f176104401e88341e10f5a94ce9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d" -o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o "../ECE118_library/component libraries/MotorEncoderService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/RCServoService.o: ../ECE118_library/component\ libraries/RCServoService.c  .generated_files/flags/default/29807beaf99273d895d2c038b24940df44788eea .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/RCServoService.o.d" -o ${OBJECTDIR}/_ext/1612843869/RCServoService.o "../ECE118_library/component libraries/RCServoService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o: ../ECE118_library/component\ libraries/SensorEventChecker.c  .generated_files/flags/default/afe8d53595f966252781f94ef9b1ed88ba90c766 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d" -o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o "../ECE118_library/component libraries/SensorEventChecker.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Main.o: ES_Main.c  .generated_files/flags/default/5abdec2e0a210b3f6d49dee9fe91d24869bc81ea .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Main.o.d 
	@${RM} ${OBJECTDIR}/ES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/ES_Main.o.d" -o ${OBJECTDIR}/ES_Main.o ES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TopLevelHSM.o: TopLevelHSM.c  .generated_files/flags/default/4d1058447948d37846e67be84a80c277230eacff .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o.d 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/TopLevelHSM.o.d" -o ${OBJECTDIR}/TopLevelHSM.o TopLevelHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/DetectBeaconSubHSM.o: DetectBeaconSubHSM.c  .generated_files/flags/default/ce70881be1def0bade70d976686fb442691fc522 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o.d 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/DetectBeaconSubHSM.o.d" -o ${OBJECTDIR}/DetectBeaconSubHSM.o DetectBeaconSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/NavigateToTowerSubHSM.o: NavigateToTowerSubHSM.c  .generated_files/flags/default/6a70ead3428358b7bd0603568a05d32fa6328345 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o.d 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/NavigateToTowerSubHSM.o.d" -o ${OBJECTDIR}/NavigateToTowerSubHSM.o NavigateToTowerSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/AlignAndLaunchSubHSM.o: AlignAndLaunchSubHSM.c  .generated_files/flags/default/f7d7eca1f82ca4386dc609f2583eb7e2092a48e4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o.d 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/AlignAndLaunchSubHSM.o.d" -o ${OBJECTDIR}/AlignAndLaunchSubHSM.o AlignAndLaunchSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RobotMovementService.o: RobotMovementService.c  .generated_files/flags/default/f43c18b5c079ee0fc4acee07d5f6f9525fd10dcf .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RobotMovementService.o.d 
	@${RM} ${OBJECTDIR}/RobotMovementService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/RobotMovementService.o.d" -o ${OBJECTDIR}/RobotMovementService.o RobotMovementService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/GetBackOnCourseFSM.o: GetBackOnCourseFSM.c  .generated_files/flags/default/2533190b9ec6d9d56599233e155c6ea86f417c8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GetBackOnCourseFSM.o.d 
	@${RM} ${OBJECTDIR}/GetBackOnCourseFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/GetBackOnCourseFSM.o.d" -o ${OBJECTDIR}/GetBackOnCourseFSM.o GetBackOnCourseFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/WallFollowFSM.o: WallFollowFSM.c  .generated_files/flags/default/3de07b3ecfe6b5774aff234ddc583003dbb87523 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/WallFollowFSM.o.d 
	@${RM} ${OBJECTDIR}/WallFollowFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/WallFollowFSM.o.d" -o ${OBJECTDIR}/WallFollowFSM.o WallFollowFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/HoleAlignmentFSM.o: HoleAlignmentFSM.c  .generated_files/flags/default/ae49c312d1232fd00977fbbf73b9e3016c80cb22 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/HoleAlignmentFSM.o.d 
	@${RM} ${OBJECTDIR}/HoleAlignmentFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/HoleAlignmentFSM.o.d" -o ${OBJECTDIR}/HoleAlignmentFSM.o HoleAlignmentFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TowerEncirclementFSM.o: TowerEncirclementFSM.c  .generated_files/flags/default/27183ed31382797164a92040f5e0a0a6efb3b0ad .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TowerEncirclementFSM.o.d 
	@${RM} ${OBJECTDIR}/TowerEncirclementFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/TowerEncirclementFSM.o.d" -o ${OBJECTDIR}/TowerEncirclementFSM.o TowerEncirclementFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LookForSecondBeaconFSM.o: LookForSecondBeaconFSM.c  .generated_files/flags/default/bd5b9b80fefcaf074efc5308a2a35270722124d9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LookForSecondBeaconFSM.o.d 
	@${RM} ${OBJECTDIR}/LookForSecondBeaconFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_SENSOR_INTEGRATION -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/LookForSecondBeaconFSM.o.d" -o ${OBJECTDIR}/LookForSecondBeaconFSM.o LookForSecondBeaconFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FinalProjectStateMachines.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--defsym=_min_heap_size=1000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/FinalProjectStateMachines.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../ECE118_library/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FinalProjectStateMachines.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
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
