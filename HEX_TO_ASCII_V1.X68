*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    *ORG    $5000

* put your data that you want printed into D5
*START 

HEX_TO_ASCII      
     CLR.L      D3
     
     CMP.L       #0, D5
     
     BEQ         PRINT_ZERO
    
     *MOVE.L     #$ABCDEF, D5
     
LOOP     
     MOVE.L     D5, D6                  * put the data in a register so we can manipulate it
     
     CLR.L      D2
     
     MOVE.B     #28, D2

     LSR.L      D2, D6                  * shift out everything to the right of the last nibble, we print backwards so it shows up the correct order in the console
     
     CMP.B      #10, D6
     
     BGE        LETTER_1                  * determine if a letter or a number
     
     BRA        NUMBER_1
     
LETTER_1
     ADD.B      #55, D6
     
     MOVE.B     D6, D1                  * add the amount to change to ascii and move to D1 to prepare for printing
     
     BRA        PRINTOUT_NIBBLE

NUMBER_1     
     ADD.B      #48, D6
     
     MOVE.B     D6, D1                  * add the amount to change to ascii and move to D1 to prepare for printing
     
     BRA        PRINTOUT_NIBBLE


PRINTOUT_NIBBLE
    LSL.L      #4, D5                   * shift out the nibble you just read from the source
    
    ADD.B      #1, D3
    
    CMP.B      #$30, D6

    BEQ        LOOP             
    
    MOVE.B     #6, D0                      * use TRAP task #6 to print a single character from D1  
    
    TRAP #15
     
    CMP.B      #8, D3                   * compare to the counter to check if you are done
     
    BEQ        DONE
        
    BRA LOOP_ZERO                            * continue the loop and print next nibble
    
    
LOOP_ZERO    
     MOVE.L     D5, D6                  * put the data in a register so we can manipulate it
     
     CLR.L      D2
     
     MOVE.B     #28, D2

     LSR.L      D2, D6                  * shift out everything to the right of the last nibble, we print backwards so it shows up the correct order in the console
     
     CMP.B      #10, D6
     
     BGE        LETTER_1_ZERO                  * determine if a letter or a number
     
     BRA        NUMBER_1_ZERO
     
LETTER_1_ZERO
     ADD.B      #55, D6
     
     MOVE.B     D6, D1                  * add the amount to change to ascii and move to D1 to prepare for printing
     
     BRA        PRINTOUT_NIBBLE_ZERO

NUMBER_1_ZERO    
     ADD.B      #48, D6
     
     MOVE.B     D6, D1                  * add the amount to change to ascii and move to D1 to prepare for printing
     
     BRA        PRINTOUT_NIBBLE_ZERO


PRINTOUT_NIBBLE_ZERO
    LSL.L      #4, D5                   * shift out the nibble you just read from the source
    
    ADD.B      #1, D3            
    
    MOVE.B     #6, D0                      * use TRAP task #6 to print a single character from D1  
    
    TRAP #15
     
    CMP.B      #8, D3                   * compare to the counter to check if you are done
     
    BEQ        DONE
    
    BRA LOOP_ZERO                            * continue the loop and print next nibble
        

     
PRINT_ZERO
    MOVE.B      #$30, D1

    MOVE.B      #6, D0  

    TRAP #15 

    BRA DONE  

* Put program code here

    *SIMHALT             ; halt simulator

* Put variables and constants here

    *END    START       ; last line of source
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
