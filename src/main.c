/*********************************************************************************************************
* Name: main.c
* Desc: This is a program for controlling the dynaRoACH robot. Motor commands
* for the primary power motor as well as the SMA leg actuators can be issued
* from a laptop and handled here. Sensory data is written to flash memory for
* dumping over the wireless link after a run.
*
* The architecture is based on a function pointer queue scheduling model. The
* meat of the control logic resides in test.c. If the radio has received a
* command packet during the previous timer interval for Timer2, the appropriate
* function pointer is added to a queue in the interrupt service routine for
* Timer2 (interrupts.c). The main loop simply pops the function pointer off
* the top of the queue and executes it.
*
* Date: 2011-04-13
* Author: AMH
*********************************************************************************************************/
#include "p33Fxxxx.h"
#include "init_default.h"
#include "timer.h"
#include "adc.h"
#include "i2c.h"
#include "consts.h"
#include "utils.h"
#include "radio.h"
#include "gyro.h"
#include "xl.h"
#include "dfmem.h"
#include "cmd.h"
#include "motor_ctrl.h"
#include "attitude_q.h"
#include "sma.h"
#include "network.h"
#include "sclock.h"
#include "ppool.h"
#include "spi_controller.h"
#include "cmd.h"


void initDma0(void)
{
    DMA0CONbits.AMODE = 0;                      //Configure DMA for register indirect with post increment
    DMA0CONbits.MODE = 0;                       //Configure DMA for continuous mode (not Ping Pong)
    DMA0PAD = (int)&ADC1BUF0;                   //Peripheral address register: the ADC1 buffer
    DMA0CNT = 0;                                //Transfer after ever 2 samples
    DMA0REQ = 13;                               //Select ADC1 as DMA request source
    DMA0STA = __builtin_dmaoffset(ADCBuffer);   //DMA RAM start address

    IFS0bits.DMA0IF = 0;                        //Clear DMA interrupt flag bit
    IEC0bits.DMA0IE = 1;                        //Enable DMA interrupt
    DMA0CONbits.CHEN = 1;                       //Enable DMA channel
}

static void timer1Setup(void);

static void timer1Setup(void)
{
    unsigned int conf_reg;
    unsigned long period;
    conf_reg = T1_ON & T1_SOURCE_INT & T1_PS_1_256 & T1_GATE_OFF & T1_SYNC_EXT_OFF;
    period = (unsigned int)0x271; //timer period 4ms = period/FCY * prescaler

    OpenTimer1(conf_reg, period);
    ConfigIntTimer1(T1_INT_PRIOR_4 & T1_INT_OFF);
}

static void timer2Setup(void)
{
    unsigned int conf_reg, period;

    conf_reg = T2_ON & T2_SOURCE_INT & T2_PS_1_256 & T2_GATE_OFF;
    //Period in us is 1/40*period.
    //period = (unsigned int)0x9c40; //timer period 1ms = period/FCY.
    //period = (unsigned int)0x9c40; //timer period 1ms = period/FCY.
    period = (unsigned int)0x138; //timer period 1ms = period/FCY.
    OpenTimer2(conf_reg, period);
    ConfigIntTimer2(T2_INT_PRIOR_4 & T2_INT_OFF);
    _T2IE = 1;
}
int main ( void )
{
    /* Initialization */
    SetupClock();
    SwitchClocks();
    SetupPorts();

    spicSetupChannel1();
    spicSetupChannel2();
    ppoolInit();

    //BEGIN RADIO SETUP
    radioInit(50, 10); // tx_queue length: 50, rx_queue length: 10
    radioSetSrcAddr(NETWORK_SRC_ADDR);
    radioSetSrcPanID(NETWORK_BASESTATION_PAN_ID);
    radioSetChannel(NETWORK_BASESTATION_CHANNEL);
    //END RADIO SETUP

    //BEGIN I2C SETUP
    unsigned int I2C1CONvalue, I2C1BRGvalue;
    I2C1CONvalue = I2C1_ON & I2C1_IDLE_CON & I2C1_CLK_HLD &
                   I2C1_IPMI_DIS & I2C1_7BIT_ADD & I2C1_SLW_DIS &
                   I2C1_SM_DIS & I2C1_GCALL_DIS & I2C1_STR_DIS &
                   I2C1_NACK & I2C1_ACK_DIS & I2C1_RCV_DIS &
                   I2C1_STOP_DIS & I2C1_RESTART_DIS & I2C1_START_DIS;
    I2C1BRGvalue = 363; // Fcy(1/Fscl - 1/1111111)-1
    OpenI2C1(I2C1CONvalue, I2C1BRGvalue);
    IdleI2C1();
    //END I2C SETUP


    //BEGIN ADC SETUP
    AD1CON1bits.FORM = 0b00;    //integer (0000 00dd dddd dddd) format output
    AD1CON1bits.ADON = 0;       //disable
    AD1CON1bits.SSRC = 0b011;   //Sample clock source based on PWM
    AD1CON1bits.ASAM = 0;       //Auto sampling off
    AD1CON1bits.SIMSAM = 0;     //Do not sample channels simultaneously
    AD1CON1bits.ADSIDL = 0;     //continue in idle mode
    AD1CON1bits.AD12B = 0;      //10 bit mode

    AD1CON2bits.VCFG = 0b000;   //Vdd is pos. ref and Vss is neg. ref.
    AD1CON2bits.CSCNA = 0;      //Do not scan inputs
    AD1CON2bits.CHPS = 0b00;    //Convert channels 0 and 1
    AD1CON2bits.SMPI = 0b0000;  //Interrupt after 2 conversions (depends on CHPS and SIMSAM)

    AD1CON3bits.ADRC = 0;       //Derive conversion clock from system clock
    AD1CON3bits.ADCS = 0b00000010; // Each TAD is 3 Tcy

    AD1PCFGL = 0xFFF0;          //Enable AN0 - AN3 as analog inputs

    AD1CHS0bits.CH0SA = 0b00000;      //Select AN0 for CH0 +ve input
    AD1CHS0bits.CH0NA = 0b00000;      //Select Vref- for CH0 -ve input

    AD1CON1bits.ADON = 1;       //enable
    //END ADC SETUP


    mcSetup();
    gyroSetup();
    xlSetup();
    dfmemSetup();
    sclockSetup();
    timer1Setup();
    timer2Setup();
    cmdSetup();


    attSetup(1.0/TIMER1_FCY);
    char j;
    for(j=0; j<6; j++){
        LED_1 = ~LED_1;
        delay_ms(100);
        LED_2 = ~LED_2;
        delay_ms(100);
        LED_3 = ~LED_3;
        delay_ms(100);
    }


    LED_1 = 1;
    LED_2 = 1;
    LED_3 = 1;

    //radioDeleteQueues();
    while(1){
        cmdHandleRadioRxBuffer();
        radioProcess();
    }
    return 0;
}

