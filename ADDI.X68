*-----------------------------------------------------------
* Title      : ADDI
* Written by : Ko Fukushima
* Written by : Samuel Williams
* Date       : 5/15/2016
* Description:
*-----------------------------------------------------------
  
ADDI           * first check the first 4 bits after the op-code
               CLR.L       D0

               CLR.L       D1
               
               MOVE.W      (A5),D0
               
               MOVE.B      #8, D1 * for shifting to the right by 8 bits
               
               LSR.W       D1, D0
               
               CMP.W       #6, D0 * checking the first 4 bits 
               
               BNE         ERROR  * go to error 
               
               * print the op-code 
               CLR.L       D0

               CLR.L       D1
               
               LEA         ADDI_MESSAGE, A1    * NOTE - how do you know this is of size B ????? 
               
               MOVE.B      #14, D0
               
               TRAP #15
                              
               * print the size
               CLR.L       D0

               CLR.L       D1
               
               MOVE.W      (A5),D0
              
               LSL.W       #8, D0

               MOVE.B      #14, D1 * for shifting to the right by 8 bits
               
               LSR.W       D1, D0
               
               * D1 holds the size
  *             CLR.L       D1
               
  *             MOVE.B      D0, D1
                 
               CMP.B       #%00, D0
               
               BEQ         ADDI_B_SIZE
               
               CMP.B       #%01, D0
               
               BEQ         ADDI_W_SIZE
               
               *print size L
               LEA         SIZE_L_PRINT, A1     
               
               MOVE.B      #14, D0
               
               TRAP #15
               
              * print out pound sign and hex sign
               LEA     POUND_SIGN, A1
            
               MOVE.B  #14, D0
            
               TRAP #15
            
               LEA     HEX_SIGN, A1
            
               TRAP #15
               
               CLR.L  D5
        
               MOVE.L (A6)+, D5 * we mimght change it later
        
               JSR  HEX_TO_ASCII
               
               BRA         ADDI_EA   
                    
ADDI_B_SIZE
               LEA         SIZE_B_PRINT, A1     
               
               MOVE.B      #14, D0
               
               TRAP #15
               
              * print out pound sign and hex sign
               LEA     POUND_SIGN, A1
            
               MOVE.B  #14, D0
            
               TRAP #15
            
               LEA     HEX_SIGN, A1
            
               TRAP #15
               
               CLR.L D0

               MOVE.W (A6)+, D0 * we mimght change it later
               
               MOVE.B D0, D5
   
               JSR  HEX_TO_ASCII
               
               BRA         ADDI_EA 
                

ADDI_W_SIZE
               LEA         SIZE_W_PRINT, A1     
               
               MOVE.B      #14, D0
               
               TRAP #15
               
               * print out pound sign and hex sign
               LEA     POUND_SIGN, A1
            
               MOVE.B  #14, D0
            
               TRAP #15
            
               LEA     HEX_SIGN, A1
            
               TRAP #15

               CLR.L  D5
        
               MOVE.W (A6)+, D5
        
               JSR  HEX_TO_ASCII
        
               JMP  ADDI_EA


ADDI_EA      
                JSR     PRINT_COMMA
                
                CLR.L   D0
                
                CLR.L   D1
                
                * set register
                 
                 MOVE.W  (A5),D0     *D0 is the binary value to decode
               
                 MOVE.B  #13,D1           *8 bits is the number of times to shift to the left to remove opcode & register #

                 LSL.W   D1,D0           *Shift the bits 8 times -> D0 now removes the opcode & reg#

                 MOVE.B  #13,D1          *14 bits is the number of times to shift to hold the mode number

                 LSR.W   D1,D0           *Shift the bits 13 times -> D0 now holds the size number

                 MOVE.B  D0, D7          *put D0 to data register into D7 for future printing
                 
                 * set mode
                 CLR.L D0                *clear D0
                 
                 CLR.L D1                *clear D1
                 
                 MOVE.W  (A5),D0     *D0 is the binary value to decode
               
                 MOVE.B  #10,D1           *8 bits is the number of times to shift to the left to remove opcode & register #

                 LSL.W   D1,D0           *Shift the bits 8 times -> D0 now removes the opcode & reg#

                 MOVE.B  #13,D1          *14 bits is the number of times to shift to hold the mode number

                 LSR.W   D1,D0           *Shift the bits 13 times -> D0 now holds the size number

                 MOVE.B  D0, D6          *put D0 to data register into D7 for future printing

 
               * JSR     Set_Ea
                 
                JSR     PRINT_EA *by using jmp table
                
                JMP     PARSE_MEMORY
                
                
                 
                 


               

























*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
