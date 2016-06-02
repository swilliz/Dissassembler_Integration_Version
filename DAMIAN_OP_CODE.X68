SHIFTS           CLR.L D0

                 CLR.L D1
                 
                 MOVE.W (A5),D0
                 
                 LSL.W #4,D0            *shift out the opcode
                 
                 MOVE.B #13,D1          
                 
                 LSR.W D1,D0            *shift out everything, so only three bits after opcode are there
                 
                 CMP.B #1,D0            
                 
                 BEQ LSD                *if the bits are 1, it is a logical shift
                 
                 CMP.B #3,D0
                 
                 BEQ ROD                *if the bits are 3, it is a rotation
                 
                 BRA ASD                *if it is not equal to 1 or 3, it is arithmetic shift
                 

LSD              CLR.L D0               *still need to do checks, since an asd shift could still be a possibility
                 
                 CLR.L D1
                 
                 MOVE.W (A5),D0
                 
                 LSL.W #8,D0
                 
                 MOVE.B #14,D1
                 
                 LSR.W D1,D0
                 
                 CMP.B #3,D0            *need to check the two bits after the direction 
                 
                 BNE ASD                *if the two bits are not 3, it is an arithmetic shift
                 
                 MOVE.W (A5), D0
                 
                 LSL.W  #7, D0
                 
                 MOVE.B #15, D1
                 
                 LSR.W  D1, D0
                 
                 CMP.B  #1, D0
                 
                 BEQ LSL
                 
                 BRA LSR
                 

LSL
                 LEA LSL_MESSAGE, A1    * print message
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
            
                 MOVE.L (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0        * check to see if it is memory and not register shift
                 
                 BEQ LSD_MEMORY
                 
                 BRA PRINTOUT_REGISTER_SHIFTS_EA

LSR              
                 LEA LSR_MESSAGE, A1            * print message
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
        
                 MOVE.L (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0            * check to see if memory shift
                 
                 BEQ LSD_MEMORY
                 
                 BRA PRINTOUT_REGISTER_SHIFTS_EA
                 
LSD_MEMORY
                 JSR    PRINTOUT_MEMORY_SHIFTS_EA
                 
                 BRA PARSE_MEMORY
            

ROD              CLR.L D0               *same check as logical shift, since an arithmetic shift could still be possible
                 
                 CLR.L D1
                 
                 MOVE.W (A5),D0
                 
                 LSL.W #8,D0
                 
                 MOVE.B #14,D1
                 
                 LSR.W D1,D0
                 
                 CMP.B #3,D0
                 
                 BNE ASD
                 
                 MOVE.L (A5), D0
                 
                 LSL.W  #7, D0
                 
                 MOVE.B #15, D1
                 
                 LSR.W  D1, D0
                 
                 CMP.B  #1, D0
                 
                 BEQ ROL
                 
                 BRA ROR

ROL              
                 LEA ROL_MESSAGE, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15

                 MOVE.L (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0            * check to see if its memory shift
                 
                 BEQ ROD_MEMORY
                 
                 BRA PRINTOUT_REGISTER_SHIFTS_EA

ROR       
                 LEA ROR_MESSAGE, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 MOVE.L (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0            * check to see if its memory shift
                 
                 BEQ ROD_MEMORY
                 
                 BRA PRINTOUT_REGISTER_SHIFTS_EA

ROD_MEMORY       
                 JSR    PRINTOUT_MEMORY_SHIFTS_EA
                 
                 BRA PARSE_MEMORY
                 
                 
ASD              MOVE.L (A5), D0
                 
                 LSL.W  #7, D0
                 
                 MOVE.B #15, D1
                 
                 LSR.W  D1, D0
                 
                 CMP.B  #1, D0
                 
                 BEQ ASL
                 
                 BRA ASR
                 
ASL
                 LEA ASL_MESSAGE, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 MOVE.L (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0            * check to see if its memory shift
                 
                 BEQ ASD_MEMORY
                 
                 BRA PRINTOUT_REGISTER_SHIFTS_EA
                                  

ASR              
                 LEA ASR_MESSAGE, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 MOVE.L (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0            * check to see if its memory shift
                 
                 BEQ ASD_MEMORY
                 
                 BRA PRINTOUT_REGISTER_SHIFTS_EA

ASD_MEMORY
                 JSR    PRINTOUT_MEMORY_SHIFTS_EA
                 
                 BRA PARSE_MEMORY
                 
PRINTOUT_REGISTER_SHIFTS_EA
                 LEA PERIOD, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15

                 MOVE.L (A5), D0
                 
                 MOVE.B #10, D1
                 
                 LSL.W D1, D0
                 
                 MOVE.B #15, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B #1, D0
                 
                 BEQ PRINTOUT_REGISTER
                 
                 BRA PRINTOUT_COUNT

                 
PRINTOUT_COUNT
                 LEA POUND_SIGN, A1

                 MOVE.B #14, D0

                 TRAP #15     
               
                 MOVE.L (A5), D0
                 
                 LSL.W #4, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D1
                 
                 MOVE.B #3, D0
                 
                 TRAP #15                  * print out the amount that the ea is being shifted by
                 
                 LEA COMMA, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 MOVE.L (A5), D0
                 
                 MOVE.B #13, D1                * to print out the ea that is being shifted
                 
                 LSL.W D1, D0
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D7
                 
                 MOVE.B #%000, D6              * we know it is a data register
                 
                 JSR PRINT_EA
                 
                 BRA PARSE_MEMORY
                 

PRINTOUT_REGISTER
                 MOVE.L (A5), D0
                 
                 LSL.W #4, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D7
                 
                 MOVE.B #%000, D6
                 
                 JSR PRINT_EA                  * to print out the data register
                 
                 LEA COMMA, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 MOVE.L (A5), D0
                 
                 MOVE.B #13, D1                * to print out the ea that is being shifted
                 
                 LSL.W D1, D0
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D7
                 
                 MOVE.B #%000, D6              * we know it is a data register
                 
                 JSR PRINT_EA
                 
                 BRA PARSE_MEMORY
                                 

PRINTOUT_MEMORY_SHIFTS_EA   * gets the mode and register of the memory ea, and prints it out
                 LEA PERIOD, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15

                 MOVE.L (A5), D0
                 
                 MOVE.B #10, D1
                 
                 LSL.W D1, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D6
                 
                 MOVE.L (A5), D0
                 
                 MOVE.B #13, D1
                 
                 LSL.W D1, D0
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D7
                 
                 JSR PRINT_EA
                 
                 RTS
                
              
MOVEB            LEA MOVE_MESSAGE, A1   * printing out the opcode and size

                 CLR.L  D0
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 LEA SIZE_B_PRINT, A1
                 
                 TRAP #15               * done printing opcode and size
                 
                 BRA PRINTOUT_MOVE_EA

MOVEW            CLR.L D0
                 
                 CLR.L D1
                 
                 MOVE.W (A5),D0
                 
                 LSL.W #7,D0
                 
                 MOVE.B #13,D1
                 
                 LSR.W D1,D0
                 
                 CMP.B #1,D0            *check to see if the mode of the destination is an address register
                 
                 BEQ MOVEAW             *if the destination is an address, it is MOVEA
                 
                 LEA MOVE_MESSAGE, A1   * printing out the opcode and size
                 
                 CLR.L D0
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 LEA SIZE_W_PRINT, A1
                 
                 TRAP #15               * done printing opcode and size
                    
                 BRA PRINTOUT_MOVE_EA
              

MOVEL            CLR.L D0
                 
                 CLR.L D1
                 
                 MOVE.W (A5),D0
                 
                 LSL.W #7,D0
                 
                 MOVE.B #13,D1
                 
                 LSR.W D1,D0
                 
                 CMP.B #1,D0            *check to see if the mode of the destination is equal to 1
                 
                 BEQ MOVEAL             *if the mode is 1, then it is an address register, and the opcode is MOVEA
                 
                 LEA MOVE_MESSAGE, A1   * printing out opcode and size
                 
                 CLR.L D0
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 LEA SIZE_L_PRINT, A1
                 
                 TRAP #15               * done printing opcode and size
                 
                 BRA PRINTOUT_MOVE_EA
                 
                 
MOVEAW           LEA MOVEA_MESSAGE, A1  * start printing out opcode and size

                 CLR.L D0
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 LEA SIZE_W_PRINT, A1
                 
                 TRAP #15               * done printing out opcode and size
                 
                 BRA PRINTOUT_MOVE_EA

MOVEAL           LEA MOVEA_MESSAGE, A1  * start printing out opcode and size

                 CLR.L D0
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 LEA SIZE_L_PRINT, A1
                 
                 TRAP #15               * done printing out opcode and size
                 
                 BRA PRINTOUT_MOVE_EA

PRINTOUT_MOVE_EA
                 CLR    D7 
                 
                 CLR    D6               
                 
                 MOVE.W (A5), D0
                 
                 MOVE.B #10, D1
                 
                 LSL.W D1, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D6          * getting the mode of the second ea
                 
                 MOVE.W (A5), D0
                 
                 MOVE.B #13, D1
                 
                 LSL.W D1, D0
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D7          * getting the register of the second ea
                 
                 JSR PRINT_EA
                 
                 LEA COMMA, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 MOVE.W (A5), D0
                 
                 LSL.W #4, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D7          * getting the register of the first ea
                 
                 MOVE.W (A5), D0
                 
                 LSL.W #7, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D6          * getting the mode of the first ea
                 
                 JSR PRINT_EA
                 
                 BRA PARSE_MEMORY





*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
