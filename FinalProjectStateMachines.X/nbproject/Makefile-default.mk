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
SOURCEFILES_QUOTED_IF_SPACED=../ECE118_library/src/AD.c ../ECE118_library/src/BOARD.c ../ECE118_library/src/ES_CheckEvents.c ../ECE118_library/src/ES_Framework.c ../ECE118_library/src/ES_KeyboardInput.c ../ECE118_library/src/ES_PostList.c ../ECE118_library/src/ES_Queue.c ../ECE118_library/src/ES_TattleTale.c ../ECE118_library/src/ES_Timers.c ../ECE118_library/src/IO_Ports.c ../ECE118_library/src/LED.c ../ECE118_library/src/RC_Servo.c ../ECE118_library/src/pwm.c ../ECE118_library/src/serial.c ../ECE118_library/src/timers.c "../ECE118_library/component libraries/motors.c" "../ECE118_library/component libraries/MotorEncoderService.c" "../ECE118_library/component libraries/RCServoService.c" "../ECE118_library/component libraries/SensorEventChecker.c" ES_Main.c TopLevelHSM.c DetectBeaconSubHSM.c NavigateToTowerSubHSM.c AlignAndLaunchSubHSM.c RobotMovementService.c GetBackOnCourseFSM.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/627994287/AD.o ${OBJECTDIR}/_ext/627994287/BOARD.o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ${OBJECTDIR}/_ext/627994287/LED.o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ${OBJECTDIR}/_ext/627994287/pwm.o ${OBJECTDIR}/_ext/627994287/serial.o ${OBJECTDIR}/_ext/627994287/timers.o ${OBJECTDIR}/_ext/1612843869/motors.o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o ${OBJECTDIR}/_ext/1612843869/RCServoService.o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o ${OBJECTDIR}/ES_Main.o ${OBJECTDIR}/TopLevelHSM.o ${OBJECTDIR}/DetectBeaconSubHSM.o ${OBJECTDIR}/NavigateToTowerSubHSM.o ${OBJECTDIR}/AlignAndLaunchSubHSM.o ${OBJECTDIR}/RobotMovementService.o ${OBJECTDIR}/GetBackOnCourseFSM.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/627994287/AD.o.d ${OBJECTDIR}/_ext/627994287/BOARD.o.d ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d ${OBJECTDIR}/_ext/627994287/LED.o.d ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d ${OBJECTDIR}/_ext/627994287/pwm.o.d ${OBJECTDIR}/_ext/627994287/serial.o.d ${OBJECTDIR}/_ext/627994287/timers.o.d ${OBJECTDIR}/_ext/1612843869/motors.o.d ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d ${OBJECTDIR}/_ext/1612843869/RCServoService.o.d ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d ${OBJECTDIR}/ES_Main.o.d ${OBJECTDIR}/TopLevelHSM.o.d ${OBJECTDIR}/DetectBeaconSubHSM.o.d ${OBJECTDIR}/NavigateToTowerSubHSM.o.d ${OBJECTDIR}/AlignAndLaunchSubHSM.o.d ${OBJECTDIR}/RobotMovementService.o.d ${OBJECTDIR}/GetBackOnCourseFSM.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/627994287/AD.o ${OBJECTDIR}/_ext/627994287/BOARD.o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ${OBJECTDIR}/_ext/627994287/LED.o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ${OBJECTDIR}/_ext/627994287/pwm.o ${OBJECTDIR}/_ext/627994287/serial.o ${OBJECTDIR}/_ext/627994287/timers.o ${OBJECTDIR}/_ext/1612843869/motors.o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o ${OBJECTDIR}/_ext/1612843869/RCServoService.o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o ${OBJECTDIR}/ES_Main.o ${OBJECTDIR}/TopLevelHSM.o ${OBJECTDIR}/DetectBeaconSubHSM.o ${OBJECTDIR}/NavigateToTowerSubHSM.o ${OBJECTDIR}/AlignAndLaunchSubHSM.o ${OBJECTDIR}/RobotMovementService.o ${OBJECTDIR}/GetBackOnCourseFSM.o

# Source Files
SOURCEFILES=../ECE118_library/src/AD.c ../ECE118_library/src/BOARD.c ../ECE118_library/src/ES_CheckEvents.c ../ECE118_library/src/ES_Framework.c ../ECE118_library/src/ES_KeyboardInput.c ../ECE118_library/src/ES_PostList.c ../ECE118_library/src/ES_Queue.c ../ECE118_library/src/ES_TattleTale.c ../ECE118_library/src/ES_Timers.c ../ECE118_library/src/IO_Ports.c ../ECE118_library/src/LED.c ../ECE118_library/src/RC_Servo.c ../ECE118_library/src/pwm.c ../ECE118_library/src/serial.c ../ECE118_library/src/timers.c ../ECE118_library/component libraries/motors.c ../ECE118_library/component libraries/MotorEncoderService.c ../ECE118_library/component libraries/RCServoService.c ../ECE118_library/component libraries/SensorEventChecker.c ES_Main.c TopLevelHSM.c DetectBeaconSubHSM.c NavigateToTowerSubHSM.c AlignAndLaunchSubHSM.c RobotMovementService.c GetBackOnCourseFSM.c



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
${OBJECTDIR}/_ext/627994287/AD.o: ../ECE118_library/src/AD.c  .generated_files/flags/default/e419e57f2bca4f9710b9a7646b395e22ec4fa2b8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/AD.o.d" -o ${OBJECTDIR}/_ext/627994287/AD.o ../ECE118_library/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/BOARD.o: ../ECE118_library/src/BOARD.c  .generated_files/flags/default/c07604d46548103567e69b2a5ab04d06e990c38 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/BOARD.o.d" -o ${OBJECTDIR}/_ext/627994287/BOARD.o ../ECE118_library/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o: ../ECE118_library/src/ES_CheckEvents.c  .generated_files/flags/default/40a7b58f0c51ecc15f4de45bbcae7aa9847e591c .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ../ECE118_library/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Framework.o: ../ECE118_library/src/ES_Framework.c  .generated_files/flags/default/7018d425fad5adf45f46e2f83ef82c04ec8016be .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ../ECE118_library/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o: ../ECE118_library/src/ES_KeyboardInput.c  .generated_files/flags/default/25f1050fde99a53c6383474d9396a3eedc6987aa .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ../ECE118_library/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_PostList.o: ../ECE118_library/src/ES_PostList.c  .generated_files/flags/default/75e381d069cd97aead362e88216166aaac58da7a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ../ECE118_library/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Queue.o: ../ECE118_library/src/ES_Queue.c  .generated_files/flags/default/d3cfa2c0e28728ec6ba905d129bfa95dd85ef0fa .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ../ECE118_library/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_TattleTale.o: ../ECE118_library/src/ES_TattleTale.c  .generated_files/flags/default/b7d39c854bd97dfdb7fc5fa9d2acab19281dbbf1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ../ECE118_library/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Timers.o: ../ECE118_library/src/ES_Timers.c  .generated_files/flags/default/28e7d4ff0ffa0dc1b61a6babbf71e4c3a420421b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ../ECE118_library/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/IO_Ports.o: ../ECE118_library/src/IO_Ports.c  .generated_files/flags/default/627b25a6eee93fdcf9935ae210bfce5b19f7653a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ../ECE118_library/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/LED.o: ../ECE118_library/src/LED.c  .generated_files/flags/default/d2296f988697c916ee0453dd060d15834010be03 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/LED.o.d" -o ${OBJECTDIR}/_ext/627994287/LED.o ../ECE118_library/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/RC_Servo.o: ../ECE118_library/src/RC_Servo.c  .generated_files/flags/default/79229d309bf877ab72897cebe9ae90c0346e94c5 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ../ECE118_library/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/pwm.o: ../ECE118_library/src/pwm.c  .generated_files/flags/default/13da7806fcb3d22639a8dd9b0ed9820fdf120b82 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/pwm.o.d" -o ${OBJECTDIR}/_ext/627994287/pwm.o ../ECE118_library/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/serial.o: ../ECE118_library/src/serial.c  .generated_files/flags/default/b4e52924c25be5a1f831ce05bcca61290ab1569b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/serial.o.d" -o ${OBJECTDIR}/_ext/627994287/serial.o ../ECE118_library/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/timers.o: ../ECE118_library/src/timers.c  .generated_files/flags/default/8c6624f60b91a9e2b97752c840f11ec04f9abb75 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/timers.o.d" -o ${OBJECTDIR}/_ext/627994287/timers.o ../ECE118_library/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/motors.o: ../ECE118_library/component\ libraries/motors.c  .generated_files/flags/default/14700d8ec18444f0768f23548e2aab8bd3680b10 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/motors.o.d" -o ${OBJECTDIR}/_ext/1612843869/motors.o "../ECE118_library/component libraries/motors.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o: ../ECE118_library/component\ libraries/MotorEncoderService.c  .generated_files/flags/default/798c0acf6de49d8159ff01ad6d054ff72a005cca .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d" -o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o "../ECE118_library/component libraries/MotorEncoderService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/RCServoService.o: ../ECE118_library/component\ libraries/RCServoService.c  .generated_files/flags/default/c8f3a6a355309e94e8edd3f7d2925699d654b531 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/RCServoService.o.d" -o ${OBJECTDIR}/_ext/1612843869/RCServoService.o "../ECE118_library/component libraries/RCServoService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o: ../ECE118_library/component\ libraries/SensorEventChecker.c  .generated_files/flags/default/81b8dade2193a8bc71870b44cf12dcc7462d8bf1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d" -o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o "../ECE118_library/component libraries/SensorEventChecker.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Main.o: ES_Main.c  .generated_files/flags/default/3f1baf634ee9a456be3d6069f5b1e463966703cf .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Main.o.d 
	@${RM} ${OBJECTDIR}/ES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/ES_Main.o.d" -o ${OBJECTDIR}/ES_Main.o ES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TopLevelHSM.o: TopLevelHSM.c  .generated_files/flags/default/60ef2940fadc582ded01b10b6232de426c27cf41 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o.d 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/TopLevelHSM.o.d" -o ${OBJECTDIR}/TopLevelHSM.o TopLevelHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/DetectBeaconSubHSM.o: DetectBeaconSubHSM.c  .generated_files/flags/default/be94a87bf4fbb8a906b7381d9592e650a8e22211 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o.d 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/DetectBeaconSubHSM.o.d" -o ${OBJECTDIR}/DetectBeaconSubHSM.o DetectBeaconSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/NavigateToTowerSubHSM.o: NavigateToTowerSubHSM.c  .generated_files/flags/default/b41694afa8e4d8d4f19754f676383d47d6039fc0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o.d 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/NavigateToTowerSubHSM.o.d" -o ${OBJECTDIR}/NavigateToTowerSubHSM.o NavigateToTowerSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/AlignAndLaunchSubHSM.o: AlignAndLaunchSubHSM.c  .generated_files/flags/default/e928f1cdc442d195861cd4b34db7a8b6346c2f6 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o.d 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/AlignAndLaunchSubHSM.o.d" -o ${OBJECTDIR}/AlignAndLaunchSubHSM.o AlignAndLaunchSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RobotMovementService.o: RobotMovementService.c  .generated_files/flags/default/1c9def38bc043bbb163b9f7b48f88de4bd9690e6 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RobotMovementService.o.d 
	@${RM} ${OBJECTDIR}/RobotMovementService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/RobotMovementService.o.d" -o ${OBJECTDIR}/RobotMovementService.o RobotMovementService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/GetBackOnCourseFSM.o: GetBackOnCourseFSM.c  .generated_files/flags/default/8e39a6defc46e6f3f78ea718be1ddb4636f332ff .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GetBackOnCourseFSM.o.d 
	@${RM} ${OBJECTDIR}/GetBackOnCourseFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/GetBackOnCourseFSM.o.d" -o ${OBJECTDIR}/GetBackOnCourseFSM.o GetBackOnCourseFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/627994287/AD.o: ../ECE118_library/src/AD.c  .generated_files/flags/default/9b45c3e8a3b919761e3dd0a582e8c96ad414ba79 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/AD.o.d" -o ${OBJECTDIR}/_ext/627994287/AD.o ../ECE118_library/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/BOARD.o: ../ECE118_library/src/BOARD.c  .generated_files/flags/default/9d4d7cf9bd4dff0cf6f4e52abb1a5cbc5536f35f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/BOARD.o.d" -o ${OBJECTDIR}/_ext/627994287/BOARD.o ../ECE118_library/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o: ../ECE118_library/src/ES_CheckEvents.c  .generated_files/flags/default/da6f1fad5fcc5b10b48d90823f96046d5804682e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_CheckEvents.o ../ECE118_library/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Framework.o: ../ECE118_library/src/ES_Framework.c  .generated_files/flags/default/7b72593c842aee5e9e13b1992cfb4aff4c73c432 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Framework.o ../ECE118_library/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o: ../ECE118_library/src/ES_KeyboardInput.c  .generated_files/flags/default/31a283b412af87df5b4d6486873f128aa55cc36f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_KeyboardInput.o ../ECE118_library/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_PostList.o: ../ECE118_library/src/ES_PostList.c  .generated_files/flags/default/8428fe163add9076d25d7bec0e070e7bc089d047 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_PostList.o ../ECE118_library/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Queue.o: ../ECE118_library/src/ES_Queue.c  .generated_files/flags/default/ac448935527a9f9f4c5555fa85cfedf0283d01ad .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Queue.o ../ECE118_library/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_TattleTale.o: ../ECE118_library/src/ES_TattleTale.c  .generated_files/flags/default/1de8a408af50f6008067b4393bae1961e30b669b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_TattleTale.o ../ECE118_library/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/ES_Timers.o: ../ECE118_library/src/ES_Timers.c  .generated_files/flags/default/670884978fbc1226e9a4613231308446ed179a2d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/627994287/ES_Timers.o ../ECE118_library/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/IO_Ports.o: ../ECE118_library/src/IO_Ports.c  .generated_files/flags/default/e9de96e1305affc4093bae064e2d871142509f63 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/627994287/IO_Ports.o ../ECE118_library/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/LED.o: ../ECE118_library/src/LED.c  .generated_files/flags/default/d5c561970e67f56d3b6639ab23aad4a000e8a1e1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/LED.o.d" -o ${OBJECTDIR}/_ext/627994287/LED.o ../ECE118_library/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/RC_Servo.o: ../ECE118_library/src/RC_Servo.c  .generated_files/flags/default/b99497bb6340bf97faf169df6d9a62bd42079bee .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/627994287/RC_Servo.o ../ECE118_library/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/pwm.o: ../ECE118_library/src/pwm.c  .generated_files/flags/default/9f3ef05a53ab6955a4f9cacf4d0c406b6b89fec8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/pwm.o.d" -o ${OBJECTDIR}/_ext/627994287/pwm.o ../ECE118_library/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/serial.o: ../ECE118_library/src/serial.c  .generated_files/flags/default/7f7ecab75df167de305412ff00318a58b9c4abc3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/serial.o.d" -o ${OBJECTDIR}/_ext/627994287/serial.o ../ECE118_library/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/627994287/timers.o: ../ECE118_library/src/timers.c  .generated_files/flags/default/fb97fd7d4e31b5b82794d60ed9e7617e6f829ce4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/627994287" 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/627994287/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/627994287/timers.o.d" -o ${OBJECTDIR}/_ext/627994287/timers.o ../ECE118_library/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/motors.o: ../ECE118_library/component\ libraries/motors.c  .generated_files/flags/default/2ebdabcd5b806eaf30ca4c221350b528482fb7e0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/motors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/motors.o.d" -o ${OBJECTDIR}/_ext/1612843869/motors.o "../ECE118_library/component libraries/motors.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o: ../ECE118_library/component\ libraries/MotorEncoderService.c  .generated_files/flags/default/9a539b6dd4945be8f88867da51b8ea7452c8e275 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o.d" -o ${OBJECTDIR}/_ext/1612843869/MotorEncoderService.o "../ECE118_library/component libraries/MotorEncoderService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/RCServoService.o: ../ECE118_library/component\ libraries/RCServoService.c  .generated_files/flags/default/ff5a3a39643ac1b1d9629e1cc1e8201f8e2c881f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/RCServoService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/RCServoService.o.d" -o ${OBJECTDIR}/_ext/1612843869/RCServoService.o "../ECE118_library/component libraries/RCServoService.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o: ../ECE118_library/component\ libraries/SensorEventChecker.c  .generated_files/flags/default/f3a79278d4586039ddd7124768f03fd80a570465 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1612843869" 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o.d" -o ${OBJECTDIR}/_ext/1612843869/SensorEventChecker.o "../ECE118_library/component libraries/SensorEventChecker.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Main.o: ES_Main.c  .generated_files/flags/default/222cee459182bd4ee16b93e8fe289bbbb3559dc7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Main.o.d 
	@${RM} ${OBJECTDIR}/ES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/ES_Main.o.d" -o ${OBJECTDIR}/ES_Main.o ES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TopLevelHSM.o: TopLevelHSM.c  .generated_files/flags/default/63bfb82a64baf0b64cbb6c9f84ffe42387d3d862 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o.d 
	@${RM} ${OBJECTDIR}/TopLevelHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/TopLevelHSM.o.d" -o ${OBJECTDIR}/TopLevelHSM.o TopLevelHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/DetectBeaconSubHSM.o: DetectBeaconSubHSM.c  .generated_files/flags/default/a42d72f6483b6a49544e4f79839f44d7648dfd08 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o.d 
	@${RM} ${OBJECTDIR}/DetectBeaconSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/DetectBeaconSubHSM.o.d" -o ${OBJECTDIR}/DetectBeaconSubHSM.o DetectBeaconSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/NavigateToTowerSubHSM.o: NavigateToTowerSubHSM.c  .generated_files/flags/default/eb6cfd823048183c2232b7eec64a7c96deca6eff .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o.d 
	@${RM} ${OBJECTDIR}/NavigateToTowerSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/NavigateToTowerSubHSM.o.d" -o ${OBJECTDIR}/NavigateToTowerSubHSM.o NavigateToTowerSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/AlignAndLaunchSubHSM.o: AlignAndLaunchSubHSM.c  .generated_files/flags/default/48e93b4071ccefc09c75e67faec70785fff66230 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o.d 
	@${RM} ${OBJECTDIR}/AlignAndLaunchSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/AlignAndLaunchSubHSM.o.d" -o ${OBJECTDIR}/AlignAndLaunchSubHSM.o AlignAndLaunchSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RobotMovementService.o: RobotMovementService.c  .generated_files/flags/default/d48cc054df30dbae489294e3791ed354e090f5a0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RobotMovementService.o.d 
	@${RM} ${OBJECTDIR}/RobotMovementService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/RobotMovementService.o.d" -o ${OBJECTDIR}/RobotMovementService.o RobotMovementService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/GetBackOnCourseFSM.o: GetBackOnCourseFSM.c  .generated_files/flags/default/cde1f2e30b2e90df72744c2a4a022ee833853ba4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GetBackOnCourseFSM.o.d 
	@${RM} ${OBJECTDIR}/GetBackOnCourseFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DRC_SERVO_INTEGRATION_TEST -DGENERAL_TESTING -I"." -I"../ECE118_library/component libraries" -I"../ECE118_library/include" -I"../ECE118_library/src" -MP -MMD -MF "${OBJECTDIR}/GetBackOnCourseFSM.o.d" -o ${OBJECTDIR}/GetBackOnCourseFSM.o GetBackOnCourseFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
