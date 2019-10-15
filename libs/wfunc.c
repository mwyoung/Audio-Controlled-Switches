//wfunct for wifi - en/decode, tx, rx

#include <avr/io.h>
#include <util/delay.h>

#include "nrf24l01.h"
#include "wfunc.h"
#define hub 0

extern volatile uint8_t msg;
extern volatile uint8_t rcvID;
extern volatile uint8_t rcvOP;

//Encodes message, gets ID and operation to do, outputs to a number
void encodeMsg(uint8_t IDnum, uint8_t operation){
	msg = 0;
	msg = (IDnum<<2); //clears message, moves over two
	msg |= operation;
}

//Decodes message, gets ID and operation from message
void decodeMsg(uint8_t *decMsg){
	rcvID = (decMsg[0]>>2); //get ID
	rcvOP = (decMsg[0] & (0x3)); //get op code
}

//updates the message
void updateMsg(uint8_t currentMsg, uint8_t operation){
	msg = 0;
	msg = (currentMsg & 0xFC); //get ID, clear 0,1
	msg |= operation; //add operation	
}

uint8_t txMsgH(uint8_t *sendMsg,uint8_t *returnMsg,uint8_t ID){
	uint8_t returnStatus;
	uint8_t txNum = 0; //number of times transmitted
	while(txNum<=3){ //repeat 3 times
		returnStatus = txMsgO(sendMsg); //send message
		if(returnStatus==0){
			return 0; //if can't transmit
		}
		txNum++; //increase transmission count
		uint8_t i=0; //counter
		while(i<150){
			returnStatus=rcvMsg(returnMsg,hub);	
			if(rcvID==hub){
				if(returnStatus!=0){	
					return returnStatus;
				} //1 = all good, 2 = retransmit	
			}
			_delay_us(250);
			i++;
		}
	}
	return 0; //if 0, then no responce received...
}

//receives messages
uint8_t rcvMsg(uint8_t *returnMsg,uint8_t ID){
	if(nrf24l01_readready()){ //check if message is in buffer
		nrf24l01_read(returnMsg); //read message
		decodeMsg(returnMsg); //decode message
		if(rcvID!=ID){
			return 0; //not the ID looking for
		}
		if(returnMsg[0]!=returnMsg[1]){
			return 2; //need to retransmit
		}
		return 1; //is message that was looking for
	}
	return 0;	
}

uint8_t txMsgO(uint8_t *sendMsg){
	uint8_t writeStatus = nrf24l01_write(sendMsg); 
	if(writeStatus!=0){
		return 1; //has successfully sent
	}	
	return 0; //not sent correctly :(
}
