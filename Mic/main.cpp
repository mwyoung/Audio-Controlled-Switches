//Test code to configure ADC
//Miles Young - 12/01/17
//Joe Swelland - 3/9/2018
// ADC: http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-42735-8-bit-AVR-Microcontroller-ATmega328-328P_Datasheet.pdf on page 317
#include <avr/io.h>
#include <util/delay.h>
#include <stdlib.h>
#include <stdio.h>
#include <avr/interrupt.h>

//#define DISP
#ifdef DISP
extern "C"{
	#include "../libs/lcdpcf8574.h"
}
#endif

extern "C"{
	#include "../libs/nrf24l01.h"
	#include "../libs/wfunc.h"
}

#define clap_log_len 5
char 	lcd_str_h[16]; //string to lcd
#define lng 500

//LED TIMER
void turnOffTCCR0();

ISR(TIMER0_OVF_vect){ //every 64us
	static uint8_t counter=0;
	counter++;
	if((counter%15)==0){ //every ~500ms 
		PORTC ^= (1<<PC3);
	}
	if(counter==90){ //at ~3 sec
		PORTC |= (1<<PC3);
		turnOffTCCR0();
		counter = 0;
		//lcd_clrscr();
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

//GLobal Vars
volatile uint8_t msg;
volatile uint8_t rcvID;
volatile uint8_t rcvOP; //operation to do


//main loop
int main(){
	//uint16_t i=0;
	int32_t clip = 0;//data hold

	//TRANMISSION
	nrf24l01_init(); //initialize wifi module
	sei(); //init interrupt
	//sending buffer address
	uint8_t addrtx0[NRF24L01_ADDRSIZE] = NRF24L01_ADDRP0;
	nrf24l01_settxaddr(addrtx0);

	//Turn on LED pins		
	DDRC |= (1<<PC3); //on as output
	PORTC |= (1<<PC3);

	//NOISE VARS
	uint32_t noise_total = 0; //old = 2500
	//uint16_t noise_avg = 1;
	uint16_t a=0;

	uint16_t long_log[lng] = {0};
	uint16_t cth = 100;
	int16_t adc_result = 0; //holds adc result

	//PATTERN DETECT VARS
	uint16_t n=0; //clap window iterator
	uint16_t window=8000; //window length of n samples
	uint8_t pat=0; //detecting pattern or not
	uint8_t c; //iterator
	uint16_t clap_log[clap_log_len+1]={0}; //record claps
	uint8_t clap_grp=0; //count claps in log
	uint8_t sig=0; //signal to send
	uint8_t x=0; //iterator
	

	//CLAP DETECT VARS
	uint16_t start =0;
	//uint16_t snr = 0;
	//uint8_t claps = 0;
	uint16_t cnt = 0;
	uint8_t clpg = 0;
	uint16_t cl_len = 1500;

	//DEVICE MEMORY
	uint8_t state[4] = {0};
	uint8_t returnMsg[2] = {0};
	uint8_t wifiMsg[2] = {0};
	uint8_t sendCom;


	//ADJUSTMENT VARS

	#ifdef DISP
	lcd_init(LCD_DISP_ON); //change cursor type here	
	lcd_home(); //go home	
	lcd_led(0); //0 = backlight, 1 = no backlight
	lcd_puts("Test Code");
	#endif


	//initialize ADC, can use REF for reference voltage
	DDRC &= ~(1<<PC0); //set PC0 as ADC input
	PORTC &= ~(1<<PC0); //Turn off pullup resistors
	//single ended, input PC0, right justified, aVCC as reference
	ADMUX |= (1<<REFS0) | (0<<ADLAR) | (0<<MUX3)| (0<<MUX2) | (0<<MUX1) | (0<<MUX0);
	//enable ADC, single shot mode, division factor of 128 
	ADCSRA |= (1<<ADEN) | (1<<ADPS2) | (1<<ADPS1) | (1<<ADPS0); 	
	
	while(1){

		//ADC Grabbing
		ADCSRA |= (1<<ADSC); //start conversion
		while(bit_is_clear(ADCSRA,ADIF)); //wait until interrupt flag is set
		ADCSRA |= (1<<ADIF); //clear flag
		adc_result = ADC;

		//CLAP PATTERN DETECTION
		if (n>window) {

			pat=0;
			n=0;
			for (c=0;c<clap_log_len;c++) {
				if (clap_log[c] != 0) {clap_grp++;}
			}
			if (clap_grp == 1) {sig = 1;} //pattern 1
			else if (clap_grp == 2) {sig = 2;} //pattern 2
			else if (clap_grp == 3) {sig = 3;} //pattern 3
			else if (clap_grp == 4) {sig = 4;} //pattern 4
			else if (clap_grp > 4) {sig = 0;}
			else {sig = 0;}
			clap_grp=0;
			//RESET CLAP LOG
			for(c=0;c<clap_log_len;c++) {clap_log[c]=0;}
		}
		else if (pat) {n++;}

		//SIGNAL SENDING
		if (sig!=0) {

			if (sig==1) {	
			sig=0;
			//ENCODE MESSAGE
				if (state[0]==1) {
					encodeMsg(out1,off);
				}
				else {
					encodeMsg(out1,on);
				}
			//TRANSMIT MESSAGE
				//Grab transmission message
				wifiMsg[0] = msg;
				wifiMsg[1] = msg;
		
				//Transmit; 1=scs, 2=fail_other, 0=3x fail
				//BLINK LED
				turnOnTCCR0();
				sendCom=txMsgH(wifiMsg, returnMsg, 0);		
				//Check for failure
				//if (sendCom==0) {sendCom=txMsgH(wifiMsg, returnMsg, 0);}
				if (sendCom==1) {
					state[0]++;
					if (state[0]>1) {state[0]=0;}
				}
			}
			else if (sig==2) {
			//ENCODE MESSAGE
				sig=0;
				if (state[1]==1) {
					encodeMsg(out2,0);
				}
				else {
					encodeMsg(out2,on);
				}
			//TRANSMIT MESSAGE
				//Grab transmission message
				wifiMsg[0] = msg;
				wifiMsg[1] = msg;
		
				//Transmit; 1=scs, 2=fail_other, 0=3x fail
				sendCom=txMsgH(wifiMsg, returnMsg, 0);		
				//Check for failure
				//if (sendCom==0) {sendCom=txMsgH(wifiMsg, returnMsg, 0);}
				if (sendCom==1) {
					state[0]++;
					if (state[1]>1) {state[1]=0;}
					//BLINK LED
					turnOnTCCR0();
				}
			}
			else if (sig==3) {
			//ENCODE MESSAGE
				sig=0;
				if (state[2]==1) {
					encodeMsg(out3,off);
				}
				else {
					encodeMsg(out3,on);
				}
			//TRANSMIT MESSAGE
				//Grab transmission message
				wifiMsg[0] = msg;
				wifiMsg[1] = msg;
		
				//Transmit; 1=scs, 2=fail_other, 0=3x fail
				sendCom=txMsgH(wifiMsg, returnMsg, 0);		
				//Check for failure
				//if (sendCom==0) {sendCom=txMsgH(wifiMsg, returnMsg, 0);}
				if (sendCom==1) {
					state[0]++;
					if (state[2]>1) {state[2]=0;}
					//BLINK LED
					turnOnTCCR0();
				}
			}
			else if (sig==4) {
			//ENCODE MESSAGE
				sig=0;
				if (state[3]==1) {
					encodeMsg(out4,off);
				}
				else {
					encodeMsg(out4,on);
				}
			//TRANSMIT MESSAGE
				//Grab transmission message
				wifiMsg[0] = msg;
				wifiMsg[1] = msg;
		
				//Transmit; 1=scs, 2=fail_other, 0=3x fail
				sendCom=txMsgH(wifiMsg, returnMsg, 0);		
				//Check for failure
				//if (sendCom==0) {sendCom=txMsgH(wifiMsg, returnMsg, 0);}
				if (sendCom==1) {
					state[0]++;
					if (state[3]>1) {state[3]=0;}
					//BLINK LED
					turnOnTCCR0();
				}
			}
		sig=0;
		}

		//CONVERT ADC_RESULT TO SIGNED VALUE -> -512 to 512
		clip = adc_result - 512;

		//START DELAY
		if(start<10000) {
			start++;
		}
		else if (clpg==1) {
			if (cnt < cl_len) {cnt++;}
			else {cnt=0;clpg=0;}
		}
		else {
			if (pat==0) {
				//noise update
				if (noise_total>13000) {cth = 425;}
//				else if (noise_total>12000) {cth=350;}
//				else if (noise_total>11000) {cth = 175;}
//				else if (noise_total>10000) {cth = 135;}
//				else if (noise_total>9250) {cth = 100;}
//				else if (noise_total>8500) {cth=90;}
//				else if (noise_total>7500) {cth=80;}
//				else {cth=70;}
				else {cth=400;}

			}
			if(abs(clip)>cth) {

				clpg=1;
				//PATTERN DETECTION
				if(pat==0){pat=1;n=0;x=0;}
				else {
					clap_log[x]=n;				
					n=0;
					x++;
				}
			}
		}
		
		if(start<5){
			noise_total = 0;
			clip = 0;
			adc_result = 0;
		}
		else if ((start>9000) && (start<(lng+9500))) {
 			noise_total = noise_total + abs(clip);
 			long_log[a]=abs(clip);
			if (a<lng) {		
				a++;
			}
			else {
				a=0;
			}	
		}
		
		else if (start>(9501)) {	
			//AVERAGE CALCULATIONS
			noise_total = noise_total - abs(long_log[a]);
			long_log[a] = abs(clip);
			noise_total = noise_total + abs(long_log[a]);
			if (a<lng) {		
				a++;
			}
			else {
				a=0;
			}

		}
	}
}
