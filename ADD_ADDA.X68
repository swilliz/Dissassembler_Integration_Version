*-----------------------------------------------------------
* Title      : ADD_ADDA
* Written by : Ko Fukushima
* Date       : 5/18/2016
* Description:
*-----------------------------------------------------------
  
*        ORG    $1000

*example          EQU     %1101011011000110
        
*START:      	* ORG and END address

                * INCLUDE 'CMP.X68'
                * INCLUDE 'SUB.X68'
                * INCLUDE 'DIVU_OR.X68'
                * INCLUDE 'MULS_AND.X68'
  
ADD_ADDA  *at this point we know the first 4 bits are 1101 -> ADD or ADDA -> compare the destination opmode
                 
                 JSR      GET_SIZE_PURPLE
                                            
                 CMP.B    #$3, D5        *if D0 holds 3, the opcode is ADDA
                 
                 BEQ      ADDA_CODE
                 
                 JMP      ADD_CODE
                 
ADDA_CODE 
                 * ADDA opcode message
                 LEA ADDA_MESSAGE, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 CLR.L D5         * clear for the size since this is not for the size purple
                 
                 CLR.L D0                *clear D0
                 
                 CLR.L D1                *clear D1
                 
                 MOVE.W  (A5),D0     *D0 is the binary value to decode
                 
                 LSL.W   #7, D0

                 MOVE.B  #13,D1           *8 bits is the number of times to shift to the

                 LSR.W   D1,D0           *Shift the bits 8 times -> D0 now removes the opcode & reg#
                 
                 CMP.B   #%011, D0
                 
                 BEQ     PRINTOUT_SIZE_W
                 
                 JMP     PRINTOUT_SIZE_L
                 
FINISH_PRINTING_SIZE

                 JSR     Set_Ea
                 
                 JSR     PRINT_EA *by using jmp table
                 
                 JSR     PRINT_COMMA
                 
                  * for the first Dn 
                 JSR     GET_Data_Register
                 
                 MOVE.B  #%001, D6 * for mode

                 JSR     PRINT_EA *by using jmp table

                 JMP     PARSE_MEMORY
                 
PRINTOUT_SIZE_W
                 
                 MOVE    #%01, D5          
                 
                 LEA      SIZE_W_PRINT,    A1
                 
                 MOVE.B   #14,             D0
        
                 TRAP #15
                 
                 BRA     FINISH_PRINTING_SIZE
                 
PRINTOUT_SIZE_L                           
                 MOVE    #%10, D5          
                 
                 LEA      SIZE_L_PRINT,    A1
                 
                 MOVE.B   #14,             D0 
       
                 TRAP #15
                 
                 BRA     FINISH_PRINTING_SIZE

ADD_CODE
                 * ADD message
                 LEA      ADD_MESSAGE,    A1
                 MOVE.B   #14,            D0
                 TRAP #15
                 
                 JSR     PRINTOUT_SIZE_PURPLE
                 
                 * check for dn and ea
                 CLR.L D0                *clear D0
                 
                 CLR.L D1                *clear D1
                 
                 MOVE.W  (A5),D0     *D0 is the binary value to decode
                 
                 * check the bit at 7
                 MOVE.B  #7,D1           *8 bits is the number of times to shift to the left to remove opcode & register #

                 LSL.W   D1,D0           *Shift the bits 8 times -> D0 now removes the opcode & reg#
                 
                 MOVE.B  #15,D1          *14 bits is the number of times to shift to hold the mode number

                 LSR.W   D1,D0           *Shift the bits 14 times -> D0 now holds the mode number
                 
                 CMP.B   #0, D0
                 
               *  BTST    #8, D0 * if the bit at 8 is 1, the ccr of z is set to 0
                 
                 
                 BEQ     ADD_FIRST_EA
                 
                 * for the first Dn 
                 JSR     GET_Data_Register
                 
                 CLR.L   D6
                 
                 MOVE.B  #%000, D6 * for mode
                 
                 JSR     PRINT_EA *by using jmp table
                 
                 JSR     PRINT_COMMA
                 
                 JSR     Set_Ea
                 
                 JSR     PRINT_EA *by using jmp table
                 
                 JMP     PARSE_MEMORY
                 
ADD_FIRST_EA
                 JSR     Set_Ea
                 
                 JSR     PRINT_EA *by using jmp table
                 
                 JSR     PRINT_COMMA
                 
                  * for the first Dn 
                 JSR     GET_Data_Register
                 
                 CLR.L   D6
                 
                 MOVE.B  #%000, D6 * for mode

                 JSR     PRINT_EA *by using jmp table
                 
                 JMP     PARSE_MEMORY
                 
GET_SIZE_PURPLE * get the op-code 

                 CLR.L D0                *clear D0
                 
                 CLR.L D1                *clear D1
                 
                 MOVE.W  (A5),D0     *D0 is the binary value to decode

                 MOVE.B  #8,D1           *8 bits is the number of times to shift to the left to remove opcode & register #

                 LSL.W   D1,D0           *Shift the bits 8 times -> D0 now removes the opcode & reg#
                 
                 MOVE.B  #14,D1          *14 bits is the number of times to shift to hold the mode number

                 LSR.W   D1,D0           *Shift the bits 14 times -> D0 now holds the mode number
                 
                 CLR.L   D5
                 
                 MOVE.B  D0, D5          *push the size to the Data register 5 for the future use
                 
                 RTS 

PRINTOUT_SIZE_PURPLE * get the size for ADDI, CLR, ADDQ, OR, SUB, CMP, AND, ADD
                     
                 CMP    #%00, D5          
                 
                 BEQ    PRINT_B
                 
                 CMP    #%01, D5          
                 
                 BEQ    PRINT_W
                 
                 CMP    #%10, D5          
                 
                 BEQ    PRINT_L
                 
DONE_PRINTING
                 RTS 
                 
PRINT_B          
                 LEA      SIZE_B_PRINT,    A1
                 MOVE.B   #14,            D0          
                 TRAP #15

                 JMP      DONE_PRINTING
                 
PRINT_W     
                 LEA      SIZE_W_PRINT,    A1
                 MOVE.B   #14,             D0          
                 TRAP #15

                 JMP      DONE_PRINTING


PRINT_L          
                 LEA      SIZE_L_PRINT,    A1
                 MOVE.B   #14,             D0          
                 TRAP #15   
                    
                 JMP    DONE_PRINTING
                 
PRINT_COMMA
                 LEA COMMA, A1
                 MOVE.B #14, D0
                 TRAP #15
                 
                 JMP    DONE_PRINTING
                 
GET_Data_Register
                 CLR.L D0                *clear D0
                 
                 CLR.L D1                *clear D1
                 
                 MOVE.W  (A5),D0     *D0 is the binary value to decode

                 LSL.W   #4,D0           *Shift the bits 4 times -> D0 now removes the opcode & reg#
                 
                 MOVE.B  #13,D1          *14 bits is the number of times to shift to hold the mode number

                 LSR.W   D1,D0           *Shift the bits 13 times -> D0 now holds the size number

                 MOVE.B  D0, D7          *put D0 to data register into D7 for future printing
                 
                 RTS
                 
Set_Ea

                 * set register
                 CLR.L D0                *clear D0
                 
                 CLR.L D1                *clear D1
                 
                 MOVE.W  (A5),D0     *D0 is the binary value to decode
               
                 MOVE.B  #13,D1           *8 bits is the number of times to shift to the left to remove opcode & register #

                 LSL.W   D1,D0           *Shift the bits 8 times -> D0 now removes the opcode & reg#

                 LSR.W   D1,D0           *Shift the bits 13 times -> D0 now holds the size number
                 
                 CLR.L D7                *clear D7 

                 MOVE.B  D0, D7          *put D0 to data register into D7 for future printing
                 
                 * set mode
                 CLR.L D0                *clear D0
                 
                 CLR.L D1                *clear D1
                 
                 MOVE.W  (A5),D0     *D0 is the binary value to decode
               
                 MOVE.B  #10,D1           *8 bits is the number of times to shift to the left to remove opcode & register #

                 LSL.W   D1,D0           *Shift the bits 8 times -> D0 now removes the opcode & reg#

                 MOVE.B  #13,D1          *14 bits is the number of times to shift to hold the mode number

                 LSR.W   D1,D0           *Shift the bits 13 times -> D0 now holds the size number
                 
                 CLR.L D6                *clear D6

                 MOVE.B  D0, D6          *put D0 to data register into D7 for future printing
                 
                 RTS
                 
                
































*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
