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
SOURCEFILES_QUOTED_IF_SPACED=../ECE118_library/src/AD.c ../ECE118_library/src/BOARD.c ../ECE118_library/src/ES_CheckEvents.c ../ECE118_library/src/ES_Framework.c ../ECE118_library/src/ES_KeyboardInput.c ../ECE118_library/src/ES_PostList.c ../ECE118_library/src/ES_Queue.c ../ECE118_library/src/ES_TattleTale.c ../ECE118_library/src/ES_Timers.c ../ECE118_library/src/IO_Ports.c ../ECE118_library/src/LED.c ../ECE118_library/src/RC_Servo.c ../ECE118_library/src/pwm.c ../ECE118_library/src/serial.c ../ECE118_library/src/timers.c "../ECE118_library/component libraries/motors.c" "../ECE118_library/component libraries/MotorEncoderService.c" "../ECE118_library/component libraries/RCServoService.c" "../ECE118_library/component libraries/SensorEventChecker.c" ES_Main.c TopLevelHSM.c DetectBeaconSubHSM.c NavigateToTowerSubHSM.c AlignAndLaunchSubHSM.c RobotMovementService.c GetBackOnCourseFSM.c WallFollowFSM.c HoleAlignmentFSM.c TowerEncirclementFSM.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/627994287/AD.o ${OBJECTDIR}/_ext/627994287/BOARD.o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ${OBJECTDIR}/_ext/627994287/LED.o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ${OBJECTDIR}/_ext/627994287/pwm.o ${OBJECTDIR}/_ext/627994287/serial.o ${OBJECTDIR}/_ext/627994287/timers.o ${OBJECTDIR}/_ext/1612843869/motors.o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o ${OBJECTDIR}/_ext/1612843869/RCServoService.o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o ${OBJECTDIR}/ES_Main.o ${OBJECTDIR}/TopLevelHSM.o ${OBJECTDIR}/DetectBeaconSubHSM.o ${OBJECTDIR}/NavigateToTowerSubHSM.o ${OBJECTDIR}/AlignAndLaunchSubHSM.o ${OBJECTDIR}/RobotMovementService.o ${OBJECTDIR}/GetBackOnCourseFSM.o ${OBJECTDIR}/WallFollowFSM.o ${OBJECTDIR}/HoleAlignmentFSM.o ${OBJECTDIR}/TowerEncirclementFSM.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/627994287/AD.o.d ${OBJECTDIR}/_ext/627994287/BOARD.o.d ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d ${OBJECTDIR}/_ext/627994287/LED.o.d ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d ${OBJECTDIR}/_ext/627994287/pwm.o.d ${OBJECTDIR}/_ext/627994287/serial.o.d ${OBJECTDIR}/_ext/627994287/timers.o.d ${OBJECTDIR}/_ext/1612843869/motors.o.d ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d ${OBJECTDIR}/_ext/1612843869/RCServoService.o.d ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d ${OBJECTDIR}/ES_Main.o.d ${OBJECTDIR}/TopLevelHSM.o.d ${OBJECTDIR}/DetectBeaconSubHSM.o.d ${OBJECTDIR}/NavigateToTowerSubHSM.o.d ${OBJECTDIR}/AlignAndLaunchSubHSM.o.d ${OBJECTDIR}/RobotMovementService.o.d ${OBJECTDIR}/GetBackOnCourseFSM.o.d ${OBJECTDIR}/WallFollowFSM.o.d ${OBJECTDIR}/HoleAlignmentFSM.o.d ${OBJECTDIR}/TowerEncirclementFSM.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/627994287/AD.o ${OBJECTDIR}/_ext/627994287/BOARD.o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ${OBJECTDIR}/_ext/627994287/LED.o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ${OBJECTDIR}/_ext/627994287/pwm.o ${OBJECTDIR}/_ext/627994287/serial.o ${OBJECTDIR}/_ext/627994287/timers.o ${OBJECTDIR}/_ext/1612843869/motors.o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o ${OBJECTDIR}/_ext/1612843869/RCServoService.o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o ${OBJECTDIR}/ES_Main.o ${OBJECTDIR}/TopLevelHSM.o ${OBJECTDIR}/DetectBeaconSubHSM.o ${OBJECTDIR}/NavigateToTowerSubHSM.o ${OBJECTDIR}/AlignAndLaunchSubHSM.o ${OBJECTDIR}/RobotMovementService.o ${OBJECTDIR}/GetBackOnCourseFSM.o ${OBJECTDIR}/WallFollowFSM.o ${OBJECTDIR}/HoleAlignmentFSM.o ${OBJECTDIR}/TowerEncirclementFSM.o

# Source Files
SOURCEFILES=../ECE118_library/src/AD.c ../ECE118_library/src/BOARD.c ../ECE118_library/src/ES_CheckEvents.c ../ECE118_library/src/ES_Framework.c ../ECE118_library/src/ES_KeyboardInput.c ../ECE118_library/src/ES_PostList.c ../ECE118_library/src/ES_Queue.c ../ECE118_library/src/ES_TattleTale.c ../ECE118_library/src/ES_Timers.c ../ECE118_library/src/IO_Ports.c ../ECE118_library/src/LED.c ../ECE118_library/src/RC_Servo.c ../ECE118_library/src/pwm.c ../ECE118_library/src/serial.c ../ECE118_library/src/timers.c ../ECE118_library/component libraries/motors.c ../ECE118_library/component libraries/MotorEncoderService.c ../ECE118_library/component libraries/RCServoService.c ../ECE118_library/component libraries/SensorEventChecker.c ES_Main.c TopLevelHSM.c DetectBeaconSubHSM.c NavigateToTowerSubHSM.c AlignAndLaunchSubHSM.c RobotMovementService.c GetBackOnCourseFSM.c WallFollowFSM.c HoleAlignmentFSM.c TowerEncirclementFSM.c



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
${OBJECTDIR}/_ext/627994287/AD.o: ../ECE118_library/src/AD.c  .generated_files/flags/default/2e04f029fe849ba625ef5a4b0dc0255af50acdbd .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/AD.o.d" -o ${OBJECTDIR}/_ext/627994287/AD.o ../ECE118_library/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/BOARD.o: ../ECE118_library/src/BOARD.c  .generated_files/flags/default/56883fe275311aea6809521348684d1a8d25fd0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/BOARD.o.d" -o ${OBJECTDIR}/_ext/627994287/BOARD.o ../ECE118_library/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o: ../ECE118_library/src/ES_CheckEvents.c  .generated_files/flags/default/3c77b39db8737a05a9edfd3d2855c10f7234ff61 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ../ECE118_library/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Framework.o: ../ECE118_library/src/ES_Framework.c  .generated_files/flags/default/f4fa185e85b5e85fdb627dea5f7da49602957646 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ../ECE118_library/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o: ../ECE118_library/src/ES_KeyboardInput.c  .generated_files/flags/default/96a19fea9bca2ba6be5c475bcd026a6f35369e66 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ../ECE118_library/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_PostList.o: ../ECE118_library/src/ES_PostList.c  .generated_files/flags/default/fc6e35b7af400bd54a6febe536f9c5c5caf3dc8b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ../ECE118_library/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Queue.o: ../ECE118_library/src/ES_Queue.c  .generated_files/flags/default/80081e48406e3bf8e36c9f7203a70dcc69304399 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ../ECE118_library/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_TattleTale.o: ../ECE118_library/src/ES_TattleTale.c  .generated_files/flags/default/7ea228bd312139653296beea76d961549b90ce35 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ../ECE118_library/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Timers.o: ../ECE118_library/src/ES_Timers.c  .generated_files/flags/default/9cbdaffffb43b8fbcba1cca78e17f1b985e982d8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ../ECE118_library/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/IO_Ports.o: ../ECE118_library/src/IO_Ports.c  .generated_files/flags/default/e1f56a07f7f07b076b415e97c220bbf6b2a7b9a8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ../ECE118_library/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/LED.o: ../ECE118_library/src/LED.c  .generated_files/flags/default/7756eef6ae8f2bbd00f01dbf5f9f6c905b18b90e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/LED.o.d" -o ${OBJECTDIR}/_ext/627994287/LED.o ../ECE118_library/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/RC_Servo.o: ../ECE118_library/src/RC_Servo.c  .generated_files/flags/default/21e0f40a8f5d816d11e238f1c1a5a9028f0e4a8a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ../ECE118_library/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/pwm.o: ../ECE118_library/src/pwm.c  .generated_files/flags/default/9452dea41df5936822f73a18ced4691780676cf4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/pwm.o.d" -o ${OBJECTDIR}/_ext/627994287/pwm.o ../ECE118_library/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/serial.o: ../ECE118_library/src/serial.c  .generated_files/flags/default/bd59bca1db3db6e43278928a594be95441c6031c .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/serial.o.d" -o ${OBJECTDIR}/_ext/627994287/serial.o ../ECE118_library/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/timers.o: ../ECE118_library/src/timers.c  .generated_files/flags/default/981d3cc88c66b8e7b77f065133478e61a93b59a3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/timers.o.d" -o ${OBJECTDIR}/_ext/627994287/timers.o ../ECE118_library/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/motors.o: ../ECE118_library/component\ libraries/motors.c  .generated_files/flags/default/86d443567cadd086ae9832ef0bff0143692efa9c .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/motors.o.d" -o ${OBJECTDIR}/_ext/1612843869/motors.o "../ECE118_library/component libraries/motors.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o: ../ECE118_library/component\ libraries/MotorEncoderService.c  .generated_files/flags/default/193e85a0e150b9a6a987b3c8148ea32ff1d855e7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d" -o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o "../ECE118_library/component libraries/MotorEncoderService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/RCServoService.o: ../ECE118_library/component\ libraries/RCServoService.c  .generated_files/flags/default/3f3ea3dbbac53f2e818a2669afcf2b0b12ecfcba .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/RCServoService.o.d" -o ${OBJECTDIR}/_ext/1612843869/RCServoService.o "../ECE118_library/component libraries/RCServoService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o: ../ECE118_library/component\ libraries/SensorEventChecker.c  .generated_files/flags/default/eb6b0b9c48836d982fe149a47eddae30597f81c .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d" -o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o "../ECE118_library/component libraries/SensorEventChecker.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Main.o: ES_Main.c  .generated_files/flags/default/ec2c0baed378dedd4497f9450a7e885570e166f7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Main.o.d 
	@${RM} ${OBJECTDIR}/ES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/ES_Main.o.d" -o ${OBJECTDIR}/ES_Main.o ES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TopLevelHSM.o: TopLevelHSM.c  .generated_files/flags/default/fe6116ad79a569fcced8f6550eae48d7c101d4a7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o.d 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/TopLevelHSM.o.d" -o ${OBJECTDIR}/TopLevelHSM.o TopLevelHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/DetectBeaconSubHSM.o: DetectBeaconSubHSM.c  .generated_files/flags/default/a5a1dbcd8f5cae6a90737378d2d300a9e691ae11 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o.d 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/DetectBeaconSubHSM.o.d" -o ${OBJECTDIR}/DetectBeaconSubHSM.o DetectBeaconSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/NavigateToTowerSubHSM.o: NavigateToTowerSubHSM.c  .generated_files/flags/default/471ea28581bf6d095ed3f6f91f3eafb7b22d8827 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o.d 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/NavigateToTowerSubHSM.o.d" -o ${OBJECTDIR}/NavigateToTowerSubHSM.o NavigateToTowerSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/AlignAndLaunchSubHSM.o: AlignAndLaunchSubHSM.c  .generated_files/flags/default/ea9957adb99d0e392a11176b5d33b6570f01ea1e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o.d 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/AlignAndLaunchSubHSM.o.d" -o ${OBJECTDIR}/AlignAndLaunchSubHSM.o AlignAndLaunchSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RobotMovementService.o: RobotMovementService.c  .generated_files/flags/default/49a09dff954722f0ec6f62b21a138e57d83541a8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RobotMovementService.o.d 
	@${RM} ${OBJECTDIR}/RobotMovementService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/RobotMovementService.o.d" -o ${OBJECTDIR}/RobotMovementService.o RobotMovementService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/GetBackOnCourseFSM.o: GetBackOnCourseFSM.c  .generated_files/flags/default/2318cb2903446001da0d5d29e19ecc589a848080 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GetBackOnCourseFSM.o.d 
	@${RM} ${OBJECTDIR}/GetBackOnCourseFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/GetBackOnCourseFSM.o.d" -o ${OBJECTDIR}/GetBackOnCourseFSM.o GetBackOnCourseFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/WallFollowFSM.o: WallFollowFSM.c  .generated_files/flags/default/630009d17772b96ca42167e640b68f4a02be723c .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/WallFollowFSM.o.d 
	@${RM} ${OBJECTDIR}/WallFollowFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/WallFollowFSM.o.d" -o ${OBJECTDIR}/WallFollowFSM.o WallFollowFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/HoleAlignmentFSM.o: HoleAlignmentFSM.c  .generated_files/flags/default/206f1e26f034bfe0a0552d0d6b713e03ae5836af .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/HoleAlignmentFSM.o.d 
	@${RM} ${OBJECTDIR}/HoleAlignmentFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/HoleAlignmentFSM.o.d" -o ${OBJECTDIR}/HoleAlignmentFSM.o HoleAlignmentFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TowerEncirclementFSM.o: TowerEncirclementFSM.c  .generated_files/flags/default/9b7d33623d42815fd08f4e56c48196027e94bb8a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TowerEncirclementFSM.o.d 
	@${RM} ${OBJECTDIR}/TowerEncirclementFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/TowerEncirclementFSM.o.d" -o ${OBJECTDIR}/TowerEncirclementFSM.o TowerEncirclementFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/627994287/AD.o: ../ECE118_library/src/AD.c  .generated_files/flags/default/15feba8f3562c53840690c7377e18a4a6b28b6c3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/AD.o.d" -o ${OBJECTDIR}/_ext/627994287/AD.o ../ECE118_library/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/BOARD.o: ../ECE118_library/src/BOARD.c  .generated_files/flags/default/43d89934d7f1f9c7842649fa59bf8ca8773ca76f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/BOARD.o.d" -o ${OBJECTDIR}/_ext/627994287/BOARD.o ../ECE118_library/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o: ../ECE118_library/src/ES_CheckEvents.c  .generated_files/flags/default/41d7e426f4e9495a4899cb69cef14e86ccc6cf37 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ../ECE118_library/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Framework.o: ../ECE118_library/src/ES_Framework.c  .generated_files/flags/default/152182e727d3f69aa903ae0eaa084c1904ec21f6 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ../ECE118_library/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o: ../ECE118_library/src/ES_KeyboardInput.c  .generated_files/flags/default/d0c91cd4ee4bf150b84cb385dab2e0d719829236 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ../ECE118_library/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_PostList.o: ../ECE118_library/src/ES_PostList.c  .generated_files/flags/default/19764d4474cd57e53ca9f729ae7d04d258afb633 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ../ECE118_library/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Queue.o: ../ECE118_library/src/ES_Queue.c  .generated_files/flags/default/6856fe3e8ccc307d4dad851d615a302764890e07 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ../ECE118_library/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_TattleTale.o: ../ECE118_library/src/ES_TattleTale.c  .generated_files/flags/default/d152630980cc8c5c7e30d8ba63be46da05fb1bb8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ../ECE118_library/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Timers.o: ../ECE118_library/src/ES_Timers.c  .generated_files/flags/default/b7c49d4b3e2feff5b0186ac39ab88daad93b169 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ../ECE118_library/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/IO_Ports.o: ../ECE118_library/src/IO_Ports.c  .generated_files/flags/default/d67f1f63af2449ce6b5248351457a1bd86f33138 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ../ECE118_library/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/LED.o: ../ECE118_library/src/LED.c  .generated_files/flags/default/f2c10a0a4794cf3a576a050ad4b2cf1e511186a1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/LED.o.d" -o ${OBJECTDIR}/_ext/627994287/LED.o ../ECE118_library/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/RC_Servo.o: ../ECE118_library/src/RC_Servo.c  .generated_files/flags/default/d4de1e7f5a72ea1d62ba7c873e94be2ad9272d62 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ../ECE118_library/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/pwm.o: ../ECE118_library/src/pwm.c  .generated_files/flags/default/c96a5618130a891c18154b66a36cc02778aa857 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/pwm.o.d" -o ${OBJECTDIR}/_ext/627994287/pwm.o ../ECE118_library/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/serial.o: ../ECE118_library/src/serial.c  .generated_files/flags/default/5986f5a578f5987d83315b17ff58fd30cf16ef1f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/serial.o.d" -o ${OBJECTDIR}/_ext/627994287/serial.o ../ECE118_library/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/timers.o: ../ECE118_library/src/timers.c  .generated_files/flags/default/56480bf569361651633c3c743e17de9a6998ba .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/timers.o.d" -o ${OBJECTDIR}/_ext/627994287/timers.o ../ECE118_library/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/motors.o: ../ECE118_library/component\ libraries/motors.c  .generated_files/flags/default/ba18eff6862e00d754ca272a8c18123bbc870a7f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/motors.o.d" -o ${OBJECTDIR}/_ext/1612843869/motors.o "../ECE118_library/component libraries/motors.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o: ../ECE118_library/component\ libraries/MotorEncoderService.c  .generated_files/flags/default/ec77ee6c80de1ebcc9b84fb7ce47bbc1bebf52af .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d" -o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o "../ECE118_library/component libraries/MotorEncoderService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/RCServoService.o: ../ECE118_library/component\ libraries/RCServoService.c  .generated_files/flags/default/a37ac465d19f34743ad6e8b7b67a67d1d73e377f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/RCServoService.o.d" -o ${OBJECTDIR}/_ext/1612843869/RCServoService.o "../ECE118_library/component libraries/RCServoService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o: ../ECE118_library/component\ libraries/SensorEventChecker.c  .generated_files/flags/default/bb4083d5c1447c9547ab2a180f93a9614dc27375 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d" -o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o "../ECE118_library/component libraries/SensorEventChecker.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Main.o: ES_Main.c  .generated_files/flags/default/67bfec30f21c58c16a802bf50cada91bd6fd0189 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Main.o.d 
	@${RM} ${OBJECTDIR}/ES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/ES_Main.o.d" -o ${OBJECTDIR}/ES_Main.o ES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TopLevelHSM.o: TopLevelHSM.c  .generated_files/flags/default/67880213e727896edc8f364bc0ec9b0e5d35e3e0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o.d 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/TopLevelHSM.o.d" -o ${OBJECTDIR}/TopLevelHSM.o TopLevelHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/DetectBeaconSubHSM.o: DetectBeaconSubHSM.c  .generated_files/flags/default/9674393eff27727492008dc4b524344840553a47 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o.d 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/DetectBeaconSubHSM.o.d" -o ${OBJECTDIR}/DetectBeaconSubHSM.o DetectBeaconSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/NavigateToTowerSubHSM.o: NavigateToTowerSubHSM.c  .generated_files/flags/default/9ea1d2f82bc1143a38e3fb17561f22a0929fa9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o.d 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/NavigateToTowerSubHSM.o.d" -o ${OBJECTDIR}/NavigateToTowerSubHSM.o NavigateToTowerSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/AlignAndLaunchSubHSM.o: AlignAndLaunchSubHSM.c  .generated_files/flags/default/2ab6c5aae85389d0e9199ae2fb967c518af46c96 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o.d 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/AlignAndLaunchSubHSM.o.d" -o ${OBJECTDIR}/AlignAndLaunchSubHSM.o AlignAndLaunchSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RobotMovementService.o: RobotMovementService.c  .generated_files/flags/default/93d06423f5d018ef5c02f2cd477c1f76a79139a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RobotMovementService.o.d 
	@${RM} ${OBJECTDIR}/RobotMovementService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/RobotMovementService.o.d" -o ${OBJECTDIR}/RobotMovementService.o RobotMovementService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/GetBackOnCourseFSM.o: GetBackOnCourseFSM.c  .generated_files/flags/default/ceab5741036cc125810ef60e5a00c5451633deb6 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GetBackOnCourseFSM.o.d 
	@${RM} ${OBJECTDIR}/GetBackOnCourseFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/GetBackOnCourseFSM.o.d" -o ${OBJECTDIR}/GetBackOnCourseFSM.o GetBackOnCourseFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/WallFollowFSM.o: WallFollowFSM.c  .generated_files/flags/default/d053e6c189334d0bf6ec7b10ad41fd09e0310a13 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/WallFollowFSM.o.d 
	@${RM} ${OBJECTDIR}/WallFollowFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/WallFollowFSM.o.d" -o ${OBJECTDIR}/WallFollowFSM.o WallFollowFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/HoleAlignmentFSM.o: HoleAlignmentFSM.c  .generated_files/flags/default/9ac4d4a1c47e530dc50fdf13942271dc0b49acb9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/HoleAlignmentFSM.o.d 
	@${RM} ${OBJECTDIR}/HoleAlignmentFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/HoleAlignmentFSM.o.d" -o ${OBJECTDIR}/HoleAlignmentFSM.o HoleAlignmentFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TowerEncirclementFSM.o: TowerEncirclementFSM.c  .generated_files/flags/default/821a1470e37ce6fe79764b79720338314ddf0872 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TowerEncirclementFSM.o.d 
	@${RM} ${OBJECTDIR}/TowerEncirclementFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DGENERAL_TESTING -DTEST_ROBOT_MOVEMENT_FUNCTIONS -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/TowerEncirclementFSM.o.d" -o ${OBJECTDIR}/TowerEncirclementFSM.o TowerEncirclementFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
