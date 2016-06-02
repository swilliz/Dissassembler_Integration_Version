*-----------------------------------------------------------
* Title      : EQU_Data
* Written by : Samuel Williams, Ko Fukushima, Damian Banki
* Date       : 5/12/16
* Description: A file to hold all of our data stored with DC.B
*-----------------------------------------------------------

CR  EQU $0D
LF  EQU $0A 
* message for the input

WELCOME_MESSAGE DC.B 'Welcome to our Team wild pokemon disassembly!!', CR, LF, 0
STARTING        DC.B 'Enter the starting location: ', 0
ENDING          DC.B 'Enter the ending locaiton: ', 0
ENTER           DC.B 'Enter to continue ', 0
ERROR_MSG       DC.B 'Invalid Input, must be 8 characters, (0-9), (A-F), re-do ',CR, LF, 0
CR_LF           DC.B '', CR, LF, 0
    
ADDI_MESSAGE    DC.B 'ADDI.',0
MOVEA_MESSAGE   DC.B 'MOVEA.',0
MOVE_MESSAGE    DC.B 'MOVE.',0
NOP_MESSAGE     DC.B 'NOP',0
MOVEM_MESSAGE   DC.B 'MOVEM.',0
JSR_MESSAGE     DC.B 'JSR',0
RTS_MESSAGE     DC.B 'RTS',0
CLR_MESSAGE     DC.B 'CLR',0
ADDQ_MESSAGE    DC.B 'ADDQ.',0

BCC_MESSAGE     DC.B 'BCC',0   *//
BEQ_MESSAGE     DC.B 'BEQ',0   *//
BNE_MESSAGE     DC.B 'BNE',0   *//
BCS_MESSAGE     DC.B 'BCS',0   *//
BGE_MESSAGE     DC.B 'BGE',0   *//
BGT_MESSAGE     DC.B 'BGT',0   *//
BHI_MESSAGE     DC.B 'BHI',0   *//
BLE_MESSAGE     DC.B 'BLE',0   *//
BLS_MESSAGE     DC.B 'BLS',0   *//
BLT_MESSAGE     DC.B 'BLT',0   *//
BMI_MESSAGE     DC.B 'BMI',0   *//
BPL_MESSAGE     DC.B 'BPL',0   *//
BVC_MESSAGE     DC.B 'BVC',0   *//
BVS_MESSAGE     DC.B 'BVS',0   *//

MOVEQ_MESSAGE   DC.B 'MOVEQ.',0
DIVU_MESSAGE    DC.B 'DIVU.',0
OR_MESSAGE      DC.B 'OR.',0
SUB_MESSAGE     DC.B 'SUB.',0
CMP_MESSAGE     DC.B 'CMP.',0
MULS_MESSAGE    DC.B 'MULS.',0
AND_MESSAGE     DC.B 'AND.',0
ADD_MESSAGE     DC.B 'ADD.',0
ADDA_MESSAGE    DC.B 'ADDA.',0
LSL_MESSAGE     DC.B 'LSL.',0 *//
ASL_MESSAGE     DC.B 'ASL.',0
ROL_MESSAGE     DC.B 'ROL.',0
LSR_MESSAGE     DC.B 'LSR.',0 *//
ASR_MESSAGE     DC.B 'ASR.',0
ROR_MESSAGE     DC.B 'ROR.',0
SIZE_B_PRINT    DC.B 'B    ',0
SIZE_W_PRINT    DC.B 'W    ',0
SIZE_L_PRINT    DC.B 'L    ',0
POUND_SIGN      DC.B '#',0
HEX_SIGN        DC.B '$',0
PERIOD          DC.B '.',0
SPACE           DC.B '  ',0
SLASH           DC.B '/', 0

*ea
* data register
D_REGISTER      DC.B 'D',0
* address register
A_REGISTER      DC.B 'A',0
* indirect address register
IA_START        DC.B '(A',0
IA_END          DC.B ')',0
* post increment start and end, the register will go in between
A_PI_START      DC.B '(A',0
A_PI_END        DC.B ')+',0
* pre decrement start and end, the register will go in between
A_PD_START      DC.B '-(A',0
A_PD_END        DC.B ')',0
COMMA           DC.B ', ',0


















*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
