*-----------------------------------------------------------
* Title      : Dissassembler Integration
* Written by : Samuel Williams
* Date       : 5/25/2016
* Description: The file which includes all files
*              to create a complete dissassembler 
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    
    *INCLUDE 'TEST_CODE_DAMIAN.X68'
    INCLUDE 'EQU_Data.X68'
    INCLUDE 'INPUT.X68'
    INCLUDE 'MEMORY_PARSER.X68'

    SIMHALT             ; halt simulator

    INCLUDE 'DS_Data.X68' * STARTING_ADDR ** ENDING_ADDR
    INCLUDE 'MESSAGE_Data.X68' 
    *MOVE.B    #3, D2
    *MOVE.B    #0, D5
    MOVEA.W   #$400, A0
    
    
    

    END    START        ; last line of source











*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
