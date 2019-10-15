//Wireless Output Code
//Miles Young

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

//wireless functions
extern "C"{
	#include "../libs/nrf24l01.h"
	#include "../libs/wfunc.h"
}
//display
#define DISP
#ifdef DISP
extern "C"{
	#include "../libs/lcdpcf8574.h"
}
char lcd_str[16];
#endif

//Defined statements and ints
#define hub 0
#define ID 4
#define off 0x00
#define on 0x03 //0b11
#define txok 0x00
#define txbad 0x02 //0b10
volatile uint8_t msg;
volatile uint8_t rcvID;
volatile uint8_t rcvOP; //operation to do

//main here
int main(void) {
	char 	bufferInt[1];
	uint8_t command=0;
	uint8_t outputMsg[2];
	uint8_t returnMsg[2];
	uint8_t oldMsg=0;

#ifdef DISP
	lcd_init(LCD_DISP_ON); //change cursor type here	
	lcd_home(); //go home	
	lcd_led(0); //0 = backlight, 1 = no backlight
	lcd_puts("D");
#endif

	nrf24l01_init(); //init nrf24l01
	sei(); //init interrupt

	//sending buffer addresses
	uint8_t addrtx0[NRF24L01_ADDRSIZE] = NRF24L01_ADDRP0;

#ifdef DISP
	lcd_puts("rx");
#endif

	encodeMsg(hub,command);
	outputMsg[0] = msg;
	outputMsg[1] = msg;

	//main loop
	while(1){
		uint8_t returnStatus = rcvMsg(returnMsg,ID);	
		if(returnStatus==1){ //if data is ready
#ifdef DISP
			lcd_clrscr(); //display input
			lcd_gotoxy(0,0);itoa(returnMsg[0],bufferInt,2);lcd_puts(bufferInt);
			lcd_gotoxy(8,0);itoa(returnMsg[1],bufferInt,2);lcd_puts(bufferInt);
#endif
			//send responce
			nrf24l01_settxaddr(addrtx0);	//set tx address for pipe 0
			
			if(oldMsg != returnMsg[0]){
				command++;
				oldMsg = returnMsg[0]; //update
			}
			if(command>=4){command=0;}
			encodeMsg(hub,command);
			outputMsg[0] = msg;
			outputMsg[1] = msg;
			lcd_gotoxy(14,1);itoa(outputMsg[1],bufferInt,2);lcd_puts(bufferInt);

			uint8_t statusReturn = txMsgO(outputMsg);
#ifdef DISP		
			lcd_gotoxy(0,1);itoa(outputMsg[0],bufferInt,2);lcd_puts(bufferInt);
			lcd_gotoxy(8,1);itoa(outputMsg[1],bufferInt,2);lcd_puts(bufferInt);
			lcd_gotoxy(15,0);itoa(statusReturn,bufferInt,2);lcd_puts(bufferInt);
#endif
		}
		if(returnStatus==2){
			encodeMsg(hub,txbad); //send information was bad
			outputMsg[0] = msg;
			outputMsg[1] = msg;
			txMsgO(outputMsg); 
			asm("nop");
		}
		_delay_ms(10);
		returnStatus = 0;
	}
}
