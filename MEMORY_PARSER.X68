*-----------------------------------------------------------
* Title      : Memory parser
* Written by : Samuel Williams 
* Date       : 5/13/2016
* Description: parse the memory address A5 holds the current 
*              memory address 
*-----------------------------------------------------------

                MOVEA.L   STARTING_ADDR, A5
                MOVEA.L   A5, A6
                MOVEA.L  #outputCountMax, A2
                MOVEA.L  #outputCountCurr, A3
PARSE_MEMORY      
                MOVE.W   A6, A5
                LEA      CR_LF, A1
                MOVE.B   #14, D0
                TRAP #15  
        
PARSE_MEMORY_FIRST    
                CMPA.L   ENDING_ADDR, A5
                BEQ      STOP
                MOVE.W   (A6)+, D0
                
                CMPA.L   #outputCountMax, A3
                BEQ       PRESS_ENTER_CONTINUE
CONTINUE_PARSE
                ADDA.L    #1, A3
                
*                MOVE.W   D0, D1   *testing
*                MOVE.B #3, D0
*                TRAP #15
*                LEA CR_LF, A1
*                MOVE.B #14, D0
*                TRAP #15          *end testing
                JMP      NEXT_INSTRUCTION
                    
NEXT_INSTRUCTION
                INCLUDE 'JUMPTABLE DAMIAN-V1.X68'
                INCLUDE 'ADDI.X68'
                INCLUDE 'ADDQ.X68'
                INCLUDE 'TRYING_NOP.X68'
                INCLUDE 'DIVU_OR.X68'
                INCLUDE 'GROUP_0100_CODE.X68'
                INCLUDE 'MULS_AND.X68'
                INCLUDE 'MOVEM.X68'
                INCLUDE 'MOVEQ.X68'
                INCLUDE 'DAMIAN_OP_CODE.X68'
                INCLUDE 'ADD_ADDA.X68'
                INCLUDE 'BCC.X68'
                INCLUDE 'HEX_TO_ASCII_V1.X68'
                INCLUDE 'JUMPTABLE-EA.X68'
                
                JMP      PARSE_MEMORY
                
PRESS_ENTER_CONTINUE
                 MOVEA.L  #outputCountCurr, A3  *reset to 0
                 LEA ENTER, A1
                 MOVE.B #14, D0
                 TRAP #15
                 
* get ascill for entering key
                 MOVE.B #5, D0
                 TRAP #15
                 
                 CMP.B #$D, D1

                 MOVE.B #11, D0   *clear display
                 MOVE.W #$FF00, D1
                 TRAP #15

                 JMP CONTINUE_PARSE
                
               
                
STOP

























*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
