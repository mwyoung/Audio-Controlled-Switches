//Wireless Hub Code
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
#define ID 0 //is hub ID 
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
	uint8_t i = 0;
	uint8_t j = 1;
	uint8_t OutputUC = out1;
	uint8_t OutputBlink = 3;
	uint8_t returnStatus=0;
	DDRC |= (1<<PC3);
	PORTC |= (1<<PC3);

	uint8_t wifiMsg[2]; //output
	uint8_t returnMsg[2]; //input

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
	lcd_puts("tx ");
#endif
	nrf24l01_settxaddr(addrtx0);//set tx address for pipe 0

	encodeMsg(OutputUC,on);
	wifiMsg[0] = msg;
	wifiMsg[1] = msg;

	returnMsg[0] = 0x01; 
	returnMsg[1] = 0x00; 
	//main loop
	while(1){	
		//write buffer
#ifdef DISP
		lcd_clrscr();//display on screen	
		lcd_gotoxy(14,1); lcd_puts("s");
#endif
	
		j++;
		if(j==1){ //send to ID 3
			encodeMsg(OutputBlink,on);
			wifiMsg[0] = msg;
			wifiMsg[1] = msg;
			returnStatus = txMsgH(wifiMsg,returnMsg,ID);
		}	
		else{ //send to ID 4
			if(j==2){ //if ending in one
				encodeMsg(OutputUC,on);
			}
			else if (j==3){
				encodeMsg(OutputUC,off);
				j = 0;
			}
			wifiMsg[0] = msg;
			wifiMsg[1] = msg;
			returnStatus = txMsgH(wifiMsg,returnMsg,ID);
		}
		//returnStatus = txMsgO(wifiMsg);
#ifdef DISP
		lcd_gotoxy(14,1); lcd_puts("r");
#endif
		if(returnStatus==0){
			//no response
			lcd_gotoxy(14,0); lcd_puts("NS"); //if error, show ?
		}
		else if(returnStatus==1){
			decodeMsg(returnMsg);
			if(rcvOP==txbad){
				txMsgH(wifiMsg,returnMsg,ID); //resend command
			}
			else {
				//action is complete
			}
		}
		else if(returnStatus==2){
#ifdef DISP
			lcd_gotoxy(15,1);lcd_puts("RT");
#endif
			txMsgH(wifiMsg,returnMsg,ID); //resend command
		}
#ifdef DISP	
		lcd_gotoxy(15,1);itoa(returnStatus,bufferInt,2);lcd_puts(bufferInt);
		//lcd_gotoxy(14,1);itoa(hub,bufferInt,2);lcd_puts(bufferInt);
		lcd_gotoxy(0,0);itoa(wifiMsg[0],bufferInt,2);lcd_puts(bufferInt);
		lcd_gotoxy(8,0);itoa(wifiMsg[1],bufferInt,2);lcd_puts(bufferInt);
		lcd_gotoxy(0,1);itoa(returnMsg[0],bufferInt,2);lcd_puts(bufferInt);
		lcd_gotoxy(8,1);itoa(returnMsg[1],bufferInt,2);lcd_puts(bufferInt);
#endif
		for(i=0;i<20;i++){_delay_ms(100);}
		
	}
}
