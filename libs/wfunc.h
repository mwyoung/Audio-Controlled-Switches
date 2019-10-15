//functions for wifi - header file
#define hub 0 //hub ID
#define out1 2 //relay
#define out2 3 //relay
#define out3 4 //relay
#define out4 5 //relay
#define out5 6 //servo
#define out6 7 //servo
#define minRelay out1 //range of relay IDs
#define maxRelay out4
#define minServo out5 //range of servo IDs
#define maxServo out6
#define on 0x03
#define off 0x00

void encodeMsg(uint8_t IDnum, uint8_t operation);
void decodeMsg(uint8_t *wifiMsg);
void updateMsg(uint8_t currentMsg, uint8_t operation); 
uint8_t txMsgH(uint8_t *sentMst,uint8_t *returnMsg,uint8_t ID);  //hub transmit
uint8_t txMsgO(uint8_t *sentMsg);  //output transmit
//receive message for hub and output
uint8_t rcvMsg(uint8_t *returnMsg, uint8_t ID);
