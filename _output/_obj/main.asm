;; Compile Options : /TML610112 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Iuart /Ii2c /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : main.c

	type (ML610112) 
	model small, near
	$$NVARmain segment data 2h #0h
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$IRLED_PWM$main segment code 2h #0h
	$$Initialization$main segment code 2h #0h
	$$NOP1000$main segment code 2h #0h
	$$NOPx$main segment code 2h #0h
	$$PortA_Digital_Inputs$main segment code 2h #0h
	$$PortA_Low$main segment code 2h #0h
	$$PortB_Low$main segment code 2h #0h
	$$PortC_Low$main segment code 2h #0h
	$$PortD_Low$main segment code 2h #0h
	$$SetOSC$main segment code 2h #0h
	$$_funcI2CFin$main segment code 2h #0h
	$$_intI2c$main segment code 2h #0h
	$$analog_comparator$main segment code 2h #0h
	$$checkI2C$main segment code 2h #0h
	$$main$main segment code 2h #0h
	$$main_clrWDT$main segment code 2h #0h
	$$main_reqNotHalt$main segment code 2h #0h
	STACKSEG 0100h
CVERSION 3.41.8
CGLOBAL 01H 03H 0000H "IRLED_PWM" 08H 02H 0D7H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "checkI2C" 08H 02H 0DAH 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_clrWDT" 08H 02H 0CEH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_reqNotHalt" 08H 02H 0DBH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOPx" 08H 02H 0D8H 00H 80H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "Initialization" 08H 02H 0CFH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Digital_Inputs" 08H 02H 0D6H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main" 08H 02H 0DEH 00H 80H 08H 00H 00H 01H
CGLOBAL 01H 03H 0000H "PortD_Low" 08H 02H 0D5H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOP1000" 08H 02H 0DDH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2c" 08H 02H 0DCH 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "SetOSC" 08H 02H 0D0H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortC_Low" 08H 02H 0D4H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortB_Low" 08H 02H 0D3H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Low" 08H 02H 0D2H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "analog_comparator" 08H 02H 0D1H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcI2CFin" 08H 02H 0D9H 00H 81H 02H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0007H 0003H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "state" 02H 00H 00H
CSTRUCTMEM 52H 00000002H 00000001H "state_sub" 02H 00H 00H
CSTRUCTMEM 52H 00000005H 00000003H "reserve" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0005H 0006H 0000000AH "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "br" 02H 00H 02H
CSTRUCTMEM 42H 00000001H 00000004H "lg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000005H "pt" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000006H "stp" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000007H "neg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000008H "dir" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0004H 000CH 00000016H "_Notag"
CSTRUCTMEM 42H 00000002H 00000000H "_Mode" 02H 00H 08H
CSTRUCTMEM 43H 00000002H 00000002H "_Handle" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000004H "_Buf" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000006H "_Bend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000008H "_Next" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000AH "_Rend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000CH "_Rsave" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000EH "_Wend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000010H "_Back" 05H 01H 02H 00H 00H 00H
CSTRUCTMEM 42H 00000001H 00000012H "_Cbuf" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000013H "_Nback" 02H 00H 00H
CSTRUCTMEM 43H 00000002H 00000014H "_Tmpnam" 04H 03H 00H 00H 00H
CSTRUCTTAG 0000H 0000H 0003H 0001H 00000004H "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "_Off" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0002H 0002H 00000008H "_Notag"
CSTRUCTMEM 43H 00000004H 00000000H "quot" 02H 00H 02H
CSTRUCTMEM 43H 00000004H 00000004H "rem" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0001H 0002H 00000004H "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "quot" 02H 00H 01H
CSTRUCTMEM 43H 00000002H 00000002H "rem" 02H 00H 01H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CUNIONTAG 0000H 0000H 0006H 0002H 00000008H "_Notag"
CUNIONMEM 42H 00000008H "_W" 05H 01H 04H 00H 00H 08H
CUNIONMEM 43H 00000008H "_D" 02H 00H 04H
CTYPEDEF 0000H 0000H 01H "_Dconst" 04H 00H 06H 06H 00H
CTYPEDEF 0000H 0000H 43H "_Ptrdifft" 02H 00H 01H
CTYPEDEF 0000H 0000H 42H "_Sizet" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "tUartSetParam" 04H 00H 05H 05H 00H
CTYPEDEF 0000H 0000H 42H "size_t" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "cbfUart" 0AH 03H 00H 02H 6CH 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 43H "fpos_t" 04H 00H 05H 03H 00H
CTYPEDEF 0000H 0000H 43H "STRUCT_STATE" 04H 00H 05H 07H 00H
CTYPEDEF 0000H 0000H 43H "cbfI2c" 0AH 03H 00H 02H 63H 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nf" 08H 02H 01H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nn" 08H 02H 00H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_ff" 08H 02H 03H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_fn" 08H 02H 02H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 43H "FILE" 04H 00H 05H 04H 00H
CTYPEDEF 0000H 0000H 43H "div_t" 04H 00H 05H 01H 00H
CTYPEDEF 0000H 0000H 43H "ldiv_t" 04H 00H 05H 02H 00H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CSGLOBAL 42H 0001H "SIN1_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "SIN3_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "SIN5_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "SIN7_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "SIN9_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "OSTIMES" 02H 00H 00H
CSGLOBAL 42H 0001H "KEY3" 05H 01H 01H 00H 00H 00H
CSGLOBAL 42H 0001H "CNT_CAL" 02H 00H 00H
CSGLOBAL 42H 0001H "GA0_value" 02H 00H 00H
CSGLOBAL 42H 0001H "CNT_CFG" 02H 00H 00H
CSGLOBAL 42H 0001H "BU21072Address" 02H 00H 00H
CSGLOBAL 42H 0001H "CONTTIMES" 02H 00H 00H
CSGLOBAL 42H 0001H "CFG_SIN32" 02H 00H 00H
CSGLOBAL 42H 0001H "CFG_SIN10" 02H 00H 00H
CSGLOBAL 42H 0001H "CFG_SIN54" 02H 00H 00H
CSGLOBAL 42H 0001H "CFG_SIN76" 02H 00H 00H
CSGLOBAL 42H 0001H "CHECK" 05H 01H 01H 00H 00H 00H
CSGLOBAL 42H 0001H "CFG_SIN98" 02H 00H 00H
CSGLOBAL 42H 0001H "CLR_DETECT_OFF07" 02H 00H 00H
CSGLOBAL 42H 0001H "CLR_DETECT_CONT07" 02H 00H 00H
CSGLOBAL 42H 0001H "CLR_DETECT_OFF89" 02H 00H 00H
CSGLOBAL 42H 0001H "CLR_DETECT_CONT89" 02H 00H 00H
CSGLOBAL 42H 0001H "INTERRUPT" 02H 00H 00H
CSGLOBAL 42H 0001H "LEDDrive_LED_CH" 02H 00H 00H
CSGLOBAL 42H 0001H "CLR_INTERRUPT" 02H 00H 00H
CSGLOBAL 42H 0001H "SIN0_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "SIN2_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "SIN4_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "SIN6_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "SIN8_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "LEDDrive_LED_CH_Contents" 02H 00H 00H
CGLOBAL 00H 42H 0001H "_flgI2CFin" 02H 00H 00H
CSGLOBAL 42H 0001H "ON0_value" 02H 00H 00H
CSGLOBAL 42H 0001H "OFF_value" 02H 00H 00H
CSGLOBAL 42H 0001H "INTERRUPT_CAL" 05H 01H 01H 00H 00H 00H
CSGLOBAL 42H 0001H "GA2" 02H 00H 00H
CSGLOBAL 42H 0001H "CLR" 02H 00H 00H
CSGLOBAL 42H 0001H "CNT" 02H 00H 00H
CSGLOBAL 42H 0001H "CLR_DETECT_ON07" 02H 00H 00H
CGLOBAL 00H 42H 0001H "_reqNotHalt" 02H 00H 00H
CSGLOBAL 42H 0001H "OFF" 02H 00H 00H
CSGLOBAL 42H 0001H "ON0" 02H 00H 00H
CSGLOBAL 42H 0001H "ON1" 02H 00H 00H
CSGLOBAL 42H 0001H "ON2" 02H 00H 00H
CSGLOBAL 42H 0001H "CLR_DETECT_ON89" 02H 00H 00H
CSGLOBAL 42H 0001H "CONT_value" 02H 00H 00H
CSGLOBAL 42H 0001H "GA10" 02H 00H 00H
CSGLOBAL 42H 0001H "CLR_CAL" 02H 00H 00H
CSGLOBAL 42H 0001H "GA0ON0" 02H 00H 00H
CSGLOBAL 42H 0001H "INTERRUPT_INI" 05H 01H 01H 00H 00H 00H
CSGLOBAL 42H 0001H "CLR_INI" 02H 00H 00H
CFILE 0001H 0000085AH "main\\ML610112.H"
CFILE 0002H 000000D8H "main\\stdlib.h"
CFILE 0003H 0000007AH "main\\yvals.h"
CFILE 0004H 000000EEH "main\\stdio.h"
CFILE 0005H 00000027H "common\\common.h"
CFILE 0006H 00000057H "irq\\irq.h"
CFILE 0007H 00000023H "main\\mcu.h"
CFILE 0008H 00000045H "i2c\\i2c.h"
CFILE 0009H 0000006BH "uart\\uart.h"
CFILE 000AH 00000046H "tbc\\tbc.h"
CFILE 000BH 000001B8H "timer\\timer.h"
CFILE 000CH 0000004FH "main\\math.h"
CFILE 0000H 000003F9H "main\\main.c"

	rseg $$main$main
CFUNCTION 222

_main	:
CBLOCK 222 1 238

;;{
CLINEA 0000H 0001H 00EEH 0001H 0001H
CBLOCK 222 2 238
CLOCAL 4BH 0001H 0000H 0002H "char_a" 02H 00H 00H
CLOCAL 4AH 0001H 0000H 0002H "uchar" 02H 00H 00H
CLOCAL 4BH 0002H 0000H 0002H "inta" 02H 00H 01H
CLOCAL 4BH 00C8H 0000H 0002H "table" 05H 01H 64H 00H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "uint" 02H 00H 01H
CLOCAL 4BH 0004H 0000H 0002H "long_a" 02H 00H 02H
CLOCAL 4BH 0004H 0000H 0002H "delay" 02H 00H 02H
CLOCAL 4BH 0004H 0000H 0002H "float_a" 02H 00H 03H
CLOCAL 4BH 0008H 0000H 0002H "double_a" 02H 00H 04H

;;    Initialization(); //Ports, UART, Timers, Oscillator, Comparators, etc.
CLINEA 0000H 0001H 00F8H 0005H 004AH
	bl	_Initialization

;;    RX_Loop:
CLINEA 0000H 0001H 00FAH 0005H 000CH
CLABEL 001EH "RX_Loop"
_$L30 :

;;    main_clrWDT();
CLINEA 0000H 0001H 00FDH 0005H 0012H
	bl	_main_clrWDT

;;    _flgI2CFin = 0;										//reset I2C completed Flag
CLINEA 0000H 0001H 0100H 0005H 0037H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;    i2c_stop();									           		 //Make sure I2C is not currently runningi2c_startReceive(BU21072Address, &SIN5_DATA, 1, &KEY3, 1, (cbfI2c)_funcI2CFin);		 //Wait for I2C commands to finish transfer  
CLINEA 0000H 0001H 0101H 0005H 00CCH
	bl	_i2c_stop

;;   i2c_startReceive(BU21072Address, &SIN5_DATA, 1, &CHECK, 1, (cbfI2c)_funcI2CFin);
CLINEA 0000H 0001H 0102H 0004H 0053H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _CHECK
	mov	r1,	#BYTE2 OFFSET _CHECK
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _SIN5_DATA
	mov	r3,	#BYTE2 OFFSET _SIN5_DATA
	l	r0,	NEAR _BU21072Address
	bl	_i2c_startReceive
	add	sp,	#8 

;;    while(_flgI2CFin != 1){
CLINEA 0000H 0000H 0103H 0001H 000BH
	bal	_$L38

;;    while(_flgI2CFin != 1){
CLINEA 0000H 0000H 0103H 0005H 001BH
_$L33 :
CBLOCK 222 3 259

;;        main_clrWDT();
CLINEA 0000H 0001H 0104H 0009H 0016H
	bl	_main_clrWDT
CBLOCKEND 222 3 261

;;    while(_flgI2CFin != 1){
CLINEA 0000H 0000H 0103H 0001H 000BH
_$L38 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L33

;; if(CHECK[1]){
CLINEA 0000H 0001H 0108H 0002H 000EH
	l	r0,	NEAR _CHECK+01h
	beq	_$L35
CBLOCK 222 4 264

;;          RX_LED = 1;
CLINEA 0000H 0001H 0109H 000BH 0015H
	sb	0f260h.2
CBLOCKEND 222 4 266

;;     else{
CLINEA 0000H 0001H 010BH 0006H 000AH
	bal	_$L37
_$L35 :
CBLOCK 222 5 267

;;          TX_LED = 1; 
CLINEA 0000H 0001H 010CH 000BH 0016H
	sb	0f260h.0

;;          NOPx(60000);
CLINEA 0000H 0001H 010DH 000BH 0016H
	mov	r0,	#060h
	mov	r1,	#0eah
	bl	_NOPx

;;	NOPx(60000);
CLINEA 0000H 0001H 010EH 0002H 000DH
	mov	r0,	#060h
	mov	r1,	#0eah
	bl	_NOPx

;;	NOPx(60000);
CLINEA 0000H 0001H 010FH 0002H 000DH
	mov	r0,	#060h
	mov	r1,	#0eah
	bl	_NOPx
CBLOCKEND 222 5 273

;;     } 
CLINEA 0000H 0000H 0111H 0006H 0007H
_$L37 :

;;    goto RX_Loop;
CLINEA 0000H 0001H 0114H 0005H 0011H
	bal	_$L30
CBLOCKEND 222 2 277

;;}//end main
CLINEA 0000H 0001H 0115H 0001H 000BH
CBLOCKEND 222 1 277
CFUNCTIONEND 222


	rseg $$main_clrWDT$main
CFUNCTION 206

_main_clrWDT	:
CBLOCK 206 1 295

;;{
CLINEA 0000H 0001H 0127H 0001H 0001H
CBLOCK 206 2 295

;;    do {
CLINEA 0000H 0001H 012AH 0005H 0008H
_$L42 :
CBLOCK 206 3 298

;;        WDTCON = 0x5Au;
CLINEA 0000H 0001H 012BH 0009H 0017H
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 206 3 300

;;    } while (WDP != 1);
CLINEA 0000H 0000H 012CH 0005H 0017H
	tb	0f00eh.0
	beq	_$L42

;;    WDTCON = 0xA5u;
CLINEA 0000H 0001H 012DH 0005H 0013H
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 206 2 302

;;}
CLINEA 0000H 0001H 012EH 0001H 0001H
	rt
CBLOCKEND 206 1 302
CFUNCTIONEND 206


	rseg $$NOP1000$main
CFUNCTION 221

_NOP1000	:
CBLOCK 221 1 313

;;{
CLINEA 0000H 0001H 0139H 0001H 0001H
CBLOCK 221 2 313
CLOCAL 4AH 0002H 0000H 0002H "ONCNT" 02H 00H 01H
CBLOCKEND 221 2 320

;;}
CLINEA 0000H 0001H 0140H 0001H 0001H
	rt
CBLOCKEND 221 1 320
CFUNCTIONEND 221


	rseg $$Initialization$main
CFUNCTION 207

_Initialization	:
CBLOCK 207 1 326

;;static void Initialization(void) {
CLINEA 0000H 0001H 0146H 0001H 0022H
	push	lr
CBLOCK 207 2 326
CRET 0000H

;;    DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
CLINEA 0000H 0001H 0149H 0005H 0048H
	sb	0f02ah.0

;;    DUA0  = 0; // 0=> Enables the operation of UART0 (initial value).
CLINEA 0000H 0001H 014AH 0005H 0045H
	rb	0f02ah.2

;;    DUA1  = 1; // 0=> Enables Uart1 (initial value).
CLINEA 0000H 0001H 014BH 0005H 0034H
	sb	0f02ah.3

;;    DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
CLINEA 0000H 0001H 014CH 0005H 0048H
	sb	0f02ah.6

;;    DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).
CLINEA 0000H 0001H 014DH 0005H 0049H
	rb	0f02ah.7

;;    BLKCON4 = 0x00; // 0=> Enables SA-ADC
CLINEA 0000H 0001H 014FH 0005H 0029H
	mov	r0,	#00h
	st	r0,	0f02ch

;;    BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
CLINEA 0000H 0001H 0150H 0005H 0055H
	st	r0,	0f02eh

;;    BLKCON7 = 0x00; // (1=disables; 0=enables) the operation of PWW (PWMC, PWMD, PWME, PWMF
CLINEA 0000H 0001H 0151H 0005H 005BH
	st	r0,	0f02fh

;;    PortA_Low();	//Initialize all 3 Ports of Port A to GPIO-Low
CLINEA 0000H 0001H 0154H 0005H 003FH
	bl	_PortA_Low

;;    PortB_Low();	//Initialize all 8 Ports of Port B to GPIO-Low
CLINEA 0000H 0001H 0155H 0005H 003FH
	bl	_PortB_Low

;;    PortC_Low();	//Initialize all 8 Ports of Port C to GPIO-Low
CLINEA 0000H 0001H 0156H 0005H 003FH
	bl	_PortC_Low

;;    PortD_Low();	//Initialize all 6 Ports of Port D to GPIO-Low
CLINEA 0000H 0001H 0157H 0005H 003FH
	bl	_PortD_Low

;;    PB1DIR= 1;		// PortB Bit1 set to Input Mode...
CLINEA 0000H 0001H 015EH 0005H 0032H
	sb	0f259h.1

;;    PB1C1  = 0;		// input with pulldown resistor
CLINEA 0000H 0001H 0161H 0005H 0030H
	rb	0f25bh.1

;;    PB1C0  = 1;
CLINEA 0000H 0001H 0162H 0005H 000FH
	sb	0f25ah.1

;;    PA0MD1  = 0;	// set to General Purpose I/O...
CLINEA 0000H 0001H 0165H 0005H 0031H
	rb	0f255h.0

;;    PA0MD0  = 0;
CLINEA 0000H 0001H 0166H 0005H 0010H
	rb	0f254h.0

;;    PB1D = 1;		// B.1 reads "H" input
CLINEA 0000H 0001H 0169H 0005H 0025H
	sb	0f258h.1

;;    main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 016BH 0005H 0020H
	bl	_main_clrWDT

;;    SetOSC();
CLINEA 0000H 0001H 016FH 0005H 000DH
	bl	_SetOSC

;;    TM8D    = 0;	//Timer 8 DATA Register
CLINEA 0000H 0001H 0175H 0005H 0028H
	mov	r0,	#00h
	st	r0,	0f8e0h

;;    TM8C    = 0;	//Timer 8 CLOCK Register
CLINEA 0000H 0001H 0177H 0005H 0029H
	st	r0,	0f8e1h

;;    T8C1 = 0;	// 01 = HTBCLK
CLINEA 0000H 0001H 017BH 0005H 001CH
	rb	0f8e1h.1

;;    T8C0 = 1;
CLINEA 0000H 0001H 017CH 0005H 000DH
	sb	0f8e1h.0

;;    T89M16 = 0;	// 0=8-Bit Mode; 1=16bit Mode...
CLINEA 0000H 0001H 017EH 0005H 0030H
	rb	0f8e2h.5

;;    T8OST = 0;	// 0=Normal; 1=One-Shot...
CLINEA 0000H 0001H 0180H 0005H 0029H
	rb	0f8e2h.7

;;    T8RUN = 0;	//0=STOP; 1=START...
CLINEA 0000H 0001H 0183H 0005H 0023H
	rb	0f8e3h.0

;;    irq_di();	// Disable Interrupts
CLINEA 0000H 0001H 018AH 0005H 0023H
	bl	_irq_di

;;    irq_init();	// Initialize Interrupts (All Off and NO Requests)
CLINEA 0000H 0001H 018BH 0005H 0042H
	bl	_irq_init

;;    IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;
CLINEA 0000H 0001H 0196H 0005H 0036H
	mov	r0,	#00h
	st	r0,	0f017h
	st	r0,	0f016h
	st	r0,	0f015h
	st	r0,	0f014h
	st	r0,	0f013h
	st	r0,	0f012h
	st	r0,	0f011h
	st	r0,	0f010h

;;    IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;
CLINEA 0000H 0001H 01A1H 0005H 003EH
	st	r0,	0f01fh
	st	r0,	0f01eh
	st	r0,	0f01dh
	st	r0,	0f01ch
	st	r0,	0f01bh
	st	r0,	0f01ah
	st	r0,	0f019h
	st	r0,	0f018h

;;    E2H = 0; 	// E2H is the Enable flag for 2Hz TBC Interrupt (1=ENABLED)
CLINEA 0000H 0001H 01A2H 0005H 0049H
	rb	0f017h.3

;;    (void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
CLINEA 0000H 0001H 01A4H 0005H 003FH
	mov	r2,	#BYTE1 OFFSET __intI2c
	mov	r3,	#BYTE2 OFFSET __intI2c
	mov	r0,	#0ch
	bl	_irq_setHdr

;;    EI2CM = 1;
CLINEA 0000H 0001H 01A6H 0005H 000EH
	sb	0f012h.7

;;    QI2CM = 1;
CLINEA 0000H 0001H 01A7H 0005H 000EH
	sb	0f01ah.7

;;    EUA0 = 1; // EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
CLINEA 0000H 0001H 01A8H 0005H 004CH
	sb	0f014h.0

;;    irq_ei(); // Enable Interrupts
CLINEA 0000H 0001H 01AAH 0005H 0022H
	bl	_irq_ei

;;    WDTMOD = 0x03; 	// 0x03=overflow 8sec...
CLINEA 0000H 0001H 01B0H 0005H 002CH
	mov	r0,	#03h
	st	r0,	0f00fh

;;    main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 01B1H 0005H 0020H
	bl	_main_clrWDT

;;    (void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_OFF);
CLINEA 0000H 0001H 01B7H 0005H 0048H
	mov	r0,	#00h
	push	r0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#01h
	bl	_i2c_init
	add	sp,	#2 

;;    _flgI2CFin = 0;										//reset I2C completed flag
CLINEA 0000H 0001H 01BBH 0005H 0037H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;    i2c_stop();											//Make sure I2C is not currently running
CLINEA 0000H 0001H 01BCH 0005H 0042H
	bl	_i2c_stop

;;    i2c_startSend( BU21072Address, &CLR_INTERRUPT, 1, &CLR, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 01BDH 0005H 0071H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _CLR
	mov	r1,	#BYTE2 OFFSET _CLR
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _CLR_INTERRUPT
	mov	r3,	#BYTE2 OFFSET _CLR_INTERRUPT
	l	r0,	NEAR _BU21072Address
	bl	_i2c_startSend
	add	sp,	#8 

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01BEH 0001H 0015H
	bal	_$L87

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01BEH 0005H 004FH
_$L53 :
CBLOCK 207 3 446

;;       main_clrWDT();
CLINEA 0000H 0001H 01BFH 0008H 0015H
	bl	_main_clrWDT
CBLOCKEND 207 3 448

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01BEH 0001H 0015H
_$L87 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L53

;;    _flgI2CFin = 0;										//reset I2C completed flag
CLINEA 0000H 0001H 01C4H 0005H 0037H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;    i2c_stop();											//Make sure I2C is not currently running
CLINEA 0000H 0001H 01C5H 0005H 0042H
	bl	_i2c_stop

;;    i2c_startSend( BU21072Address, &GA10, 1, &GA0_value, 1, (cbfI2c)_funcI2CFin);			//Begin I2C Receive Command
CLINEA 0000H 0001H 01C6H 0005H 006FH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _GA0_value
	mov	r1,	#BYTE2 OFFSET _GA0_value
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _GA10
	mov	r3,	#BYTE2 OFFSET _GA10
	l	r0,	NEAR _BU21072Address
	bl	_i2c_startSend
	add	sp,	#8 

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01C7H 0001H 0015H
	bal	_$L88

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01C7H 0005H 004FH
_$L57 :
CBLOCK 207 4 455

;;       main_clrWDT();
CLINEA 0000H 0001H 01C8H 0008H 0015H
	bl	_main_clrWDT
CBLOCKEND 207 4 457

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01C7H 0001H 0015H
_$L88 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L57

;;    _flgI2CFin = 0;										//reset I2C completed flag
CLINEA 0000H 0001H 01CBH 0005H 0037H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;    i2c_stop();											//Make sure I2C is not currently running
CLINEA 0000H 0001H 01CCH 0005H 0042H
	bl	_i2c_stop

;;    i2c_startSend( BU21072Address, &ON0, 1, &ON0_value, 1, (cbfI2c)_funcI2CFin);			//Begin I2C Receive Command
CLINEA 0000H 0001H 01CDH 0005H 006EH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _ON0_value
	mov	r1,	#BYTE2 OFFSET _ON0_value
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _ON0
	mov	r3,	#BYTE2 OFFSET _ON0
	l	r0,	NEAR _BU21072Address
	bl	_i2c_startSend
	add	sp,	#8 

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01CEH 0001H 0015H
	bal	_$L89

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01CEH 0005H 004FH
_$L61 :
CBLOCK 207 5 462

;;       main_clrWDT();
CLINEA 0000H 0001H 01CFH 0008H 0015H
	bl	_main_clrWDT
CBLOCKEND 207 5 464

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01CEH 0001H 0015H
_$L89 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L61

;;    _flgI2CFin = 0;										//reset I2C completed flag
CLINEA 0000H 0001H 01D2H 0005H 0037H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;    i2c_stop();											//Make sure I2C is not currently running
CLINEA 0000H 0001H 01D3H 0005H 0042H
	bl	_i2c_stop

;;    i2c_startSend( BU21072Address, &OFF, 1, &OFF_value, 1, (cbfI2c)_funcI2CFin);			//Begin I2C Receive Command
CLINEA 0000H 0001H 01D4H 0005H 006EH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _OFF_value
	mov	r1,	#BYTE2 OFFSET _OFF_value
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _OFF
	mov	r3,	#BYTE2 OFFSET _OFF
	l	r0,	NEAR _BU21072Address
	bl	_i2c_startSend
	add	sp,	#8 

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01D5H 0001H 0015H
	bal	_$L90

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01D5H 0005H 004FH
_$L65 :
CBLOCK 207 6 469

;;       main_clrWDT();
CLINEA 0000H 0001H 01D6H 0008H 0015H
	bl	_main_clrWDT
CBLOCKEND 207 6 471

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01D5H 0001H 0015H
_$L90 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L65

;;    _flgI2CFin = 0;										//reset I2C completed flag
CLINEA 0000H 0001H 01D9H 0005H 0037H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;    i2c_stop();											//Make sure I2C is not currently running
CLINEA 0000H 0001H 01DAH 0005H 0042H
	bl	_i2c_stop

;;    i2c_startSend( BU21072Address, &CONTTIMES, 1, &CONT_value, 1, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 01DBH 0005H 0073H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _CONT_value
	mov	r1,	#BYTE2 OFFSET _CONT_value
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _CONTTIMES
	mov	r3,	#BYTE2 OFFSET _CONTTIMES
	l	r0,	NEAR _BU21072Address
	bl	_i2c_startSend
	add	sp,	#8 

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01DCH 0001H 0015H
	bal	_$L91

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01DCH 0005H 004FH
_$L69 :
CBLOCK 207 7 476

;;       main_clrWDT();
CLINEA 0000H 0001H 01DDH 0008H 0015H
	bl	_main_clrWDT
CBLOCKEND 207 7 478

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01DCH 0001H 0015H
_$L91 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L69

;;    _flgI2CFin = 0;										//reset I2C completed flag
CLINEA 0000H 0001H 01E4H 0005H 0037H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;    i2c_stop();											//Make sure I2C is not currently running
CLINEA 0000H 0001H 01E5H 0005H 0042H
	bl	_i2c_stop

;;    i2c_startSend( BU21072Address, &CFG_SIN10, 1, &GA0ON0, 1, (cbfI2c)_funcI2CFin);			//Begin I2C Receive Command
CLINEA 0000H 0001H 01E6H 0005H 0071H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _GA0ON0
	mov	r1,	#BYTE2 OFFSET _GA0ON0
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _CFG_SIN10
	mov	r3,	#BYTE2 OFFSET _CFG_SIN10
	l	r0,	NEAR _BU21072Address
	bl	_i2c_startSend
	add	sp,	#8 

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01E7H 0001H 0015H
	bal	_$L92

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01E7H 0005H 004FH
_$L73 :
CBLOCK 207 8 487

;;       main_clrWDT();
CLINEA 0000H 0001H 01E8H 0008H 0015H
	bl	_main_clrWDT
CBLOCKEND 207 8 489

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01E7H 0001H 0015H
_$L92 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L73

;;    _flgI2CFin = 0;										//reset I2C completed flag
CLINEA 0000H 0001H 01EBH 0005H 0037H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;    i2c_stop();											//Make sure I2C is not currently running
CLINEA 0000H 0001H 01ECH 0005H 0042H
	bl	_i2c_stop

;;    i2c_startSend( BU21072Address, &CNT, 1, &CNT_CFG , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 01EDH 0005H 006CH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _CNT_CFG
	mov	r1,	#BYTE2 OFFSET _CNT_CFG
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _CNT
	mov	r3,	#BYTE2 OFFSET _CNT
	l	r0,	NEAR _BU21072Address
	bl	_i2c_startSend
	add	sp,	#8 

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01EEH 0001H 0015H
	bal	_$L93

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01EEH 0005H 004FH
_$L77 :
CBLOCK 207 9 494

;;       main_clrWDT();
CLINEA 0000H 0001H 01EFH 0008H 0015H
	bl	_main_clrWDT
CBLOCKEND 207 9 496

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01EEH 0001H 0015H
_$L93 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L77

;;    _flgI2CFin = 0;										//reset I2C completed flag
CLINEA 0000H 0001H 01F2H 0005H 0037H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;    i2c_stop();											//Make sure I2C is not currently running
CLINEA 0000H 0001H 01F3H 0005H 0042H
	bl	_i2c_stop

;;    i2c_startSend( BU21072Address, &CNT, 1, &CNT_CAL, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 01F4H 0005H 006BH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _CNT_CAL
	mov	r1,	#BYTE2 OFFSET _CNT_CAL
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _CNT
	mov	r3,	#BYTE2 OFFSET _CNT
	l	r0,	NEAR _BU21072Address
	bl	_i2c_startSend
	add	sp,	#8 

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01F5H 0001H 0015H
	bal	_$L94

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01F5H 0005H 004FH
_$L81 :
CBLOCK 207 10 501

;;       main_clrWDT();
CLINEA 0000H 0001H 01F6H 0008H 0015H
	bl	_main_clrWDT
CBLOCKEND 207 10 503

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01F5H 0001H 0015H
_$L94 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L81

;;    _flgI2CFin = 0;										//reset I2C completed flag
CLINEA 0000H 0001H 01FBH 0005H 0037H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;    i2c_stop();											//Make sure I2C is not currently running
CLINEA 0000H 0001H 01FCH 0005H 0042H
	bl	_i2c_stop

;;    i2c_startSend( BU21072Address, &CLR_INTERRUPT, 1, &CLR, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 01FDH 0005H 0071H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _CLR
	mov	r1,	#BYTE2 OFFSET _CLR
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _CLR_INTERRUPT
	mov	r3,	#BYTE2 OFFSET _CLR_INTERRUPT
	l	r0,	NEAR _BU21072Address
	bl	_i2c_startSend
	add	sp,	#8 

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01FEH 0001H 0015H
	bal	_$L95

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01FEH 0005H 004FH
_$L85 :
CBLOCK 207 11 510

;;       main_clrWDT();
CLINEA 0000H 0001H 01FFH 0008H 0015H
	bl	_main_clrWDT
CBLOCKEND 207 11 512

;;    while(_flgI2CFin != 1) {									//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 01FEH 0001H 0015H
_$L95 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L85
CBLOCKEND 207 2 573

;;}//End Initialization
CLINEA 0000H 0001H 023DH 0001H 0015H
	pop	pc
CBLOCKEND 207 1 573
CFUNCTIONEND 207


	rseg $$_funcI2CFin$main
CFUNCTION 217

__funcI2CFin	:
CBLOCK 217 1 585

;;{
CLINEA 0000H 0001H 0249H 0001H 0001H
	push	lr
CBLOCK 217 2 585
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;    i2c_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 024AH 0005H 0056H
	bl	_i2c_continue

;;    _flgI2CFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 024BH 0005H 0028H
	mov	r0,	#01h
	st	r0,	NEAR __flgI2CFin

;;    main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 024CH 0005H 0031H
	bl	_main_reqNotHalt
CBLOCKEND 217 2 589

;;}
CLINEA 0000H 0001H 024DH 0001H 0001H
	pop	pc
CBLOCKEND 217 1 589
CFUNCTIONEND 217


	rseg $$_intI2c$main
CFUNCTION 220

__intI2c	:
CBLOCK 220 1 600

;;{
CLINEA 0000H 0001H 0258H 0001H 0001H
	push	lr
CBLOCK 220 2 600
CRET 0000H

;;    (void)i2c_continue();
CLINEA 0000H 0001H 0259H 0005H 0019H
	bl	_i2c_continue

;;    main_reqNotHalt();
CLINEA 0000H 0001H 025AH 0005H 0016H
	bl	_main_reqNotHalt
CBLOCKEND 220 2 603

;;}
CLINEA 0000H 0001H 025BH 0001H 0001H
	pop	pc
CBLOCKEND 220 1 603
CFUNCTIONEND 220


	rseg $$checkI2C$main
CFUNCTION 218

_checkI2C	:
CBLOCK 218 1 614

;;{
CLINEA 0000H 0001H 0266H 0001H 0001H
	push	lr
CBLOCK 218 2 614
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "ret" 02H 00H 01H

;;    while (ret != 1) {
CLINEA 0000H 0000H 026BH 0005H 0016H
_$L101 :
CBLOCK 218 3 619

;;        ret = i2c_continue();
CLINEA 0000H 0000H 026CH 0009H 001DH
	bl	_i2c_continue
CBLOCK 218 4 621
CBLOCKEND 218 4 623
CBLOCKEND 218 3 624

;;    while (ret != 1) {
CLINEA 0000H 0000H 026BH 0000H 0000H
	cmp	r0,	#01h
	cmpc	r1,	#00h
	bne	_$L101
CBLOCKEND 218 2 625

;;}
CLINEA 0000H 0001H 0271H 0001H 0001H
	pop	pc
CBLOCKEND 218 1 625
CFUNCTIONEND 218


	rseg $$main_reqNotHalt$main
CFUNCTION 219

_main_reqNotHalt	:
CBLOCK 219 1 635

;;{
CLINEA 0000H 0001H 027BH 0001H 0001H
CBLOCK 219 2 635

;;    _reqNotHalt = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 027CH 0005H 0029H
	mov	r0,	#01h
	st	r0,	NEAR __reqNotHalt
CBLOCKEND 219 2 637

;;}
CLINEA 0000H 0001H 027DH 0001H 0001H
	rt
CBLOCKEND 219 1 637
CFUNCTIONEND 219


	rseg $$SetOSC$main
CFUNCTION 208

_SetOSC	:
CBLOCK 208 1 643

;;static void SetOSC(void) {
CLINEA 0000H 0001H 0283H 0001H 001AH
CBLOCK 208 2 643

;;    SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
CLINEA 0000H 0001H 0286H 0005H 004DH
	rb	0f002h.0

;;    SYSC1 = 0;
CLINEA 0000H 0001H 0287H 0005H 000EH
	rb	0f002h.1

;;    OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
CLINEA 0000H 0001H 0289H 0005H 0037H
	sb	0f002h.3

;;    OSCM0 = 0;
CLINEA 0000H 0001H 028AH 0005H 000EH
	rb	0f002h.2

;;    ENOSC = 1;			//1=Enable High Speed Oscillator...
CLINEA 0000H 0001H 028CH 0005H 0034H
	sb	0f003h.1

;;    SYSCLK = 1;			//1=HSCLK; 0=LSCLK
CLINEA 0000H 0001H 028DH 0005H 0024H
	sb	0f003h.0

;;    LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013
CLINEA 0000H 0001H 028FH 0005H 0048H
	sb	0f003h.7

;;    __EI();			//INT enable
CLINEA 0000H 0001H 0291H 0005H 001AH
	ei
CBLOCKEND 208 2 658

;;}
CLINEA 0000H 0001H 0292H 0001H 0001H
	rt
CBLOCKEND 208 1 658
CFUNCTIONEND 208


	rseg $$analog_comparator$main
CFUNCTION 209

_analog_comparator	:
CBLOCK 209 1 665

;;void analog_comparator(void) {
CLINEA 0000H 0001H 0299H 0001H 001EH
CBLOCK 209 2 665

;;    CMP0EN  = 0x01; 	// Comparator ON...
CLINEA 0000H 0001H 02A7H 0005H 0028H
	sb	0f950h.0

;;    CMP0E1  = 0x00; 	// No Interupt...
CLINEA 0000H 0001H 02A8H 0005H 0026H
	rb	0f951h.1

;;    CMP0E0  = 0x00;
CLINEA 0000H 0001H 02A9H 0005H 0013H
	rb	0f951h.0

;;    CMP0SM1 = 0x00; 	// Detect without Sampling...
CLINEA 0000H 0001H 02AAH 0005H 0032H
	rb	0f951h.3

;;    CMP0RFS = 0x01; 	// Differential Input on B5
CLINEA 0000H 0001H 02ABH 0005H 0030H
	sb	0f951h.4

;;    CMP0EN  = 0x00;
CLINEA 0000H 0001H 02AEH 0005H 0013H
	rb	0f950h.0
CBLOCKEND 209 2 687

;;}
CLINEA 0000H 0001H 02AFH 0001H 0001H
	rt
CBLOCKEND 209 1 687
CFUNCTIONEND 209


	rseg $$PortA_Low$main
CFUNCTION 210

_PortA_Low	:
CBLOCK 210 1 694

;;void PortA_Low(void) {
CLINEA 0000H 0001H 02B6H 0001H 0016H
CBLOCK 210 2 694

;;    PA0DIR = 0;		// PortA Bit0 set to Output Mode...
CLINEA 0000H 0001H 02BFH 0005H 0034H
	rb	0f251h.0

;;    PA1DIR = 0;		// PortA Bit1 set to Output Mode...
CLINEA 0000H 0001H 02C0H 0005H 0034H
	rb	0f251h.1

;;    PA2DIR = 0;		// PortA Bit2 set to Output Mode...
CLINEA 0000H 0001H 02C1H 0005H 0034H
	rb	0f251h.2

;;    PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
CLINEA 0000H 0001H 02C4H 0005H 0034H
	sb	0f253h.0

;;    PA0C0  = 1;
CLINEA 0000H 0001H 02C5H 0005H 000FH
	sb	0f252h.0

;;    PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
CLINEA 0000H 0001H 02C6H 0005H 0034H
	sb	0f253h.1

;;    PA1C0  = 1;
CLINEA 0000H 0001H 02C7H 0005H 000FH
	sb	0f252h.1

;;    PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
CLINEA 0000H 0001H 02C8H 0005H 0034H
	sb	0f253h.2

;;    PA2C0  = 1;
CLINEA 0000H 0001H 02C9H 0005H 000FH
	sb	0f252h.2

;;    PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 02CCH 0005H 003FH
	rb	0f255h.0

;;    PA0MD0  = 0;
CLINEA 0000H 0001H 02CDH 0005H 0010H
	rb	0f254h.0

;;    PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 02CEH 0005H 003FH
	rb	0f255h.1

;;    PA1MD0  = 0;
CLINEA 0000H 0001H 02CFH 0005H 0010H
	rb	0f254h.1

;;    PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 02D0H 0005H 003FH
	rb	0f255h.2

;;    PA2MD0  = 0;
CLINEA 0000H 0001H 02D1H 0005H 0010H
	rb	0f254h.2

;;    PA0D = 0;		// A.0 Output OFF....
CLINEA 0000H 0001H 02D4H 0005H 0024H
	rb	0f250h.0

;;    PA1D = 0;		// A.1 Output OFF....
CLINEA 0000H 0001H 02D5H 0005H 0024H
	rb	0f250h.1

;;    PA2D = 0;		// A.2 Output OFF....
CLINEA 0000H 0001H 02D6H 0005H 0024H
	rb	0f250h.2

;;    main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 02D8H 0005H 0020H
	b	_main_clrWDT
CBLOCKEND 210 2 729
CLINEA 0000H 0001H 02D9H 0001H 0001H
CBLOCKEND 210 1 729
CFUNCTIONEND 210


	rseg $$PortB_Low$main
CFUNCTION 211

_PortB_Low	:
CBLOCK 211 1 736

;;void PortB_Low(void) {
CLINEA 0000H 0001H 02E0H 0001H 0016H
CBLOCK 211 2 736

;;    PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 02E9H 0005H 0034H
	rb	0f259h.0

;;    PB1DIR = 0;		// PortB Bit1 set to Output Mode...
CLINEA 0000H 0001H 02EAH 0005H 0034H
	rb	0f259h.1

;;    PB2DIR = 0;		// PortB Bit2 set to Output Mode...
CLINEA 0000H 0001H 02EBH 0005H 0034H
	rb	0f259h.2

;;    PB3DIR = 0;		// PortB Bit3 set to Output Mode...
CLINEA 0000H 0001H 02ECH 0005H 0034H
	rb	0f259h.3

;;    PB4DIR = 0;		// PortB Bit4 set to Output Mode...
CLINEA 0000H 0001H 02EDH 0005H 0034H
	rb	0f259h.4

;;    PB5DIR = 0;		// PortB Bit5 set to Output Mode...
CLINEA 0000H 0001H 02EEH 0005H 0034H
	rb	0f259h.5

;;    PB6DIR = 0;		// PortB Bit6 set to Output Mode...
CLINEA 0000H 0001H 02EFH 0005H 0034H
	rb	0f259h.6

;;    PB7DIR = 0;		// PortB Bit7 set to Output Mode...
CLINEA 0000H 0001H 02F0H 0005H 0034H
	rb	0f259h.7

;;    PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 02F3H 0005H 0034H
	sb	0f25bh.0

;;    PB0C0  = 1;
CLINEA 0000H 0001H 02F4H 0005H 000FH
	sb	0f25ah.0

;;    PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
CLINEA 0000H 0001H 02F5H 0005H 0034H
	sb	0f25bh.1

;;    PB1C0  = 1;
CLINEA 0000H 0001H 02F6H 0005H 000FH
	sb	0f25ah.1

;;    PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
CLINEA 0000H 0001H 02F7H 0005H 0034H
	sb	0f25bh.2

;;    PB2C0  = 1;
CLINEA 0000H 0001H 02F8H 0005H 000FH
	sb	0f25ah.2

;;    PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
CLINEA 0000H 0001H 02F9H 0005H 0034H
	sb	0f25bh.3

;;    PB3C0  = 1;
CLINEA 0000H 0001H 02FAH 0005H 000FH
	sb	0f25ah.3

;;    PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
CLINEA 0000H 0001H 02FBH 0005H 0034H
	sb	0f25bh.4

;;    PB4C0  = 1;
CLINEA 0000H 0001H 02FCH 0005H 000FH
	sb	0f25ah.4

;;    PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
CLINEA 0000H 0001H 02FDH 0005H 0034H
	sb	0f25bh.5

;;    PB5C0  = 1;
CLINEA 0000H 0001H 02FEH 0005H 000FH
	sb	0f25ah.5

;;    PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
CLINEA 0000H 0001H 02FFH 0005H 0034H
	sb	0f25bh.6

;;    PB6C0  = 1;
CLINEA 0000H 0001H 0300H 0005H 000FH
	sb	0f25ah.6

;;    PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
CLINEA 0000H 0001H 0301H 0005H 0034H
	sb	0f25bh.7

;;    PB7C0  = 1;
CLINEA 0000H 0001H 0302H 0005H 000FH
	sb	0f25ah.7

;;    PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0305H 0005H 003FH
	rb	0f25dh.0

;;    PB0MD0  = 0;
CLINEA 0000H 0001H 0306H 0005H 0010H
	rb	0f25ch.0

;;    PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0307H 0005H 003FH
	rb	0f25dh.1

;;    PB1MD0  = 0;
CLINEA 0000H 0001H 0308H 0005H 0010H
	rb	0f25ch.1

;;    PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0309H 0005H 003FH
	rb	0f25dh.2

;;    PB2MD0  = 0;
CLINEA 0000H 0001H 030AH 0005H 0010H
	rb	0f25ch.2

;;    PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 030BH 0005H 003FH
	rb	0f25dh.3

;;    PB3MD0  = 0;
CLINEA 0000H 0001H 030CH 0005H 0010H
	rb	0f25ch.3

;;    PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 030DH 0005H 003FH
	rb	0f25dh.4

;;    PB4MD0  = 0;
CLINEA 0000H 0001H 030EH 0005H 0010H
	rb	0f25ch.4

;;    PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 030FH 0005H 003FH
	rb	0f25dh.5

;;    PB5MD0  = 0;
CLINEA 0000H 0001H 0310H 0005H 0010H
	rb	0f25ch.5

;;    PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 0311H 0005H 003FH
	rb	0f25dh.6

;;    PB6MD0  = 0;
CLINEA 0000H 0001H 0312H 0005H 0010H
	rb	0f25ch.6

;;    PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 0313H 0005H 003FH
	rb	0f25dh.7

;;    PB7MD0  = 0;
CLINEA 0000H 0001H 0314H 0005H 0010H
	rb	0f25ch.7

;;    PB0D = 0;		// B.0 Output OFF....
CLINEA 0000H 0001H 0317H 0005H 0024H
	rb	0f258h.0

;;    PB1D = 0;		// B.1 Output OFF....
CLINEA 0000H 0001H 0318H 0005H 0024H
	rb	0f258h.1

;;    PB2D = 0;;		// B.2 Output OFF....
CLINEA 0000H 0001H 0319H 0005H 0025H
	rb	0f258h.2

;;    PB3D = 0;		// B.3 Output OFF....
CLINEA 0000H 0001H 031AH 0005H 0024H
	rb	0f258h.3

;;    PB4D = 0;		// B.4 Output OFF....
CLINEA 0000H 0001H 031BH 0005H 0024H
	rb	0f258h.4

;;    PB5D = 0;		// B.5 Output OFF....
CLINEA 0000H 0001H 031CH 0005H 0024H
	rb	0f258h.5

;;    PB6D = 0;		// B.6 Output OFF....
CLINEA 0000H 0001H 031DH 0005H 0024H
	rb	0f258h.6

;;    PB7D = 0;		// B.7 Output OFF....
CLINEA 0000H 0001H 031EH 0005H 0024H
	rb	0f258h.7

;;    main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0320H 0005H 0020H
	b	_main_clrWDT
CBLOCKEND 211 2 801
CLINEA 0000H 0001H 0321H 0001H 0001H
CBLOCKEND 211 1 801
CFUNCTIONEND 211


	rseg $$PortC_Low$main
CFUNCTION 212

_PortC_Low	:
CBLOCK 212 1 808

;;void PortC_Low(void) {
CLINEA 0000H 0001H 0328H 0001H 0016H
CBLOCK 212 2 808

;;    PC0DIR = 0;		// PortC Bit0 set to Output Mode...
CLINEA 0000H 0001H 0331H 0005H 0034H
	rb	0f261h.0

;;    PC1DIR = 0;		// PortC Bit1 set to Output Mode...
CLINEA 0000H 0001H 0332H 0005H 0034H
	rb	0f261h.1

;;    PC2DIR = 0;		// PortC Bit2 set to Output Mode...
CLINEA 0000H 0001H 0333H 0005H 0034H
	rb	0f261h.2

;;    PC3DIR = 0;		// PortC Bit3 set to Output Mode...
CLINEA 0000H 0001H 0334H 0005H 0034H
	rb	0f261h.3

;;    PC4DIR = 0;		// PortC Bit4 set to Output Mode...
CLINEA 0000H 0001H 0335H 0005H 0034H
	rb	0f261h.4

;;    PC5DIR = 0;		// PortC Bit5 set to Output Mode...
CLINEA 0000H 0001H 0336H 0005H 0034H
	rb	0f261h.5

;;    PC6DIR = 0;		// PortC Bit6 set to Output Mode...
CLINEA 0000H 0001H 0337H 0005H 0034H
	rb	0f261h.6

;;    PC7DIR = 0;		// PortC Bit7 set to Output Mode...
CLINEA 0000H 0001H 0338H 0005H 0034H
	rb	0f261h.7

;;    PC0C1  = 1;		// PortC Bit0 set to High-Impedance Output...
CLINEA 0000H 0001H 033BH 0005H 003EH
	sb	0f263h.0

;;    PC0C0  = 1;
CLINEA 0000H 0001H 033CH 0005H 000FH
	sb	0f262h.0

;;    PC1C1  = 1;		// PortC Bit1 set to High-Impedance Output...
CLINEA 0000H 0001H 033DH 0005H 003EH
	sb	0f263h.1

;;    PC1C0  = 1;
CLINEA 0000H 0001H 033EH 0005H 000FH
	sb	0f262h.1

;;    PC2C1  = 1;		// PortC Bit2 set to High-Impedance Output...
CLINEA 0000H 0001H 033FH 0005H 003EH
	sb	0f263h.2

;;    PC2C0  = 1;
CLINEA 0000H 0001H 0340H 0005H 000FH
	sb	0f262h.2

;;    PC3C1  = 1;		// PortC Bit3 set to High-Impedance Output...
CLINEA 0000H 0001H 0341H 0005H 003EH
	sb	0f263h.3

;;    PC3C0  = 1;
CLINEA 0000H 0001H 0342H 0005H 000FH
	sb	0f262h.3

;;    PC4C1  = 1;		// PortC Bit4 set to High-Impedance Output...
CLINEA 0000H 0001H 0343H 0005H 003EH
	sb	0f263h.4

;;    PC4C0  = 1;
CLINEA 0000H 0001H 0344H 0005H 000FH
	sb	0f262h.4

;;    PC5C1  = 1;		// PortC Bit5 set to High-Impedance Output...
CLINEA 0000H 0001H 0345H 0005H 003EH
	sb	0f263h.5

;;    PC5C0  = 1;
CLINEA 0000H 0001H 0346H 0005H 000FH
	sb	0f262h.5

;;    PC6C1  = 1;		// PortC Bit6 set to High-Impedance Output...
CLINEA 0000H 0001H 0347H 0005H 003EH
	sb	0f263h.6

;;    PC6C0  = 1;
CLINEA 0000H 0001H 0348H 0005H 000FH
	sb	0f262h.6

;;    PC7C1  = 1;		// PortC Bit7 set to High-Impedance Output...
CLINEA 0000H 0001H 0349H 0005H 003EH
	sb	0f263h.7

;;    PC7C0  = 1;
CLINEA 0000H 0001H 034AH 0005H 000FH
	sb	0f262h.7

;;    PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 034DH 0005H 003FH
	rb	0f265h.0

;;    PC0MD0  = 0;
CLINEA 0000H 0001H 034EH 0005H 0010H
	rb	0f264h.0

;;    PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 034FH 0005H 003FH
	rb	0f265h.1

;;    PC1MD0  = 0;
CLINEA 0000H 0001H 0350H 0005H 0010H
	rb	0f264h.1

;;    PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0351H 0005H 003FH
	rb	0f265h.2

;;    PC2MD0  = 0;
CLINEA 0000H 0001H 0352H 0005H 0010H
	rb	0f264h.2

;;    PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 0353H 0005H 003FH
	rb	0f265h.3

;;    PC3MD0  = 0;
CLINEA 0000H 0001H 0354H 0005H 0010H
	rb	0f264h.3

;;    PC4MD1  = 0;	// PortC Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 0355H 0005H 003FH
	rb	0f265h.4

;;    PC4MD0  = 0;
CLINEA 0000H 0001H 0356H 0005H 0010H
	rb	0f264h.4

;;    PC5MD1  = 0;	// PortC Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 0357H 0005H 003FH
	rb	0f265h.5

;;    PC5MD0  = 0;
CLINEA 0000H 0001H 0358H 0005H 0010H
	rb	0f264h.5

;;    PC6MD1  = 0;	// PortC Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 0359H 0005H 003FH
	rb	0f265h.6

;;    PC6MD0  = 0;
CLINEA 0000H 0001H 035AH 0005H 0010H
	rb	0f264h.6

;;    PC7MD1  = 0;	// PortC Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 035BH 0005H 003FH
	rb	0f265h.7

;;    PC7MD0  = 0;
CLINEA 0000H 0001H 035CH 0005H 0010H
	rb	0f264h.7

;;    PC0D = 0;		// C.0 Output OFF....
CLINEA 0000H 0001H 035FH 0005H 0024H
	rb	0f260h.0

;;    PC1D = 0;		// C.1 Output OFF....
CLINEA 0000H 0001H 0360H 0005H 0024H
	rb	0f260h.1

;;    PC2D = 0;		// C.2 Output OFF....
CLINEA 0000H 0001H 0361H 0005H 0024H
	rb	0f260h.2

;;    PC3D = 0;		// C.3 Output OFF....
CLINEA 0000H 0001H 0362H 0005H 0024H
	rb	0f260h.3

;;    PC4D = 0;		// C.4 Output OFF....
CLINEA 0000H 0001H 0363H 0005H 0024H
	rb	0f260h.4

;;    PC5D = 0;		// C.5 Output OFF....
CLINEA 0000H 0001H 0364H 0005H 0024H
	rb	0f260h.5

;;    PC6D = 0;		// C.6 Output OFF....
CLINEA 0000H 0001H 0365H 0005H 0024H
	rb	0f260h.6

;;    PC7D = 0;		// C.7 Output OFF....
CLINEA 0000H 0001H 0366H 0005H 0024H
	rb	0f260h.7

;;    main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0368H 0005H 0020H
	b	_main_clrWDT
CBLOCKEND 212 2 873
CLINEA 0000H 0001H 0369H 0001H 0001H
CBLOCKEND 212 1 873
CFUNCTIONEND 212


	rseg $$PortD_Low$main
CFUNCTION 213

_PortD_Low	:
CBLOCK 213 1 880

;;void PortD_Low(void) {
CLINEA 0000H 0001H 0370H 0001H 0016H
CBLOCK 213 2 880

;;    PD0DIR = 0;		// PortD Bit0 set to Output Mode...
CLINEA 0000H 0001H 0378H 0005H 0034H
	rb	0f269h.0

;;    PD1DIR = 0;		// PortD Bit1 set to Output Mode...
CLINEA 0000H 0001H 0379H 0005H 0034H
	rb	0f269h.1

;;    PD2DIR = 0;		// PortD Bit2 set to Output Mode...
CLINEA 0000H 0001H 037AH 0005H 0034H
	rb	0f269h.2

;;    PD3DIR = 0;		// PortD Bit3 set to Output Mode...
CLINEA 0000H 0001H 037BH 0005H 0034H
	rb	0f269h.3

;;    PD4DIR = 0;		// PortD Bit4 set to Output Mode...
CLINEA 0000H 0001H 037CH 0005H 0034H
	rb	0f269h.4

;;    PD5DIR = 0;		// PortD Bit5 set to Output Mode...
CLINEA 0000H 0001H 037DH 0005H 0034H
	rb	0f269h.5

;;    PD0C1= 1;		// PortD Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0380H 0005H 0032H
	sb	0f26bh.0

;;    PD0C0= 1;
CLINEA 0000H 0001H 0381H 0005H 000DH
	sb	0f26ah.0

;;    PD1C1= 1;		// PortD Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0382H 0005H 0032H
	sb	0f26bh.1

;;    PD1C0= 1;
CLINEA 0000H 0001H 0383H 0005H 000DH
	sb	0f26ah.1

;;    PD2C1= 1;		// PortD Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0384H 0005H 0032H
	sb	0f26bh.2

;;    PD2C0= 1;
CLINEA 0000H 0001H 0385H 0005H 000DH
	sb	0f26ah.2

;;    PD3C1= 1;		// PortD Bit3 set to CMOS Output...
CLINEA 0000H 0001H 0386H 0005H 0032H
	sb	0f26bh.3

;;    PD3C0= 1;
CLINEA 0000H 0001H 0387H 0005H 000DH
	sb	0f26ah.3

;;    PD4C1= 1;		// PortD Bit4 set to CMOS Output...
CLINEA 0000H 0001H 0388H 0005H 0032H
	sb	0f26bh.4

;;    PD4C0= 1;
CLINEA 0000H 0001H 0389H 0005H 000DH
	sb	0f26ah.4

;;    PD5C1= 1;		// PortD Bit5 set to CMOS Output...
CLINEA 0000H 0001H 038AH 0005H 0032H
	sb	0f26bh.5

;;    PD5C0= 1;
CLINEA 0000H 0001H 038BH 0005H 000DH
	sb	0f26ah.5

;;    PD0D = 0;		// D.0 Output OFF....
CLINEA 0000H 0001H 038EH 0005H 0024H
	rb	0f268h.0

;;    PD1D = 0;		// D.1 Output OFF....
CLINEA 0000H 0001H 038FH 0005H 0024H
	rb	0f268h.1

;;    PD2D = 0;		// D.2 Output OFF....
CLINEA 0000H 0001H 0390H 0005H 0024H
	rb	0f268h.2

;;    PD3D = 0;		// D.3 Output OFF....
CLINEA 0000H 0001H 0391H 0005H 0024H
	rb	0f268h.3

;;    PD4D = 0;		// D.4 Output OFF....
CLINEA 0000H 0001H 0392H 0005H 0024H
	rb	0f268h.4

;;    PD5D = 0;		// D.5 Output OFF....
CLINEA 0000H 0001H 0393H 0005H 0024H
	rb	0f268h.5

;;    main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0395H 0005H 0020H
	b	_main_clrWDT
CBLOCKEND 213 2 918
CLINEA 0000H 0001H 0396H 0001H 0001H
CBLOCKEND 213 1 918
CFUNCTIONEND 213


	rseg $$PortA_Digital_Inputs$main
CFUNCTION 214

_PortA_Digital_Inputs	:
CBLOCK 214 1 925

;;void PortA_Digital_Inputs(void) {
CLINEA 0000H 0001H 039DH 0001H 0021H
CBLOCK 214 2 925

;;    PA0DIR = 1;		// PortA Bit0 set to Input Mode...
CLINEA 0000H 0001H 03A6H 0005H 0033H
	sb	0f251h.0

;;    PA1DIR = 1;		// PortA Bit1 set to Input Mode...
CLINEA 0000H 0001H 03A7H 0005H 0033H
	sb	0f251h.1

;;    PA2DIR = 1;		// PortA Bit2 set to Input Mode...
CLINEA 0000H 0001H 03A8H 0005H 0033H
	sb	0f251h.2

;;    PA0C1  = 1;		// PortA Bit0 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 03ABH 0005H 0044H
	sb	0f253h.0

;;    PA0C0  = 0;
CLINEA 0000H 0001H 03ACH 0005H 000FH
	rb	0f252h.0

;;    PA1C1  = 1;		// PortA Bit1 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 03ADH 0005H 0044H
	sb	0f253h.1

;;    PA1C0  = 0;
CLINEA 0000H 0001H 03AEH 0005H 000FH
	rb	0f252h.1

;;    PA2C1  = 1;		// PortA Bit2 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 03AFH 0005H 0044H
	sb	0f253h.2

;;    PA2C0  = 0;
CLINEA 0000H 0001H 03B0H 0005H 000FH
	rb	0f252h.2

;;    PA0MD1  = 0;	// PortA Bit0 set to General Purpose I/O...
CLINEA 0000H 0001H 03B3H 0005H 003CH
	rb	0f255h.0

;;    PA0MD0  = 0;
CLINEA 0000H 0001H 03B4H 0005H 0010H
	rb	0f254h.0

;;    PA1MD1  = 0;	// PortA Bit1 set to General Purpose I/O...
CLINEA 0000H 0001H 03B5H 0005H 003CH
	rb	0f255h.1

;;    PA1MD0  = 0;
CLINEA 0000H 0001H 03B6H 0005H 0010H
	rb	0f254h.1

;;    PA2MD1  = 0;	// PortA Bit2 set to General Purpose I/O...
CLINEA 0000H 0001H 03B7H 0005H 003CH
	rb	0f255h.2

;;    PA2MD0  = 0;
CLINEA 0000H 0001H 03B8H 0005H 0010H
	rb	0f254h.2

;;    main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 03BAH 0005H 0020H
	b	_main_clrWDT
CBLOCKEND 214 2 955
CLINEA 0000H 0001H 03BBH 0001H 0001H
CBLOCKEND 214 1 955
CFUNCTIONEND 214


	rseg $$IRLED_PWM$main
CFUNCTION 215

_IRLED_PWM	:
CBLOCK 215 1 962

;;void IRLED_PWM(void) {
CLINEA 0000H 0001H 03C2H 0001H 0016H
CBLOCK 215 2 962

;;    PF1EN = 1;		//The PF2EN, PF1EN, and PF0EN are output enable bits of PWMF0 to 2
CLINEA 0000H 0001H 03CDH 0005H 0052H
	sb	0f976h.5

;;    PC1DIR = 0;		// PortC Bit1 set to Output Mode...
CLINEA 0000H 0001H 03D0H 0005H 0034H
	rb	0f261h.1

;;    PC1C1  = 1;		// PortC Bit1 set to CMOS Output...
CLINEA 0000H 0001H 03D3H 0005H 0034H
	sb	0f263h.1

;;    PC1C0  = 1;
CLINEA 0000H 0001H 03D4H 0005H 000FH
	sb	0f262h.1

;;    PC1MD1  = 1;	// PortC Bit1 set to PWMF1 Output (1,0)...
CLINEA 0000H 0001H 03D7H 0005H 003BH
	sb	0f265h.1

;;    PC1MD0  = 0;
CLINEA 0000H 0001H 03D8H 0005H 0010H
	rb	0f264h.1

;;    PFCS1 = 1;	//00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 03DBH 0005H 0026H
	sb	0f972h.1

;;    PFCS0 = 0;
CLINEA 0000H 0001H 03DCH 0005H 000EH
	rb	0f972h.0

;;    PWFP = 428;		// Init Period to ~38 kHz
CLINEA 0000H 0001H 03DFH 0005H 002AH
	mov	r0,	#0ach
	mov	r1,	#01h
	st	er0,	0f960h

;;    PWF1ED =  214;		//  ~  50 % duty cycle @ 38 kHz
CLINEA 0000H 0001H 03E2H 0005H 0033H
	mov	r0,	#0d6h
	mov	r1,	#00h
	st	er0,	0f964h

;;    PFRUN = 1;			// Turn ON
CLINEA 0000H 0001H 03E5H 0005H 001BH
	sb	0f973h.0
CBLOCKEND 215 2 998

;;}
CLINEA 0000H 0001H 03E6H 0001H 0001H
	rt
CBLOCKEND 215 1 998
CFUNCTIONEND 215


	rseg $$NOPx$main
CFUNCTION 216

_NOPx	:
CBLOCK 216 1 1005

;;void NOPx( unsigned int MyCount ){
CLINEA 0000H 0001H 03EDH 0001H 0022H
	push	er8
	mov	er8,	er0
CBLOCK 216 2 1005
CARGUMENT 46H 0002H 0028H "MyCount" 02H 00H 01H
CLOCAL 46H 0002H 0024H 0002H "ONCNT" 02H 00H 01H
CLOCAL 46H 0002H 0025H 0002H "xxx" 02H 00H 01H

;;    unsigned int ONCNT = 0;
CLINEA 0000H 0001H 03EEH 0005H 001BH
	mov	er0,	#0 

;;    xxx = MyCount;
CLINEA 0000H 0001H 03F1H 0005H 0012H
	mov	er2,	er8

;;        while(ONCNT < xxx) {	// NOP for "xxx" Cycles
CLINEA 0000H 0001H 03F2H 0009H 0034H
	bal	_$L115
_$L117 :
CBLOCK 216 3 1010

;;            ONCNT++;
CLINEA 0000H 0000H 03F3H 000DH 0014H
	add	er0,	#1 
CBLOCKEND 216 3 1012

;;        }
CLINEA 0000H 0000H 03F4H 0009H 0009H
_$L115 :

;;        while(ONCNT < xxx) {	// NOP for "xxx" Cycles
CLINEA 0000H 0000H 03F2H 0000H 0000H
	cmp	er0,	er2
	blt	_$L117
CBLOCKEND 216 2 1014

;;}
CLINEA 0000H 0001H 03F6H 0001H 0001H
	pop	er8
	rt
CBLOCKEND 216 1 1014
CFUNCTIONEND 216

	public _IRLED_PWM
	public _checkI2C
	public _main_clrWDT
	public _main_reqNotHalt
	public _NOPx
	public _PortA_Digital_Inputs
	public _main
	public _PortD_Low
	public _NOP1000
	public _PortC_Low
	public _PortB_Low
	public _PortA_Low
	public _analog_comparator
	__flgI2CFin comm data 01h #00h
	__reqNotHalt comm data 01h #00h
	extrn code near : _irq_init
	extrn code near : _i2c_stop
	extrn code near : _i2c_startReceive
	extrn code near : _i2c_continue
	extrn code near : _irq_di
	extrn code near : _irq_ei
	extrn code near : _irq_setHdr
	extrn code near : _i2c_startSend
	extrn code near : _i2c_init
	extrn code : $$start_up

	cseg #00h at 02h
	dw	$$start_up

	rseg $$NINITTAB
	db	05ch
	db	0fah
	db	0ffh
	db	010h
	db	0c0h
	db	0c1h
	db	0c2h
	db	0c3h
	db	0c4h
	db	0c8h
	db	0c9h
	db	0cah
	db	0cbh
	db	0cch
	db	0cdh
	db	0ceh
	db	0cfh
	db	00h
	db	01h
	db	02h
	db	03h
	db	04h
	db	05h
	db	06h
	db	07h
	db	08h
	db	09h
	db	0f0h
	db	0f1h
	db	0f2h
	db	0f4h
	db	0f5h
	db	0f4h
	db	0f5h
	db	07h
	db	01h
	db	00h
	db	01fh
	db	00h
	db	00h
	db	03h
	db	04h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h

	rseg $$NINITVAR
_BU21072Address :
	ds	01h
_LEDDrive_LED_CH :
	ds	01h
_CNT :
	ds	01h
_INTERRUPT :
	ds	01h
_CFG_SIN10 :
	ds	01h
_CFG_SIN32 :
	ds	01h
_CFG_SIN54 :
	ds	01h
_CFG_SIN76 :
	ds	01h
_CFG_SIN98 :
	ds	01h
_GA10 :
	ds	01h
_GA2 :
	ds	01h
_ON0 :
	ds	01h
_ON1 :
	ds	01h
_ON2 :
	ds	01h
_OFF :
	ds	01h
_OSTIMES :
	ds	01h
_CONTTIMES :
	ds	01h
_SIN0_DATA :
	ds	01h
_SIN1_DATA :
	ds	01h
_SIN2_DATA :
	ds	01h
_SIN3_DATA :
	ds	01h
_SIN4_DATA :
	ds	01h
_SIN5_DATA :
	ds	01h
_SIN6_DATA :
	ds	01h
_SIN7_DATA :
	ds	01h
_SIN8_DATA :
	ds	01h
_SIN9_DATA :
	ds	01h
_CLR_INTERRUPT :
	ds	01h
_CLR_DETECT_ON07 :
	ds	01h
_CLR_DETECT_ON89 :
	ds	01h
_CLR_DETECT_OFF07 :
	ds	01h
_CLR_DETECT_OFF89 :
	ds	01h
_CLR_DETECT_CONT07 :
	ds	01h
_CLR_DETECT_CONT89 :
	ds	01h
_GA0_value :
	ds	01h
_ON0_value :
	ds	01h
_OFF_value :
	ds	01h
_CONT_value :
	ds	01h
_GA0ON0 :
	ds	01h
_LEDDrive_LED_CH_Contents :
	ds	01h
_CNT_CAL :
	ds	01h
_CNT_CFG :
	ds	01h
_CLR_CAL :
	ds	01h
_CLR_INI :
	ds	01h
_KEY3 :
	ds	01h
_CHECK :
	ds	01h
_CLR :
	ds	01h

	rseg $$NVARmain
_INTERRUPT_CAL :
	ds	01h
_INTERRUPT_INI :
	ds	01h

	rseg $$NINITTAB
	align

	rseg $$NINITVAR
	align

	end
