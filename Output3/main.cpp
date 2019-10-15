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
//#define DISP
#ifdef DISP
extern "C"{
	#include "../libs/lcdpcf8574.h"
}
char lcd_str[16];
#endif

//Defined statements and ints
#define hub 0
#define ID out3 
#define off 0x00
#define on 0x03 //0b11
#define txok 0x00
#define txbad 0x02 //0b10
volatile uint8_t msg;
volatile uint8_t rcvID;
volatile uint8_t rcvOP; //operation to do
volatile uint8_t canSwitch;

void turnOffTCCR0();

ISR(TIMER0_OVF_vect){ //every 64us
	static uint8_t counter=0;
	counter++;
	if((counter%10)==0){ //every ~500ms 
		PORTC ^= (1<<PC3);
	}
	if(counter==90){ //at ~3 sec
		PORTC |= (1<<PC3);
		turnOffTCCR0();
		counter = 0;
		canSwitch = 0;
	}
}

void turnOnTCCR0(){
	//timer in normal mode, CS0 = 111 = external clk
	TCCR0B |= (1<<CS02) | (0<<CS01) | (1<<CS00); //prescale 1024
	TIMSK0 |= (1<<TOIE0); //enable overflow enable
}
void turnOffTCCR0(){
	TCCR0B &= ~((0<<CS02) | (0<<CS01) | (0<<CS00)); //no clock source
	TIMSK0 &= ~(1<<TOIE0); //enable overflow enable
}

//main here
int main(void) {
	uint8_t command=0;
	uint8_t outputMsg[2];
	uint8_t returnMsg[2];
	canSwitch = 0;

#ifdef DISP
	char 	bufferInt[1];
	lcd_init(LCD_DISP_ON); //change cursor type here	
	lcd_home(); //go home	
	lcd_led(0); //0 = backlight, 1 = no backlight
	lcd_puts("D");
#endif
	DDRC |= (1<<PC3);
	PORTC |= (1<<PC3);

	DDRD |= (1<<PD3);

	nrf24l01_init(); //init nrf24l01
	sei(); //init interrupt

	//sending buffer addresses
	uint8_t addrtx0[NRF24L01_ADDRSIZE] = NRF24L01_ADDRP0;
	nrf24l01_settxaddr(addrtx0);
#ifdef DISP
	lcd_puts("rx");
#endif

	encodeMsg(hub,command);
	outputMsg[0] = msg;
	outputMsg[1] = msg;

	//main loop
	while(1){
		//check for message, returns 1 if correct ID
		uint8_t returnStatus = rcvMsg(returnMsg,ID);	
		if(returnStatus==1){ //if data is ready
#ifdef DISP
			lcd_clrscr(); //display input
			lcd_gotoxy(0,0);itoa(returnMsg[0],bufferInt,2);lcd_puts(bufferInt);
			lcd_gotoxy(8,0);itoa(returnMsg[1],bufferInt,2);lcd_puts(bufferInt);
#else
			//blink LED
			//PORTD ^= (1<<PD3);
#endif	
			//send responce
			if(canSwitch==0){
				PORTD ^= (1<<PD3);
				canSwitch = 1;
			}
			nrf24l01_settxaddr(addrtx0);	//set tx address for pipe 0
			
			encodeMsg(hub,command);
			outputMsg[0] = msg;
			outputMsg[1] = msg;

			uint8_t statusReturn = txMsgO(outputMsg);
			turnOnTCCR0();
			if(statusReturn==0){
				statusReturn = txMsgO(outputMsg); //try 1 more time
			}
#ifdef DISP		
			lcd_gotoxy(0,1);itoa(outputMsg[0],bufferInt,2);lcd_puts(bufferInt);
			lcd_gotoxy(8,1);itoa(outputMsg[1],bufferInt,2);lcd_puts(bufferInt);
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
