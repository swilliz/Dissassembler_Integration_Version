*-----------------------------------------------------------
* Title      :
* Written by : Samuel Williams
* Date       :
* Description:
*-----------------------------------------------------------
*    ORG    $1000
*example          EQU     %0100110011100010
*START:                  ; first instruction of program
*   MOVE.W       #$500, A0
   
*   MOVE.W       #%1000000100001000, (A5)

MOVEM_OPCODE

   CLR.L       D0               *Zero it

   MOVE.W      (A5), D0     *We'll play with it here

* print out the op code
   LEA MOVEM_MESSAGE, A1
          
   MOVE.B #14, D0
                 
   TRAP #15    

* to make sure the size if it’s W or L
  MOVE.W     (A5), D0

  BTST       #6,  D0      

  BNE        PRINT_SIZE_L_MOVEM

* Print out size for W
  LEA SIZE_W_PRINT, A1
          
  MOVE.B #14, D0
                 
  TRAP #15    
 
  BRA          DR_FIELD
    
  * Print out size for W
PRINT_SIZE_L_MOVEM

  LEA SIZE_L_PRINT, A1
          
  MOVE.B #14, D0
                 
  TRAP #15    

DR_FIELD
               
  BTST        #10,  D0    * BIT TEST

  BEQ         Regitset_Memory *if D0 holds a 1

  BRA         Memory_Register *If D0 hollds a 0

  CLR.L D4

  MOVE.B #15, D4

Regitset_Memory
    MOVE.W      (A5)+, D3
    
    MOVE.B      #15, D4
    
    JSR         LOOP_MOVEM
    
    LEA COMMA, A1
    
    MOVE.B      #14, D0
    
    TRAP #15
    
    JSR PRINT_ADDRESS
    
    BRA PARSE_MEMORY

PRINT_ADDRESS 
    MOVE.W      #example, D0

    MOVE.B      #10, D1
    
    LSL.W       D1, D0
    
    MOVE.B      #13, D1

    LSR.W       D1, D0
    
    MOVE.B      D0, D6
    
    MOVE.L      #example, D0
    
    LSL.W       D1, D0
    
    LSR.W       D1, D0
    
    MOVE.B      D0, D7
    
    JSR PRINT_EA
    
    RTS

Memory_Register
    JSR         PRINT_ADDRESS
    
    LEA         COMMA, A1
    
    MOVE.B      #14, D0
    
    TRAP #15
    
* CHECK IF PRE DECREMEMNT
    MOVE.L #example, D0
    
    MOVE.B      #10, D1
    
    LSL.W       D1, D0

    MOVE.B      #13, D1

    LSR.W       D1, D0

    CMP.B       #%100, D0

    BEQ         OPPOSITE_LOOP 
    
    MOVE.W      (A5)+, D3
    
    MOVE.B      #15, D4
    
    JSR         LOOP_MOVEM
    
    BRA PARSE_MEMORY

*MOVE M
* LOOP THAT TESTS TO SEE IF EACH BIT IS ONE

OPPOSITE_LOOP
    CLR         D1

    MOVE.W      (A5)+, D3
    
    MOVE.B      #15, D4
    
    JSR OPPOSITE_LOOP_MOVEM
        
OPPOSITE_LOOP_MOVEM
        
    BTST        D4, D3     * BIT TEST

    BNE         OPPOSITE_IS_USED_FIRST

    SUB.B       #1, D4
    
OPPOSITE_CHECK
    CMP.B       #0,  D4

    BEQ         PARSE_MEMORY

    BRA         OPPOSITE_LOOP_MOVEM
    
OPPOSITE_LOOP_MOVEM_SECOND               * FOR ALL REGISTERS PRINTED AFTER THE FIRST
    BTST        D4, D3     * BIT TEST

    BNE         OPPOSITE_IS_USED

    SUB.B       #1, D4
    
OPPOSITE_CHECK_SECOND
    CMP.B       #0,  D4

    BEQ         PARSE_MEMORY

    BRA         OPPOSITE_LOOP_MOVEM_SECOND

OPPOSITE_IS_USED_FIRST
    JSR         OPPOSITE_PRINT_REGISTER_MOVEM

    SUB.B       #1, D4

    BRA         OPPOSITE_CHECK_SECOND


OPPOSITE_IS_USED
    LEA         SLASH, A1

    MOVE.B      #14, D0

    TRAP #15
    
    JSR         OPPOSITE_PRINT_REGISTER_MOVEM

    SUB.B       #1, D4

    BRA         OPPOSITE_CHECK_SECOND

    
    
OPPOSITE_PRINT_REGISTER_MOVEM
    LEA        OPPOSITE_jmp_table_MOVEM, A0
    CLR        D2
    MOVE.B     #6, D2
    MULU       D4, D2                           
    JMP        0(A0,D2)   *Jump indirect with index
                    
OPPOSITE_jmp_table_MOVEM      
    JMP         OPPOSITE_bit0
               JMP         OPPOSITE_bit1
               JMP         OPPOSITE_bit2
               JMP         OPPOSITE_bit3
               JMP         OPPOSITE_bit4
               JMP         OPPOSITE_bit5
               JMP         OPPOSITE_bit6
               JMP         OPPOSITE_bit7
               JMP         OPPOSITE_bit8
               JMP         OPPOSITE_bit9
               JMP         OPPOSITE_bit10
               JMP         OPPOSITE_bit11
               JMP         OPPOSITE_bit12
               JMP         OPPOSITE_bit13
               JMP         OPPOSITE_bit14
               JMP         OPPOSITE_bit15
        
 
*The following subroutines will get filled in as you decode the instructions . For *now, just exit gracefully.
 
 
OPPOSITE_bit0    * D0
    MOVE.B    #%111, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    

OPPOSITE_bit1    * D1
    MOVE.B    #%110, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    

OPPOSITE_bit2    * D2
    MOVE.B    #%101, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA    

    RTS

OPPOSITE_bit3    * D3
    MOVE.B    #%100, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    

OPPOSITE_bit4    * D4
    MOVE.B    #%011, D7    * REGISTER

    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    


OPPOSITE_bit5    * D5
    MOVE.B    #%010, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    

OPPOSITE_bit6    * D6
    MOVE.B    #%001, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    

OPPOSITE_bit7    * D7
    MOVE.B    #%000, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    

OPPOSITE_bit8    * A0
    MOVE.B    #%111, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    

OPPOSITE_bit9    * A1
    MOVE.B    #%110, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    

OPPOSITE_bit10    * A2
    MOVE.B    #%101, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    


OPPOSITE_bit11    * A5
    MOVE.B    #%010, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    

OPPOSITE_bit12    * A4
    MOVE.B    #%011, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    


OPPOSITE_bit13    * A5
    MOVE.B    #%010, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    


OPPOSITE_bit14     * A6
    MOVE.B    #%001, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS        


OPPOSITE_bit15    * A7
    MOVE.B    #%000, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    





LOOP_MOVEM
        
    BTST        D4, D3     * BIT TEST

    BNE         IS_USED_FIRST

    SUB.B       #1, D4
    
CHECK
    CMP.B       #0,  D4

    BEQ         PARSE_MEMORY

    BRA         LOOP_MOVEM
    
LOOP_MOVEM_SECOND               * FOR ALL REGISTERS PRINTED AFTER THE FIRST
    BTST        D4, D3     * BIT TEST

    BNE         IS_USED

    SUB.B       #1, D4
    
CHECK_SECOND
    CMP.B       #0,  D4

    BEQ         PARSE_MEMORY

    BRA         LOOP_MOVEM_SECOND

IS_USED_FIRST
    JSR         PRINT_REGISTER_MOVEM

    SUB.B       #1, D4

    BRA         CHECK_SECOND


IS_USED
    LEA         SLASH, A1

    MOVE.B      #14, D0

    TRAP #15
    
    JSR         PRINT_REGISTER_MOVEM

    SUB.B       #1, D4

    BRA         CHECK_SECOND





PRINT_REGISTER_MOVEM
    LEA         jmp_table_MOVEM, A0
    CLR         D2
    MOVE.B      #6, D2
    MULU        D4, D2                           
    JMP         0(A0,D2)   *Jump indirect with index
                    
jmp_table_MOVEM      
    JMP         bit0
               JMP         bit1
               JMP         bit2
               JMP         bit3
               JMP         bit4
               JMP         bit5
               JMP         bit6
               JMP         bit7
               JMP         bit8
               JMP         bit9
               JMP         bit10
               JMP         bit11
               JMP         bit12
               JMP         bit13
               JMP         bit14
               JMP         bit15
        
 
*The following subroutines will get filled in as you decode the instructions . For *now, just exit gracefully.
 
 
bit0    * D0
    MOVE.B    #%000, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    

bit1    * D1
    MOVE.B    #%001, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

RTS    

bit2    * D2
    MOVE.B    #%010, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA    

    RTS

bit3    * D3
    MOVE.B    #%011, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    

bit4    * D4
    MOVE.B    #%111, D7    * REGISTER

    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    


bit5    * D5
    MOVE.B    #%101, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    

bit6    * D6
    MOVE.B    #%110, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    

bit7    * D7
    MOVE.B    #%111, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        PRINT_EA

    RTS    

bit8    * A0
    MOVE.B    #%000, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    

bit9    * A1
    MOVE.B    #%001, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    

bit10    * A2
    MOVE.B    #%010, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    


bit11    * A5
    MOVE.B    #%011, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    

bit12    * A4
    MOVE.B    #%100, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    


bit13    * A5
    MOVE.B    #%101, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    


bit14     * A6
    MOVE.B    #%110, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS        


bit15    * A7
    MOVE.B    #%111, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        PRINT_EA

    RTS    

DONE_MOVEM_LOOP
    RTS
* Put program code here

   * SIMHALT             ; halt simulator
    *INCLUDE 'MESSAGE_Data.X68'
   * INCLUDE 'JUMPTABLE EA.X68'

* Put variables and constants here

   * END    START        ; last line of source





































*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
