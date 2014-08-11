//*****************************************************************************
// Program:	 LAPIS Development Board Demo Code Q112: Cap. Touch
// Authors:	 USDC Team: C. Schell, K. Bahar, F. Lee, E. Patterson, J. Fontus
//		 ROHM Semiconductor USA, LLC
//		 US Design Center
// Started:  	 July 20, 2014
// Purpose:	 Demonstration Code for use with Lapis "LAPIS" Development Board and the Cap. Touch demo board
// Updated:	 August 3, 2014
//*****************************************************************************

//*****************************************************************************
// Microcontroller's connections on the LAPIS Development Board to the
//  Plug 'n Play, Raspberry Pi Compatible, Universal Connectors:
//
// ================================ ML610Q112 =================================
//
// Pin-01 => 3.3V Power					Pin-02 => 5.0V Power (VBUS)
// Pin-03 => I2C-SDA  (Q112 I/O B.6)			Pin-04 => no connection
// Pin-05 => I2C-SCL  (Q112 I/O B.5)*			Pin-06 => GROUND
// Pin-07 => GPIO #04 (Q112 I/O B.2)			Pin-08 => UART-TX  (Q112 I/O B.1)
// Pin-09 => no connection				Pin-10 => UART-RX  (Q112 I/O B.0)
// Pin-11 => GPIO #17 (Q112 I/O C.0)			Pin-12 => GPIO #18 (Q112 I/O B.7)
// Pin-13 => GPIO #21 (Q112 I/O C.1)			Pin-14 => no connection
// Pin-15 => GPIO #22 (Q112 I/O C.2)			Pin-16 => GPIO #23 (Q112 I/O D.1)
// Pin-17 => no connection				Pin-18 => GPIO #24 (Q112 I/O D.2)
// Pin-19 => SPI-MOSI (Q112 I/O B.4)			Pin-20 => no connection
// Pin-21 => SPI-MISO (Q112 I/O B.3)			Pin-22 => GPIO #25 (Q112 I/O D.3)
// Pin-23 => SPI-SCLK (Q112 I/O B.5)*			Pin-24 => SPI-CS0  (Q112 I/O D.4)
// Pin-25 => no connection				Pin-26 => SPI-CS1  (Q112 I/O D.5)
//
//=============================================================================
//*****************************************************************************

//*****************************************************************************
// Q112 Microcontroller's I/O Pins at J4 on the LAPIS Development Board to the
// LAPIS Development Board
//
// ================================ ML610Q112 =================================
//
// Pin-01 => A.0				Pin-02 => A.1
// Pin-03 => A.2				Pin-04 => B.0
// Pin-05 => B.1				Pin-06 => B.2
// Pin-07 => B.3				Pin-08 => B.4
// Pin-09 => B.5				Pin-10 => B.6
// Pin-11 => B.7				Pin-12 => C.0
// Pin-13 => C.1				Pin-14 => C.2
// Pin-15 => C.3				Pin-16 => C.4
// Pin-17 => C.5				Pin-18 => C.6
// Pin-19 => C.7				Pin-20 => D.0
// Pin-21 => D.1				Pin-22 => D.2
// Pin-23 => D.3				Pin-24 => D.4
// Pin-25 => D.5				Pin-26 => GROUND
//
//=============================================================================
//*****************************************************************************


//***** PREPROCESSOR DIRECTIVES ***********************************************
// INCLUDED FILES...
// Include Path: common;main;irq;timer;clock;tbc;pwm;uart;

#include	<ML610112.H>	// Lapis Micro ML610Q112 on LAPIS Development Board
#include	<stdlib.h>		// General-purpose utilities
#include	<stdio.h>		// I/O-related processing
#include 	<common.h>		// Common Definitions
#include 	<irq.h>			// IRQ Definitions
#include 	<mcu.h>			// MCU Definition
#include	<i2c.h>			// I2C Definition
#include 	<uart.h>		// UART Function Prototypes
#include 	<tbc.h>			// Set TBC (Timer Based Clock) API
#include 	<timer.h>		// Timer Macros & APIs
#include	<math.h>		// Mathematical functions

//#include 	<main.h>		// Clear WDT API
//#include	<ctype.h>		// Character classification and conversion
//#include	<errno.h>		// Error identifiers Library
//#include	<float.h>		// Numerical limits for floating-point numbers
//#include	<limits.h>		// Numerical limits for integers
//#include 	<clock.h>		// Set System Clock API
//#include	<muldivu8.h>		// Multiplication and Division accelerator
//#include	<setjmp.h>		// Global jump (longjmp)
//#include	<signal.h>		// Signal handling functions
//#include	<stdarg.h>		// Variable numbers of arguments
//#include	<stddef.h>		// Standard types and macros
//#include	<string.h>		// Character string manipulation routines
//#include	<yfuns.h>		//
//#include	<yvals.h>		// Called for by most Header Files

//*****************************************************************************
// I/O PIN DATA ALIASES...
// Connections for Q112 Universal Socket
#define RX 		PB0D
#define INT 		PB1D	//INT
#define I2C_SDA 	PB6D
#define I2C_SCL 	PB5D
#define GPIO_04	PB2D
#define TX_LED		PC0D	//GPIO 17
#define IRLED	            PC1D   //GPIO 21 ...PortC.1 (PWMF1)
#define RX_LED		PC2D   //GPIO 22
#define GPIO_18	PB7D
#define GPIO_23	PD1D
#define GPIO_24	PD2D
#define GPIO_25	PD3D
#define SPI_MOSI	PB4D
#define SPI_MISO	PB3D
#define SPI_SCL 	PB5D
#define SPI_CS0	PD4D
#define SPI_CS1 	PD5D
//*****************************************************************************


//*****************************************************************************
//===========================================================================
//   MACROS:
//===========================================================================

// ===== Peripheral setting.=====
#define HSCLK_KHZ	( 8000u )	// 8MHz = 8000kHz (will be multiplied by 1024 to give 8,192,000Hz)
#define FLG_SET	( 0x01u )

// SET DESIRED UART SETTINGS HERE! (Options in UART.h)
#define UART_BAUDRATE		( UART_BR_9600BPS) 		// Data Bits Per Second - Tested at rates from 2400bps to 512000bps!
#define UART_DATA_LENGTH		( UART_LG_8BIT )		// x-Bit Data
#define UART_PARITY_BIT		( UART_PT_NON )		// Parity
#define UART_STOP_BIT		( UART_STP_1BIT )		// x Stop-Bits
#define UART_LOGIC			( UART_NEG_POS )		// Desired Logic
#define UART_DIRECTION		( UART_DIR_LSB )		// LSB or MSB First

//*****************************************************************************


//*****************************************************************************
//===========================================================================
//   STRUCTURES:
//===========================================================================
//Example Structure Declaration
typedef struct {
    unsigned char state	: 1;
    unsigned char state_sub	: 2;
    unsigned char reserve	: 5;
} STRUCT_STATE;

//*****************************************************************************


//*****************************************************************************
//===========================================================================
//   FUNCTION PROTOTYPES:
//	Establishes the name and return type of a function and may specify the
// 	types, formal parameter names and number of arguments to the function
//===========================================================================
void main_clrWDT( void );		// no return value and no arguments
void Initialization( void );			// no return value and no arguments
void SetOSC( void );			// no return value and no arguments
void analog_comparator( void );		// no return value and no arguments
void PortA_Low( void );			// no return value and no arguments
void PortB_Low( void );			// no return value and no arguments
void PortC_Low( void );			// no return value and no arguments
void PortD_Low( void );			// no return value and no arguments
void PortA_Digital_Inputs( void );		// no return value and no arguments
void IRLED_PWM( void ); 		// no return value and no arguments
void NOPx( unsigned int MyCount );	// no return value - Count in ms as Argument

void _funcI2CFin( unsigned int size, unsigned char errStat );
void checkI2C( void );
void main_reqNotHalt( void );

void _intI2c( void );
void NOP1000( void );
//*****************************************************************************


//*****************************************************************************
//===========================================================================
//   GLOBALS:
//===========================================================================
unsigned char 	_flgI2CFin;
unsigned char	_reqNotHalt;

static unsigned char	BU21072Address = 0x5C;		// address of BU21072 capacitive touch IC
static unsigned char	CNT = 0xFF;				// address of AFE Control
static unsigned char	INTERRUPT = 0x10;			// address of Interrupt factor
static unsigned char	CFG_SIN10 = 0xC0;			// address for selecting a setting for gain and threshold for off -> on for sin 1 and 0
static unsigned char	CFG_SIN32 = 0xC1;			// address for selecting a setting for gain and threshold for off -> on for sin 3 and 2
static unsigned char	CFG_SIN54 = 0xC2;			// address for selecting a setting for gain and threshold for off -> on for sin 5 and 4
static unsigned char	CFG_SIN76 = 0xC3;			// address for selecting a setting for gain and threshold for off -> on for sin 7 and 6
static unsigned char	CFG_SIN98 = 0xC4;			// address for selecting a setting for gain and threshold for off -> on for sin 9 and 8
static unsigned char	GA10 = 0xC8;				// address for value of gain 1 (Bits 7-4 ) and gain 0 (Bits 3-0)
static unsigned char	GA2 = 0xC9;				// address for value of gain 2 (Bits 3-0)
static unsigned char	ON0 = 0xCA;				// address for value of the threshold for off -> on 
static unsigned char	ON1 = 0xCB;				// address for value of the threshold for off -> on
static unsigned char	ON2 = 0xCC;				// address for value of the threshold for off -> on
static unsigned char	OFF = 0xCD;				// address for value of the threshold for on -> off  //when setting value make sure value is 0x00 < OFF < ON < 0xFF
static unsigned char	OSTIMES = 0xCE;			// address for configuration oversamping (ONLY bit 7-4)
static unsigned char	CONTTIMES = 0xCF;			// address for configuration continuous touch....Bit 7 is CONTSEL, Bits 5-0 is CONT[5:0]     //0.1[sec] x CONT
static unsigned char	SIN0_DATA = 0x00;			// address of SIN0 (8 bits long)
static unsigned char	SIN1_DATA = 0x01;			// address of SIN1 (8 bits long)
static unsigned char	SIN2_DATA = 0x02;			// address of SIN2 (8 bits long)
static unsigned char	SIN3_DATA = 0x03;			// address of SIN3 (8 bits long)
static unsigned char	SIN4_DATA = 0x04;			// address of SIN4 (8 bits long)
static unsigned char	SIN5_DATA = 0x05;			// address of SIN5 (8 bits long) //KEY3 
static unsigned char	SIN6_DATA = 0x06;			// address of SIN6 (8 bits long) 
static unsigned char	SIN7_DATA = 0x07;			// address of SIN7 (8 bits long)
static unsigned char	SIN8_DATA = 0x08;			// address of SIN8 (8 bits long)
static unsigned char	SIN9_DATA = 0x09;			// address of SIN9 (8 bits long)
static unsigned char	LEDDrive_LED_CH = 0xFA;		// address of LED_CH register

static unsigned char       GA0_value = 0x7;			// value of GA0
static unsigned char       ON0_value = 0x7F;			// value of ON0
static unsigned char       OFF_value = 0x7E;			// value of OFF
static unsigned char       CONT_value = 0x1F;			// value of CONT
static unsigned char	LEDDrive_LED_CH_Contents = 0x00;	// assign LED_CH value. 00=all off , FF=all on, 01=pin0 on, 02=pin1 on, 03=pin0&1 on....
static unsigned char	CNT_CAL= 0x03;			// enable sensor calibration and scan
static unsigned char	CNT_CFG = 0x04;			// enable configuration
static unsigned char	CLR_INTERRUPT= 0xF0;		// enable sensor calibration
static unsigned char	CLR_CAL = 0;				// clear calibration
static unsigned char	CLR_INI = 0;				// clear initialization
static unsigned char	KEY3[1];				// place holder for ADC data
static unsigned char	INTERRUPT_INI[1];			// reg is set to 1 when initialization is finished
static unsigned char	INTERRUPT_CAL[1];			// reg is set to 1 when software calibration is finished
static unsigned char 	CHECK[1];
//*****************************************************************************


//*****************************************************************************
//===========================================================================
//  	Start of MAIN FUNCTION
//===========================================================================
int main(void)
{
    //Local Variables
    char char_a;		// -128 to 127
    unsigned char uchar;	// 0-255
    int inta, table [100];	// -32,768 to 32767
    unsigned int uint;	// 0 to 65,535
    long long_a,delay;	// -2,147,483,648 to 2,147,483,647
    float float_a;		// 1.17549435e-38 to 3.40282347e+38
    double double_a;	// 2.2250738585072014e-308 to 1.7976931348623157e+308

    Initialization(); //Ports, UART, Timers, Oscillator, Comparators, etc.

    RX_Loop:
    main_clrWDT();

    if(INT = 1){		// Testing interrupt signal
        RX_LED = 1;
        NOPx(60000);
        NOPx(60000);
        RX_LED = 0;
    }

    //----- START I2C RX Command ----- Grab SIN5 ADC data and place in KEY3 variable
    _flgI2CFin = 0;										//reset I2C completed Flag
    i2c_stop();									           		 //Make sure I2C is not currently running
    i2c_startReceive(BU21072Address, &SIN5_DATA, 1, &KEY3, 1, (cbfI2c)_funcI2CFin);		 //Wait for I2C commands to finish transfer
    while(_flgI2CFin != 1){
        NOP1000();
        main_clrWDT();
    }
    //----- END I2C RX Command -----

    TX_LED = 1;
    if (KEY3[0] > 0){
        TX_LED = 1;
        NOPx(60000);
        NOPx(60000);
        NOPx(60000);
        TX_LED = 0;
     }

    goto RX_Loop;
}//end main
//*****************************************************************************


//*****************************************************************************
//===========================================================================
//  	Start of Other Functions...
//===========================================================================
//*****************************************************************************

//*****************************************************************************
//	Routine Name:	main_clrWDT
//	Form:		void main_clrWDT( void )
//	Parameters:	void
//	Return value:	void
//	Description:	clear WDT.
//*****************************************************************************
void main_clrWDT( void )
{
    //How to clear the Watch Dog Timer:
    // => Write alternately 0x5A and 0xA5 into WDTCON register
    do {
        WDTCON = 0x5Au;
    } while (WDP != 1);
    WDTCON = 0xA5u;
}


//*****************************************************************************
//	Routine Name:	NOP1000
//	Form:		void NOP( void )
//	Parameters:	void
//	Return value:	void
//	Description:	NOP for 1000 Cycles.
//*****************************************************************************
void NOP1000( void )
{
    unsigned int ONCNT = 0;

    while(ONCNT < 1000) {	// NOP for 1000 Cycles
        ONCNT++;
    }
    ONCNT = 0;			// Reset Counter
}


//===========================================================================
//	Initialize Micro to Desired State...
//===========================================================================
static void Initialization(void) {
    //Initialize Peripherals
    //BLKCON2 Control Bits...Manually Set 4/12/2013
    DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
    DUA0  = 0; // 0=> Enables the operation of UART0 (initial value).
    DUA1  = 1; // 0=> Enables Uart1 (initial value).
    DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
    DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).

    BLKCON4 = 0x00; // 0=> Enables SA-ADC
    BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
    BLKCON7 = 0x00; // (1=disables; 0=enables) the operation of PWW (PWMC, PWMD, PWME, PWMF

    // Port Initialize
    PortA_Low();	//Initialize all 3 Ports of Port A to GPIO-Low
    PortB_Low();	//Initialize all 8 Ports of Port B to GPIO-Low
    PortC_Low();	//Initialize all 8 Ports of Port C to GPIO-Low
    PortD_Low();	//Initialize all 6 Ports of Port D to GPIO-Low

    // Set Oscillator Rate
    SetOSC();
//*****************************************************************************
    // TIMER SETUP
    Setup_Timer_8:
    // Reset TIMER DATA REGISTER...
    TM8D    = 0;	//Timer 8 DATA Register
    // Reset TIMER CLOCK REGISTER...
    TM8C    = 0;	//Timer 8 CLOCK Register
    // TIMER-8 Control...
    //   CONTROL-0 Register:
    // Operation Clock for Timer...
    T8C1 = 0;	// 01 = HTBCLK
    T8C0 = 1;
    // Count Mode...
    T89M16 = 0;	// 0=8-Bit Mode; 1=16bit Mode...
    //One-Shot or Normal Mode...
    T8OST = 0;	// 0=Normal; 1=One-Shot...
    //   CONTROL-1 Register:
    // RUN Mode...
    T8RUN = 0;	//0=STOP; 1=START...
//*****************************************************************************



//*****************************************************************************
    // INTERRUPT SETUP...
    irq_di();	// Disable Interrupts
    irq_init();	// Initialize Interrupts (All Off and NO Requests)

    // INTERRUPT ENABLE REGISTERS...
    //  IE0 = VOLTAGE LEVEL SUPERVISOR Int.
    //  IE1 = EXTERNAL Ints on B1, B0, A2, A1, & A0
    //  IE2 = SUCCESSIVE APPROXIMATION Int.
    //  IE3 = TIMERS 8 & 9 Ints.
    //  IE4 = UART & COMPARATOR Ints.
    //  IE5 = TIMERS A, B, E & F Ints.
    //  IE6 = PWMC &  128Hz & 32Hz TBC Ints.
    //  IE7 = 16Hz & 2Hz TBC Ints.
    IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;

    // INTERRUPT REQUEST REGISTERS...
    //  IRQ0 = WDT & VLS Int Requests
    //  IRQ1 = EXTERNAL Int Requests
    //  IRQ2 = SUCCESSIVE APPROXIMATION Int Requests
    //  IRQ3 = TIMERS 8 & 9 Int Requests
    //  IRQ4 = UART & COMPARATOR Int Requests
    //  IRQ5 = TIMERS A, B, E & F Int Requests
    //  IRQ6 = PWMC &  128Hz & 32Hz TBC Int Requests
    //  IRQ7 = 16Hz & 2Hz TBC Int Requests
    IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;
    E2H = 0; 	// E2H is the Enable flag for 2Hz TBC Interrupt (1=ENABLED)

    (void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );

    EI2CM = 1;
    QI2CM = 1;
    EUA0 = 1; // EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)

    irq_ei(); // Enable Interrupts
//*****************************************************************************


//*****************************************************************************
    // WDT...
    WDTMOD = 0x03; 	// 0x03=overflow 8sec...
    main_clrWDT(); 	// Clear WDT

    //I2C Initialization...
    //P20C0 = 1;	/* CMOS output */
    //P20C1 = 1;
    //P20D = 1;	/* write protect enable */
    (void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_OFF);
//*****************************************************************************

  
//*****************************************************************************
//----- Setting of Sensor Configuration------Set value of Gain 0
    _flgI2CFin = 0;										//reset I2C completed flag
    i2c_stop();											//Make sure I2C is not currently running
    i2c_startSend( BU21072Address, &GA10, 1, &GA0_value, 1, (cbfI2c)_funcI2CFin);			//Begin I2C Receive Command
    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
       main_clrWDT();
    }
//----- Setting of Sensor Configuration------Set value of threshold 0 off -> on
    _flgI2CFin = 0;										//reset I2C completed flag
    i2c_stop();											//Make sure I2C is not currently running
    i2c_startSend( BU21072Address, &ON0, 1, &ON0_value, 1, (cbfI2c)_funcI2CFin);			//Begin I2C Receive Command
    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
       main_clrWDT();
    }
//----- Setting of Sensor Configuration------Set value of threshold 0 on -> off
    _flgI2CFin = 0;										//reset I2C completed flag
    i2c_stop();											//Make sure I2C is not currently running
    i2c_startSend( BU21072Address, &OFF, 1, &OFF_value, 1, (cbfI2c)_funcI2CFin);			//Begin I2C Receive Command
    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
       main_clrWDT();
    }
//----- Setting of Sensor Configuration------Set value of continuos touch
    _flgI2CFin = 0;										//reset I2C completed flag
    i2c_stop();											//Make sure I2C is not currently running
    i2c_startSend( BU21072Address, &CONTTIMES, 1, &CONT_value, 1, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
       main_clrWDT();
    }
//*****************************************************************************  


//*****************************************************************************
//----- Activate Sensor Configuration------
    _flgI2CFin = 0;										//reset I2C completed flag
    i2c_stop();											//Make sure I2C is not currently running
    i2c_startSend( BU21072Address, &CNT, 1, &CNT_CFG , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
       main_clrWDT();
    }
//*****************************************************************************  


//*****************************************************************************
//----- Activate Sensor Calibration------
    _flgI2CFin = 0;										//reset I2C completed flag
    i2c_stop();											//Make sure I2C is not currently running
    i2c_startSend( BU21072Address, &CNT, 1, &CNT_CAL, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
       main_clrWDT();
    }
//*****************************************************************************  
    

    NOPx(1000);


//*****************************************************************************
    //----- LED drivers control I2C Init TX Command ----- //Command for setting up LED driver
//    _flgI2CFin = 0;														//reset I2C completed flag
//    i2c_stop();															//Make sure I2C is not currently running
//    i2c_startSend( BU21072Address, &LEDDrive_LED_CH, 1, &LEDDrive_LED_CH_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
//    while(_flgI2CFin != 1) {													//Wait for I2C commands to finish transfer
//        main_clrWDT();
//    }
//*****************************************************************************


    IRLED_PWM();  //set IRLED PWM


}//End Initialization
//===========================================================================

//*****************************************************************************
//	Routine Name:	_funcI2CFin
//	Form:		static void _funcUartFin( unsigned int size, unsigned char errStat )
//	Parameters:	unsigned int size		 :
//			unsigned char errStat	 :
//	Return value:	void
//	Description:	UART transmission completion callback function.
//*****************************************************************************
static void _funcI2CFin( unsigned int size, unsigned char errStat )
{
    i2c_continue();					// Function in UART.c: process to continue send and receive...
    _flgI2CFin = (unsigned char)FLG_SET;
    main_reqNotHalt();				// uncommented 5/2/2013
}


//*****************************************************************************
//	Routine Name:	_intI2c
//	Form:		static void _intI2c( void )
//	Parameters:	void
//	Return value:	void
//	Description:	I2C handler.
//*****************************************************************************
static void _intI2c( void )
{
    (void)i2c_continue();
    main_reqNotHalt();
}


//*****************************************************************************
//	Routine Name:	checkI2C
//	Form:		void checkI2C( void )
//	Parameters:	void
//	Return value:	void
//	Description:	Reading or writing processing of I2C Bus.
//*****************************************************************************
void checkI2C( void )
{
    int		ret;

    ret = 0;
    //P21C1 = 1;
    while (ret != 1) {
        ret = i2c_continue();
        if( ret == 1 ) {
            //P21C1 = 0;
        }
    }
}

//*****************************************************************************
//	Routine Name:	main_reqNotHalt
//	Form:		void reqNotHalt( void )
//	Parameters:	void
//	Return value:	void
//	Description:	request not halt.
//*****************************************************************************
void main_reqNotHalt( void )
{
    _reqNotHalt = (unsigned char)FLG_SET;
}


//===========================================================================
//	OSC set
//===========================================================================
static void SetOSC(void) {

    //FCON0: 			// xMHz PLL (3=1MHz; 2=2MHz; 1=4MHz; 0=8MHz)...
    SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
    SYSC1 = 0;

    OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
    OSCM0 = 0;

    ENOSC = 1;			//1=Enable High Speed Oscillator...
    SYSCLK = 1;			//1=HSCLK; 0=LSCLK

    LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013

    __EI();			//INT enable
}
//===========================================================================


//===========================================================================
//	Analog Comparator setup
//===========================================================================
void analog_comparator(void) {

    //Carl's Notes...
    //Step 1: Select the Interrupt Mode
    // 	a.) Interrupt Disabled          => CMPxE1 = 0; CMPxE0 = 0;
    // 	b.) Falling-Edge Int. Mode   => CMPxE1 = 0; CMPxE0 = 1;
    // 	c.) Rising-Edge Int. Mode   => CMPxE1 = 1; CMPxE0 = 0;
    // 	d.) Both-Edge Int. Mode     => CMPxE1 = 1; CMPxE0 = 1;
    //Step 2: Enable the Comparator             => CMPxEN = 1;
    //Step 3: Wait 3ms to allow Comparator to stabilize
    //Step 4: Read the comparison result	=> CMPxD: 0= +<-; 1= +>-
    //Step 5: Disable the Comparator		=> CMPxEN = 0;

    //Comparator 0...
    CMP0EN  = 0x01; 	// Comparator ON...
    CMP0E1  = 0x00; 	// No Interupt...
    CMP0E0  = 0x00;
    CMP0SM1 = 0x00; 	// Detect without Sampling...
    CMP0RFS = 0x01; 	// Differential Input on B5

    //Comparator 0 OFF
    CMP0EN  = 0x00;
}
//===========================================================================


//===========================================================================
//	Clear All 3 Bits of Port A
//===========================================================================
void PortA_Low(void) {

    //Carl's Notes...
    //Step 1: Set Pin Direction...
    //Step 2: Set Pin I/O Type...
    //Step 3: Set Pin Purpose...
    //Step 4: Set Pin Data...

    //Direction...
    PA0DIR = 0;		// PortA Bit0 set to Output Mode...
    PA1DIR = 0;		// PortA Bit1 set to Output Mode...
    PA2DIR = 0;		// PortA Bit2 set to Output Mode...

    //I/O Type...
    PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
    PA0C0  = 1;
    PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
    PA1C0  = 1;
    PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
    PA2C0  = 1;

    //Purpose...
    PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
    PA0MD0  = 0;
    PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
    PA1MD0  = 0;
    PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
    PA2MD0  = 0;

    //Data...
    PA0D = 0;		// A.0 Output OFF....
    PA1D = 0;		// A.1 Output OFF....
    PA2D = 0;		// A.2 Output OFF....

    main_clrWDT(); 	// Clear WDT
}
//===========================================================================


//===========================================================================
//	Clear All 8 Bits of Port B
//===========================================================================
void PortB_Low(void) {

    //Carl's Notes...
    //Step 1: Set Pin Direction...
    //Step 2: Set Pin I/O Type...
    //Step 3: Set Pin Purpose...
    //Step 4: Set Pin Data...

    //Direction...
    PB0DIR = 0;		// PortB Bit0 set to Output Mode...
    PB1DIR = 0;		// PortB Bit1 set to Output Mode...
    PB2DIR = 0;		// PortB Bit2 set to Output Mode...
    PB3DIR = 0;		// PortB Bit3 set to Output Mode...
    PB4DIR = 0;		// PortB Bit4 set to Output Mode...
    PB5DIR = 0;		// PortB Bit5 set to Output Mode...
    PB6DIR = 0;		// PortB Bit6 set to Output Mode...
    PB7DIR = 0;		// PortB Bit7 set to Output Mode...

    //I/O Type...
    PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
    PB0C0  = 1;
    PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
    PB1C0  = 1;
    PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
    PB2C0  = 1;
    PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
    PB3C0  = 1;
    PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
    PB4C0  = 1;
    PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
    PB5C0  = 1;
    PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
    PB6C0  = 1;
    PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
    PB7C0  = 1;

    //Purpose...
    PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
    PB0MD0  = 0;
    PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
    PB1MD0  = 0;
    PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
    PB2MD0  = 0;
    PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
    PB3MD0  = 0;
    PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
    PB4MD0  = 0;
    PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
    PB5MD0  = 0;
    PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
    PB6MD0  = 0;
    PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
    PB7MD0  = 0;

    //Data...
    PB0D = 0;		// B.0 Output OFF....
    PB1D = 0;		// B.1 Output OFF....
    PB2D = 0;;		// B.2 Output OFF....
    PB3D = 0;		// B.3 Output OFF....
    PB4D = 0;		// B.4 Output OFF....
    PB5D = 0;		// B.5 Output OFF....
    PB6D = 0;		// B.6 Output OFF....
    PB7D = 0;		// B.7 Output OFF....

    main_clrWDT(); 	// Clear WDT
}
//===========================================================================


//===========================================================================
//	Clear All 8 Bits of Port C
//===========================================================================
void PortC_Low(void) {

    //Carl's Notes...
    //Step 1: Set Pin Direction...
    //Step 2: Set Pin I/O Type...
    //Step 3: Set Pin Purpose...
    //Step 4: Set Pin Data...

    //Direction...
    PC0DIR = 0;		// PortC Bit0 set to Output Mode...
    PC1DIR = 0;		// PortC Bit1 set to Output Mode...
    PC2DIR = 0;		// PortC Bit2 set to Output Mode...
    PC3DIR = 0;		// PortC Bit3 set to Output Mode...
    PC4DIR = 0;		// PortC Bit4 set to Output Mode...
    PC5DIR = 0;		// PortC Bit5 set to Output Mode...
    PC6DIR = 0;		// PortC Bit6 set to Output Mode...
    PC7DIR = 0;		// PortC Bit7 set to Output Mode...

    //I/O Type...
    PC0C1  = 1;		// PortC Bit0 set to High-Impedance Output...
    PC0C0  = 1;
    PC1C1  = 1;		// PortC Bit1 set to High-Impedance Output...
    PC1C0  = 1;
    PC2C1  = 1;		// PortC Bit2 set to High-Impedance Output...
    PC2C0  = 1;
    PC3C1  = 1;		// PortC Bit3 set to High-Impedance Output...
    PC3C0  = 1;
    PC4C1  = 1;		// PortC Bit4 set to High-Impedance Output...
    PC4C0  = 1;
    PC5C1  = 1;		// PortC Bit5 set to High-Impedance Output...
    PC5C0  = 1;
    PC6C1  = 1;		// PortC Bit6 set to High-Impedance Output...
    PC6C0  = 1;
    PC7C1  = 1;		// PortC Bit7 set to High-Impedance Output...
    PC7C0  = 1;

    //Purpose...
    PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
    PC0MD0  = 0;
    PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
    PC1MD0  = 0;
    PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
    PC2MD0  = 0;
    PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
    PC3MD0  = 0;
    PC4MD1  = 0;	// PortC Bit4 set to General Purpose Output...
    PC4MD0  = 0;
    PC5MD1  = 0;	// PortC Bit5 set to General Purpose Output...
    PC5MD0  = 0;
    PC6MD1  = 0;	// PortC Bit6 set to General Purpose Output...
    PC6MD0  = 0;
    PC7MD1  = 0;	// PortC Bit7 set to General Purpose Output...
    PC7MD0  = 0;

    //Data...
    PC0D = 0;		// C.0 Output OFF....
    PC1D = 0;		// C.1 Output OFF....
    PC2D = 0;		// C.2 Output OFF....
    PC3D = 0;		// C.3 Output OFF....
    PC4D = 0;		// C.4 Output OFF....
    PC5D = 0;		// C.5 Output OFF....
    PC6D = 0;		// C.6 Output OFF....
    PC7D = 0;		// C.7 Output OFF....

    main_clrWDT(); 	// Clear WDT
}
//===========================================================================


//===========================================================================
//	Clear All 6 Bits of Port D
//===========================================================================
void PortD_Low(void) {

    //Carl's Notes...
    //Step 1: Set Pin Direction...
    //Step 2: Set Pin I/O Type...
    //Step 3: Set Pin Data...

    //Direction...
    PD0DIR = 0;		// PortD Bit0 set to Output Mode...
    PD1DIR = 0;		// PortD Bit1 set to Output Mode...
    PD2DIR = 0;		// PortD Bit2 set to Output Mode...
    PD3DIR = 0;		// PortD Bit3 set to Output Mode...
    PD4DIR = 0;		// PortD Bit4 set to Output Mode...
    PD5DIR = 0;		// PortD Bit5 set to Output Mode...

    //I/O Type...
    PD0C1= 1;		// PortD Bit0 set to CMOS Output...
    PD0C0= 1;
    PD1C1= 1;		// PortD Bit1 set to CMOS Output...
    PD1C0= 1;
    PD2C1= 1;		// PortD Bit2 set to CMOS Output...
    PD2C0= 1;
    PD3C1= 1;		// PortD Bit3 set to CMOS Output...
    PD3C0= 1;
    PD4C1= 1;		// PortD Bit4 set to CMOS Output...
    PD4C0= 1;
    PD5C1= 1;		// PortD Bit5 set to CMOS Output...
    PD5C0= 1;

    //Data...
    PD0D = 0;		// D.0 Output OFF....
    PD1D = 0;		// D.1 Output OFF....
    PD2D = 0;		// D.2 Output OFF....
    PD3D = 0;		// D.3 Output OFF....
    PD4D = 0;		// D.4 Output OFF....
    PD5D = 0;		// D.5 Output OFF....

    main_clrWDT(); 	// Clear WDT
}
//===========================================================================


//===========================================================================
//	Set All 3 Bits of Port A as Digital Input Pins
//===========================================================================
void PortA_Digital_Inputs(void) {

    //Carl's Notes...
    //Step 1: Set Pin Direction...
    //Step 2: Set Pin I/O Type...
    //Step 3: Set Pin Purpose...
    //Step 4: Set Pin Data...

    //Direction...
    PA0DIR = 1;		// PortA Bit0 set to Input Mode...
    PA1DIR = 1;		// PortA Bit1 set to Input Mode...
    PA2DIR = 1;		// PortA Bit2 set to Input Mode...

    //I/O Type...
    PA0C1  = 1;		// PortA Bit0 set to Input with Pull-Up Resistor...
    PA0C0  = 0;
    PA1C1  = 1;		// PortA Bit1 set to Input with Pull-Up Resistor...
    PA1C0  = 0;
    PA2C1  = 1;		// PortA Bit2 set to Input with Pull-Up Resistor...
    PA2C0  = 0;

    //Purpose...
    PA0MD1  = 0;	// PortA Bit0 set to General Purpose I/O...
    PA0MD0  = 0;
    PA1MD1  = 0;	// PortA Bit1 set to General Purpose I/O...
    PA1MD0  = 0;
    PA2MD1  = 0;	// PortA Bit2 set to General Purpose I/O...
    PA2MD0  = 0;

    main_clrWDT(); 	// Clear WDT
}
//===========================================================================


//===========================================================================
//	PWM Output on Port C - Pin 1
//===========================================================================
void IRLED_PWM(void) {

    //Carl's Notes...
    //Step 1: Set Pin Direction...
    //Step 2: Set Pin I/O Type...
    //Step 3: Set Pin Purpose...
    //Step 4: Select the Clock Mode...
    //Step 5: Set the Duty Cycle...
    //Step 5: Start the PWM Counter...

    //Turn ON PWMF1 output 
    PF1EN = 1;		//The PF2EN, PF1EN, and PF0EN are output enable bits of PWMF0 to 2

    //Direction...
    PC1DIR = 0;		// PortC Bit1 set to Output Mode...

    //I/O Type...
    PC1C1  = 1;		// PortC Bit1 set to CMOS Output...
    PC1C0  = 1;

    //Purpose...
    PC1MD1  = 1;	// PortC Bit1 set to PWMF1 Output (1,0)...
    PC1MD0  = 0;

    //Select the Clock Mode...
    PFCS1 = 1;	//00= LS; 01=HS; 10=PLL
    PFCS0 = 0;

    //SET THE PERIOD
    PWFP = 428;		// Init Period to ~38 kHz

    //SET THE DUTY CYCLE
    PWF1ED =  214;		//  ~  50 % duty cycle @ 38 kHz

    //SET PWM COUNT ON
    PFRUN = 1;			// Turn ON
}
//===========================================================================


//===========================================================================
//	No Operation 
//===========================================================================
void NOPx( unsigned int MyCount ){
    unsigned int ONCNT = 0;
    unsigned int xxx;

    xxx = MyCount;
        while(ONCNT < xxx) {	// NOP for "xxx" Cycles
            ONCNT++;
        }
    ONCNT = 0;			// Reset Counter 
}
//===========================================================================

