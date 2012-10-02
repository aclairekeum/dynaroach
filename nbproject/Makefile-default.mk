#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/dynaroach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/dynaroach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/921515994/larray.o ${OBJECTDIR}/_ext/921515994/spi_controller.o ${OBJECTDIR}/_ext/921515994/stopwatch.o ${OBJECTDIR}/_ext/921515994/payload.o ${OBJECTDIR}/_ext/921515994/xl.o ${OBJECTDIR}/_ext/921515994/queue.o ${OBJECTDIR}/_ext/921515994/lcd.o ${OBJECTDIR}/_ext/921515994/ipspi1.o ${OBJECTDIR}/_ext/921515994/libqw.o ${OBJECTDIR}/_ext/921515994/at86rf231_driver.o ${OBJECTDIR}/_ext/921515994/counter.o ${OBJECTDIR}/_ext/921515994/packet_queue.o ${OBJECTDIR}/_ext/921515994/gyro.o ${OBJECTDIR}/_ext/921515994/carray.o ${OBJECTDIR}/_ext/921515994/init_default.o ${OBJECTDIR}/_ext/921515994/ppool.o ${OBJECTDIR}/_ext/921515994/radio.o ${OBJECTDIR}/_ext/921515994/bams.o ${OBJECTDIR}/_ext/921515994/mac_packet.o ${OBJECTDIR}/_ext/921515994/battery.o ${OBJECTDIR}/_ext/921515994/sclock.o ${OBJECTDIR}/_ext/921515994/wii.o ${OBJECTDIR}/_ext/921515994/dfilter.o ${OBJECTDIR}/_ext/921515994/payload_queue.o ${OBJECTDIR}/_ext/921515994/quat.o ${OBJECTDIR}/_ext/921515994/dfmem.o ${OBJECTDIR}/_ext/921515994/delay.o ${OBJECTDIR}/_ext/921515994/div16.o ${OBJECTDIR}/_ext/921515994/udiv16.o ${OBJECTDIR}/src/attitude_q.o ${OBJECTDIR}/src/trial.o ${OBJECTDIR}/src/sma.o ${OBJECTDIR}/src/cmd.o ${OBJECTDIR}/src/network.o ${OBJECTDIR}/src/motor_ctrl.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/statetransition.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/921515994/larray.o.d ${OBJECTDIR}/_ext/921515994/spi_controller.o.d ${OBJECTDIR}/_ext/921515994/stopwatch.o.d ${OBJECTDIR}/_ext/921515994/payload.o.d ${OBJECTDIR}/_ext/921515994/xl.o.d ${OBJECTDIR}/_ext/921515994/queue.o.d ${OBJECTDIR}/_ext/921515994/lcd.o.d ${OBJECTDIR}/_ext/921515994/ipspi1.o.d ${OBJECTDIR}/_ext/921515994/libqw.o.d ${OBJECTDIR}/_ext/921515994/at86rf231_driver.o.d ${OBJECTDIR}/_ext/921515994/counter.o.d ${OBJECTDIR}/_ext/921515994/packet_queue.o.d ${OBJECTDIR}/_ext/921515994/gyro.o.d ${OBJECTDIR}/_ext/921515994/carray.o.d ${OBJECTDIR}/_ext/921515994/init_default.o.d ${OBJECTDIR}/_ext/921515994/ppool.o.d ${OBJECTDIR}/_ext/921515994/radio.o.d ${OBJECTDIR}/_ext/921515994/bams.o.d ${OBJECTDIR}/_ext/921515994/mac_packet.o.d ${OBJECTDIR}/_ext/921515994/battery.o.d ${OBJECTDIR}/_ext/921515994/sclock.o.d ${OBJECTDIR}/_ext/921515994/wii.o.d ${OBJECTDIR}/_ext/921515994/dfilter.o.d ${OBJECTDIR}/_ext/921515994/payload_queue.o.d ${OBJECTDIR}/_ext/921515994/quat.o.d ${OBJECTDIR}/_ext/921515994/dfmem.o.d ${OBJECTDIR}/_ext/921515994/delay.o.d ${OBJECTDIR}/_ext/921515994/div16.o.d ${OBJECTDIR}/_ext/921515994/udiv16.o.d ${OBJECTDIR}/src/attitude_q.o.d ${OBJECTDIR}/src/trial.o.d ${OBJECTDIR}/src/sma.o.d ${OBJECTDIR}/src/cmd.o.d ${OBJECTDIR}/src/network.o.d ${OBJECTDIR}/src/motor_ctrl.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/statetransition.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/921515994/larray.o ${OBJECTDIR}/_ext/921515994/spi_controller.o ${OBJECTDIR}/_ext/921515994/stopwatch.o ${OBJECTDIR}/_ext/921515994/payload.o ${OBJECTDIR}/_ext/921515994/xl.o ${OBJECTDIR}/_ext/921515994/queue.o ${OBJECTDIR}/_ext/921515994/lcd.o ${OBJECTDIR}/_ext/921515994/ipspi1.o ${OBJECTDIR}/_ext/921515994/libqw.o ${OBJECTDIR}/_ext/921515994/at86rf231_driver.o ${OBJECTDIR}/_ext/921515994/counter.o ${OBJECTDIR}/_ext/921515994/packet_queue.o ${OBJECTDIR}/_ext/921515994/gyro.o ${OBJECTDIR}/_ext/921515994/carray.o ${OBJECTDIR}/_ext/921515994/init_default.o ${OBJECTDIR}/_ext/921515994/ppool.o ${OBJECTDIR}/_ext/921515994/radio.o ${OBJECTDIR}/_ext/921515994/bams.o ${OBJECTDIR}/_ext/921515994/mac_packet.o ${OBJECTDIR}/_ext/921515994/battery.o ${OBJECTDIR}/_ext/921515994/sclock.o ${OBJECTDIR}/_ext/921515994/wii.o ${OBJECTDIR}/_ext/921515994/dfilter.o ${OBJECTDIR}/_ext/921515994/payload_queue.o ${OBJECTDIR}/_ext/921515994/quat.o ${OBJECTDIR}/_ext/921515994/dfmem.o ${OBJECTDIR}/_ext/921515994/delay.o ${OBJECTDIR}/_ext/921515994/div16.o ${OBJECTDIR}/_ext/921515994/udiv16.o ${OBJECTDIR}/src/attitude_q.o ${OBJECTDIR}/src/trial.o ${OBJECTDIR}/src/sma.o ${OBJECTDIR}/src/cmd.o ${OBJECTDIR}/src/network.o ${OBJECTDIR}/src/motor_ctrl.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/statetransition.o


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/dynaroach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ128MC706A
MP_LINKER_FILE_OPTION=,--script="p33FJ128MC706A_Bootload.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/921515994/larray.o: ../imageproc-lib/larray.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/larray.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/larray.c  -o ${OBJECTDIR}/_ext/921515994/larray.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/larray.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/larray.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/spi_controller.o: ../imageproc-lib/spi_controller.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/spi_controller.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/spi_controller.c  -o ${OBJECTDIR}/_ext/921515994/spi_controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/spi_controller.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/spi_controller.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/stopwatch.o: ../imageproc-lib/stopwatch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/stopwatch.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/stopwatch.c  -o ${OBJECTDIR}/_ext/921515994/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/stopwatch.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/stopwatch.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/payload.o: ../imageproc-lib/payload.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/payload.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/payload.c  -o ${OBJECTDIR}/_ext/921515994/payload.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/payload.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/payload.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/xl.o: ../imageproc-lib/xl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/xl.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/xl.c  -o ${OBJECTDIR}/_ext/921515994/xl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/xl.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/xl.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/queue.o: ../imageproc-lib/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/queue.c  -o ${OBJECTDIR}/_ext/921515994/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/queue.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/lcd.o: ../imageproc-lib/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/lcd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/lcd.c  -o ${OBJECTDIR}/_ext/921515994/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/lcd.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/ipspi1.o: ../imageproc-lib/ipspi1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/ipspi1.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/ipspi1.c  -o ${OBJECTDIR}/_ext/921515994/ipspi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/ipspi1.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/ipspi1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/libqw.o: ../imageproc-lib/libqw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/libqw.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/libqw.c  -o ${OBJECTDIR}/_ext/921515994/libqw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/libqw.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/libqw.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/at86rf231_driver.o: ../imageproc-lib/at86rf231_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/at86rf231_driver.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/at86rf231_driver.c  -o ${OBJECTDIR}/_ext/921515994/at86rf231_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/at86rf231_driver.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/at86rf231_driver.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/counter.o: ../imageproc-lib/counter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/counter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/counter.c  -o ${OBJECTDIR}/_ext/921515994/counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/counter.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/counter.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/packet_queue.o: ../imageproc-lib/packet_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/packet_queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/packet_queue.c  -o ${OBJECTDIR}/_ext/921515994/packet_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/packet_queue.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/packet_queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/gyro.o: ../imageproc-lib/gyro.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/gyro.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/gyro.c  -o ${OBJECTDIR}/_ext/921515994/gyro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/gyro.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/gyro.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/carray.o: ../imageproc-lib/carray.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/carray.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/carray.c  -o ${OBJECTDIR}/_ext/921515994/carray.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/carray.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/carray.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/init_default.o: ../imageproc-lib/init_default.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/init_default.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/init_default.c  -o ${OBJECTDIR}/_ext/921515994/init_default.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/init_default.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/init_default.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/ppool.o: ../imageproc-lib/ppool.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/ppool.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/ppool.c  -o ${OBJECTDIR}/_ext/921515994/ppool.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/ppool.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/ppool.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/radio.o: ../imageproc-lib/radio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/radio.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/radio.c  -o ${OBJECTDIR}/_ext/921515994/radio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/radio.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/radio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/bams.o: ../imageproc-lib/bams.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/bams.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/bams.c  -o ${OBJECTDIR}/_ext/921515994/bams.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/bams.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/bams.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/mac_packet.o: ../imageproc-lib/mac_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/mac_packet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/mac_packet.c  -o ${OBJECTDIR}/_ext/921515994/mac_packet.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/mac_packet.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/mac_packet.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/battery.o: ../imageproc-lib/battery.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/battery.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/battery.c  -o ${OBJECTDIR}/_ext/921515994/battery.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/battery.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/battery.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/sclock.o: ../imageproc-lib/sclock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/sclock.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/sclock.c  -o ${OBJECTDIR}/_ext/921515994/sclock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/sclock.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/sclock.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/wii.o: ../imageproc-lib/wii.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/wii.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/wii.c  -o ${OBJECTDIR}/_ext/921515994/wii.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/wii.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/wii.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/dfilter.o: ../imageproc-lib/dfilter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/dfilter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/dfilter.c  -o ${OBJECTDIR}/_ext/921515994/dfilter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/dfilter.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/dfilter.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/payload_queue.o: ../imageproc-lib/payload_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/payload_queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/payload_queue.c  -o ${OBJECTDIR}/_ext/921515994/payload_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/payload_queue.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/payload_queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/quat.o: ../imageproc-lib/quat.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/quat.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/quat.c  -o ${OBJECTDIR}/_ext/921515994/quat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/quat.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/quat.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/dfmem.o: ../imageproc-lib/dfmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/dfmem.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/dfmem.c  -o ${OBJECTDIR}/_ext/921515994/dfmem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/dfmem.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/dfmem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/attitude_q.o: src/attitude_q.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/attitude_q.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/attitude_q.c  -o ${OBJECTDIR}/src/attitude_q.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/attitude_q.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/attitude_q.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/trial.o: src/trial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/trial.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/trial.c  -o ${OBJECTDIR}/src/trial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/trial.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/trial.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/sma.o: src/sma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/sma.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/sma.c  -o ${OBJECTDIR}/src/sma.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/sma.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/sma.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/cmd.o: src/cmd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/cmd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/cmd.c  -o ${OBJECTDIR}/src/cmd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/cmd.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/cmd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/network.o: src/network.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/network.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/network.c  -o ${OBJECTDIR}/src/network.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/network.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/network.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/motor_ctrl.o: src/motor_ctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/motor_ctrl.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/motor_ctrl.c  -o ${OBJECTDIR}/src/motor_ctrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/motor_ctrl.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/motor_ctrl.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/main.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/statetransition.o: src/statetransition.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/statetransition.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/statetransition.c  -o ${OBJECTDIR}/src/statetransition.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/statetransition.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/statetransition.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/921515994/larray.o: ../imageproc-lib/larray.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/larray.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/larray.c  -o ${OBJECTDIR}/_ext/921515994/larray.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/larray.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/larray.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/spi_controller.o: ../imageproc-lib/spi_controller.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/spi_controller.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/spi_controller.c  -o ${OBJECTDIR}/_ext/921515994/spi_controller.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/spi_controller.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/spi_controller.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/stopwatch.o: ../imageproc-lib/stopwatch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/stopwatch.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/stopwatch.c  -o ${OBJECTDIR}/_ext/921515994/stopwatch.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/stopwatch.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/stopwatch.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/payload.o: ../imageproc-lib/payload.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/payload.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/payload.c  -o ${OBJECTDIR}/_ext/921515994/payload.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/payload.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/payload.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/xl.o: ../imageproc-lib/xl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/xl.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/xl.c  -o ${OBJECTDIR}/_ext/921515994/xl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/xl.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/xl.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/queue.o: ../imageproc-lib/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/queue.c  -o ${OBJECTDIR}/_ext/921515994/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/queue.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/lcd.o: ../imageproc-lib/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/lcd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/lcd.c  -o ${OBJECTDIR}/_ext/921515994/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/lcd.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/ipspi1.o: ../imageproc-lib/ipspi1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/ipspi1.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/ipspi1.c  -o ${OBJECTDIR}/_ext/921515994/ipspi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/ipspi1.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/ipspi1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/libqw.o: ../imageproc-lib/libqw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/libqw.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/libqw.c  -o ${OBJECTDIR}/_ext/921515994/libqw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/libqw.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/libqw.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/at86rf231_driver.o: ../imageproc-lib/at86rf231_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/at86rf231_driver.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/at86rf231_driver.c  -o ${OBJECTDIR}/_ext/921515994/at86rf231_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/at86rf231_driver.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/at86rf231_driver.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/counter.o: ../imageproc-lib/counter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/counter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/counter.c  -o ${OBJECTDIR}/_ext/921515994/counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/counter.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/counter.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/packet_queue.o: ../imageproc-lib/packet_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/packet_queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/packet_queue.c  -o ${OBJECTDIR}/_ext/921515994/packet_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/packet_queue.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/packet_queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/gyro.o: ../imageproc-lib/gyro.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/gyro.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/gyro.c  -o ${OBJECTDIR}/_ext/921515994/gyro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/gyro.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/gyro.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/carray.o: ../imageproc-lib/carray.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/carray.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/carray.c  -o ${OBJECTDIR}/_ext/921515994/carray.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/carray.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/carray.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/init_default.o: ../imageproc-lib/init_default.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/init_default.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/init_default.c  -o ${OBJECTDIR}/_ext/921515994/init_default.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/init_default.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/init_default.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/ppool.o: ../imageproc-lib/ppool.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/ppool.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/ppool.c  -o ${OBJECTDIR}/_ext/921515994/ppool.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/ppool.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/ppool.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/radio.o: ../imageproc-lib/radio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/radio.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/radio.c  -o ${OBJECTDIR}/_ext/921515994/radio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/radio.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/radio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/bams.o: ../imageproc-lib/bams.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/bams.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/bams.c  -o ${OBJECTDIR}/_ext/921515994/bams.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/bams.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/bams.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/mac_packet.o: ../imageproc-lib/mac_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/mac_packet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/mac_packet.c  -o ${OBJECTDIR}/_ext/921515994/mac_packet.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/mac_packet.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/mac_packet.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/battery.o: ../imageproc-lib/battery.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/battery.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/battery.c  -o ${OBJECTDIR}/_ext/921515994/battery.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/battery.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/battery.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/sclock.o: ../imageproc-lib/sclock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/sclock.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/sclock.c  -o ${OBJECTDIR}/_ext/921515994/sclock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/sclock.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/sclock.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/wii.o: ../imageproc-lib/wii.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/wii.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/wii.c  -o ${OBJECTDIR}/_ext/921515994/wii.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/wii.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/wii.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/dfilter.o: ../imageproc-lib/dfilter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/dfilter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/dfilter.c  -o ${OBJECTDIR}/_ext/921515994/dfilter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/dfilter.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/dfilter.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/payload_queue.o: ../imageproc-lib/payload_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/payload_queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/payload_queue.c  -o ${OBJECTDIR}/_ext/921515994/payload_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/payload_queue.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/payload_queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/quat.o: ../imageproc-lib/quat.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/quat.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/quat.c  -o ${OBJECTDIR}/_ext/921515994/quat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/quat.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/quat.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/921515994/dfmem.o: ../imageproc-lib/dfmem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/dfmem.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../imageproc-lib/dfmem.c  -o ${OBJECTDIR}/_ext/921515994/dfmem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/921515994/dfmem.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/dfmem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/attitude_q.o: src/attitude_q.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/attitude_q.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/attitude_q.c  -o ${OBJECTDIR}/src/attitude_q.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/attitude_q.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/attitude_q.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/trial.o: src/trial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/trial.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/trial.c  -o ${OBJECTDIR}/src/trial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/trial.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/trial.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/sma.o: src/sma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/sma.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/sma.c  -o ${OBJECTDIR}/src/sma.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/sma.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/sma.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/cmd.o: src/cmd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/cmd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/cmd.c  -o ${OBJECTDIR}/src/cmd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/cmd.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/cmd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/network.o: src/network.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/network.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/network.c  -o ${OBJECTDIR}/src/network.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/network.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/network.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/motor_ctrl.o: src/motor_ctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/motor_ctrl.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/motor_ctrl.c  -o ${OBJECTDIR}/src/motor_ctrl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/motor_ctrl.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/motor_ctrl.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/main.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/statetransition.o: src/statetransition.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/statetransition.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/statetransition.c  -o ${OBJECTDIR}/src/statetransition.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/statetransition.o.d"        -g -omf=elf -O0 -I"src" -I"../imageproc-lib" -D__IMAGEPROC2 -D__BOOTLOAD -D__DFMEM_8_MBIT -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/src/statetransition.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/921515994/delay.o: ../imageproc-lib/delay.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/delay.o.d 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../imageproc-lib/delay.s  -o ${OBJECTDIR}/_ext/921515994/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -Wa,-MD,"${OBJECTDIR}/_ext/921515994/delay.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/delay.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/921515994/div16.o: ../imageproc-lib/div16.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/div16.o.d 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../imageproc-lib/div16.s  -o ${OBJECTDIR}/_ext/921515994/div16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -Wa,-MD,"${OBJECTDIR}/_ext/921515994/div16.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/div16.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/921515994/udiv16.o: ../imageproc-lib/udiv16.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/udiv16.o.d 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../imageproc-lib/udiv16.s  -o ${OBJECTDIR}/_ext/921515994/udiv16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -Wa,-MD,"${OBJECTDIR}/_ext/921515994/udiv16.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/udiv16.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/921515994/delay.o: ../imageproc-lib/delay.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/delay.o.d 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../imageproc-lib/delay.s  -o ${OBJECTDIR}/_ext/921515994/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -Wa,-MD,"${OBJECTDIR}/_ext/921515994/delay.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/delay.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/921515994/div16.o: ../imageproc-lib/div16.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/div16.o.d 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../imageproc-lib/div16.s  -o ${OBJECTDIR}/_ext/921515994/div16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -Wa,-MD,"${OBJECTDIR}/_ext/921515994/div16.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/div16.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/921515994/udiv16.o: ../imageproc-lib/udiv16.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/921515994 
	@${RM} ${OBJECTDIR}/_ext/921515994/udiv16.o.d 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../imageproc-lib/udiv16.s  -o ${OBJECTDIR}/_ext/921515994/udiv16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -Wa,-MD,"${OBJECTDIR}/_ext/921515994/udiv16.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/921515994/udiv16.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/dynaroach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  /opt/microchip/xc16/v1.10/lib/libdsp-elf.a /opt/microchip/xc16/v1.10/lib/libq-elf.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/dynaroach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    /opt/microchip/xc16/v1.10/lib/libdsp-elf.a /opt/microchip/xc16/v1.10/lib/libq-elf.a  -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--heap=8192,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/dynaroach.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  /opt/microchip/xc16/v1.10/lib/libdsp-elf.a /opt/microchip/xc16/v1.10/lib/libq-elf.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/dynaroach.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    /opt/microchip/xc16/v1.10/lib/libdsp-elf.a /opt/microchip/xc16/v1.10/lib/libq-elf.a  -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=8192,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/dynaroach.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf 
	
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

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
