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
                MOVE.W   (A6)+, D0
                CLR.L    D0
                LEA      CR_LF, A1
                MOVE.B   #14, D0
                TRAP #15 

CATCH_BAD_OPCODES               
                CMPA.L   ENDING_ADDR, A5
                BEQ      ASK_TO_CONTINUE
                CMPA.L   #outputCountMax, A3
                BEQ       PRESS_ENTER_CONTINUE
                ADDA.L    #1, A3
                BRA      ERROR_HANDLING
        
PARSE_MEMORY_FIRST    
                CMPA.L   ENDING_ADDR, A6
                BEQ      ASK_TO_CONTINUE
                
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
                INCLUDE 'ADD_ADDA.X68'
                INCLUDE 'ADDI.X68'
                INCLUDE 'ADDQ.X68'
                INCLUDE 'CMP.X68'
                INCLUDE 'SUB.X68'
                INCLUDE 'TRYING_NOP.X68'
                INCLUDE 'DIVU_OR.X68'
                INCLUDE 'GROUP_0100_CODE.X68'
                INCLUDE 'MULS_AND.X68'
                INCLUDE 'MOVEM.X68'
                INCLUDE 'MOVEQ.X68'
                INCLUDE 'DAMIAN_OP_CODE.X68'
                INCLUDE 'BCC.X68'
                INCLUDE 'HEX_TO_ASCII_V1.X68'
                INCLUDE 'JUMPTABLE-EA.X68'
                INCLUDE 'ERROR_HANDLING.X68'
                
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

                 JMP CATCH_BAD_OPCODES
                
ASK_TO_CONTINUE
    LEA         ASK_TO_CONTINUE_M, A1
    
    MOVE.B      #14, D0

    TRAP #15
    
    MOVEA.W     $100, A1
    
    MOVE.B      #2, D0

    TRAP #15

    * VALIDATE THE INPUT

    CLR         D0

    MOVE.B      (A1), D0  

    CMP.B       #$59, D0

    BEQ         RESTART

    CMP.B       #$79, D0

    BEQ         RESTART

    CMP.B       #$4E, D0

    BEQ         STOP

    CMP.B       #$6E, D0

    BEQ         STOP

    BRA         ASK_TO_CONTINUE   
    
RESTART
    CLR.L       D4
    
    BRA         START_OF_PROGRAM   

               
STOP

    LEA         TERMINATED, A1
    
    MOVE.B      #14, D0
    
    TRAP #15












































*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
