*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
CHECK_MOVEM_OPCODE

   CLR.L       D0               *Zero it
   
   CLR.L       D6

   MOVE.W      (A5),D0     *We'll play with it here

* print out the op code
*   LEA MOVEM_MESSAGE, A1
*          
*   MOVE.B #14, D0
*                 
*   TRAP #15    

* to make sure the size if it’s W or L
  MOVE.W     (A5), D0

  BTST       #6,  D0      

*  BNE        CHECK_PRINT_SIZE_L_MOVEM

* Print out size for W
*  LEA SIZE_W_PRINT, A1
*          
*  MOVE.B #14, D0
*                 
*  TRAP #15    
 
  BRA          CHECK_DR_FIELD
    
  * Print out size for W
*  PRINT_SIZE_L_MOVEM

*  LEA SIZE_L_PRINT, A1
*          
*  MOVE.B #14, D0
*                 
*  TRAP #15    

CHECK_DR_FIELD
               
  BTST        #10,  D0    * BIT TEST

  BEQ         CHECK_Regitset_Memory *if D0 holds a 1

  BRA         CHECK_Memory_Register *If D0 hollds a 0

  CLR.L D4

  MOVE.B #15, D4

CHECK_Regitset_Memory
*    MOVE.W      (A6)+, D3
    
    * CHECK IF PRE DECREMEMNT
    MOVE.W (A5), D0
    
    MOVE.B      #10, D1
    
    LSL.W       D1, D0

    MOVE.B      #13, D1

    LSR.W       D1, D0

    CMP.B       #%100, D0

    BEQ         CHECK_OPPOSITE_LOOP 
    * NOW IT CAN BE IN REGULAR ORDER
    
    MOVE.B      #15, D4
    
    JSR         CHECK_LOOP_MOVEM
    
*    LEA COMMA, A1
*    
*    MOVE.B      #14, D0
*    
*    TRAP #15
    
    JSR CHECK_PRINT_ADDRESS
    
    BRA CHECK_PARSE_MEMORY

CHECK_PRINT_ADDRESS 
    MOVE.W      (A5), D0

    MOVE.B      #10, D1
    
    LSL.W       D1, D0
    
    MOVE.B      #13, D1

    LSR.W       D1, D0
    
    MOVE.B      D0, D6
    
    MOVE.W      (A5), D0
    
    LSL.W       D1, D0
    
    LSR.W       D1, D0
    
    CLR.L       D7
    
    MOVE.B      D0, D7
    
    JSR CHECK_EA
    
    RTS

CHECK_Memory_Register
*    MOVE.W (A6)+, D3
    
    JSR         CHECK_PRINT_ADDRESS
    
*    LEA         COMMA, A1
*    
*    MOVE.B      #14, D0
*    
*    TRAP #15
        
*    MOVE.W      (A6)+, D3
    
    MOVE.B      #15, D4
    
    JSR         CHECK_LOOP_MOVEM
    
    BRA CHECK_PARSE_MEMORY

*MOVE M
* LOOP THAT TESTS TO SEE IF EACH BIT IS ONE

CHECK_OPPOSITE_LOOP
    CLR         D1

    *MOVE.W      (A6)+, D3
    
    MOVE.B      #15, D4
    
    JSR CHECK_OPPOSITE_LOOP_MOVEM
    
*    LEA COMMA, A1
*    
*    MOVE.B      #14, D0
*    
*    TRAP #15
    
    JSR CHECK_PRINT_ADDRESS
    
    BRA CHECK_PARSE_MEMORY

        
CHECK_OPPOSITE_LOOP_MOVEM
        
    BTST        D4, D3     * BIT TEST

    BNE         CHECK_OPPOSITE_IS_USED_FIRST

    SUB.B       #1, D4
    
CHECK_OPPOSITE_CHECK
    CMP.B       #-1,  D4

    BEQ         DONE

    BRA         CHECK_OPPOSITE_LOOP_MOVEM
    
CHECK_OPPOSITE_LOOP_MOVEM_SECOND               * FOR ALL REGISTERS PRINTED AFTER THE FIRST
    BTST        D4, D3     * BIT TEST

    BNE         CHECK_OPPOSITE_IS_USED

    SUB.B       #1, D4
    
CHECK_OPPOSITE_CHECK_SECOND
    CMP.B       #-1,  D4

    BEQ         DONE

    BRA         CHECK_OPPOSITE_LOOP_MOVEM_SECOND

CHECK_OPPOSITE_IS_USED_FIRST
    JSR         CHECK_OPPOSITE_REGISTER_MOVEM

    SUB.B       #1, D4

    BRA         CHECK_OPPOSITE_CHECK_SECOND


CHECK_OPPOSITE_IS_USED
*    LEA         SLASH, A1
*
*    MOVE.B      #14, D0
*
*    TRAP #15
    
    JSR         CHECK_OPPOSITE_REGISTER_MOVEM

    SUB.B       #1, D4

    BRA         CHECK_OPPOSITE_CHECK_SECOND

    
    
CHECK_OPPOSITE_REGISTER_MOVEM
    LEA        CHECK_OPPOSITE_jmp_table_MOVEM, A0
    CLR        D2
    MOVE.B     #6, D2
    MULU       D4, D2                           
    JMP        0(A0,D2)   *Jump indirect with index
                    
CHECK_OPPOSITE_jmp_table_MOVEM      
    JMP         CHECK_OPPOSITE_bit0
               JMP         CHECK_OPPOSITE_bit1
               JMP         CHECK_OPPOSITE_bit2
               JMP         CHECK_OPPOSITE_bit3
               JMP         CHECK_OPPOSITE_bit4
               JMP         CHECK_OPPOSITE_bit5
               JMP         CHECK_OPPOSITE_bit6
               JMP         CHECK_OPPOSITE_bit7
               JMP         CHECK_OPPOSITE_bit8
               JMP         CHECK_OPPOSITE_bit9
               JMP         CHECK_OPPOSITE_bit10
               JMP         CHECK_OPPOSITE_bit11
               JMP         CHECK_OPPOSITE_bit12
               JMP         CHECK_OPPOSITE_bit13
               JMP         CHECK_OPPOSITE_bit14
               JMP         CHECK_OPPOSITE_bit15
        
 
*The following subroutines will get filled in as you decode the instructions . For *now, just exit gracefully.
 
 
CHECK_OPPOSITE_bit0    * D0
    MOVE.B    #%111, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_OPPOSITE_bit1    * D1
    MOVE.B    #%110, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_OPPOSITE_bit2    * D2
    MOVE.B    #%101, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA  

    RTS

CHECK_OPPOSITE_bit3    * D3
    MOVE.B    #%100, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_OPPOSITE_bit4    * D4
    MOVE.B    #%011, D7    * REGISTER

    MOVE.B    #%001, D6    * MODE

    JSR       CHECK_EA

    RTS    


CHECK_OPPOSITE_bit5    * D5
    MOVE.B    #%010, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR       CHECK_EA

    RTS    

CHECK_OPPOSITE_bit6    * D6
    MOVE.B    #%001, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR       CHECK_EA

    RTS    

CHECK_OPPOSITE_bit7    * D7
    MOVE.B    #%000, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_OPPOSITE_bit8    * A0
    MOVE.B    #%111, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_OPPOSITE_bit9    * A1
    MOVE.B    #%110, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_OPPOSITE_bit10    * A2
    MOVE.B    #%101, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    


CHECK_OPPOSITE_bit11    * A5
    MOVE.B    #%010, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR       CHECK_EA

    RTS    

CHECK_OPPOSITE_bit12    * A4
    MOVE.B    #%011, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    


CHECK_OPPOSITE_bit13    * A5
    MOVE.B    #%010, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    


CHECK_OPPOSITE_bit14     * A6
    MOVE.B    #%001, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR       CHECK_EA

    RTS        


CHECK_OPPOSITE_bit15    * A7
    MOVE.B    #%000, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    





CHECK_LOOP_MOVEM
        
    BTST        D4, D3     * BIT TEST

    BNE         CHECK_IS_USED_FIRST

    SUB.B       #1, D4
    
CHECK_CHECK
    CMP.B       #-1,  D4

    BEQ         DONE

    BRA         CHECK_LOOP_MOVEM
    
CHECK_LOOP_MOVEM_SECOND               * FOR ALL REGISTERS PRINTED AFTER THE FIRST
    BTST        D4, D3     * BIT TEST

    BNE         CHECK_IS_USED

    SUB.B       #1, D4
    
CHECK_CHECK_SECOND
    CMP.B       #-1,  D4

    BEQ         DONE

    BRA         CHECK_LOOP_MOVEM_SECOND

CHECK_IS_USED_FIRST
    JSR         CHECK_PRINT_REGISTER_MOVEM

    SUB.B       #1, D4

    BRA         CHECK_CHECK_SECOND


CHECK_IS_USED
*    LEA         SLASH, A1
*
*    MOVE.B      #14, D0
*
*    TRAP #15
    
    JSR         CHECK_PRINT_REGISTER_MOVEM

    SUB.B       #1, D4

    BRA         CHECK_CHECK_SECOND





CHECK_PRINT_REGISTER_MOVEM
    LEA         CHECK_jmp_table_MOVEM, A0
    CLR         D2
    MOVE.B      #6, D2
    MULU        D4, D2                           
    JMP         0(A0,D2)   *Jump indirect with index
                    
CHECK_jmp_table_MOVEM      
    JMP         CHECK_bit0
               JMP         CHECK_bit1
               JMP         CHECK_bit2
               JMP         CHECK_bit3
               JMP         CHECK_bit4
               JMP         CHECK_bit5
               JMP         CHECK_bit6
               JMP         CHECK_bit7
               JMP         CHECK_bit8
               JMP         CHECK_bit9
               JMP         CHECK_bit10
               JMP         CHECK_bit11
               JMP         CHECK_bit12
               JMP         CHECK_bit13
               JMP         CHECK_bit14
               JMP         CHECK_bit15
        
 
*The following subroutines will get filled in as you decode the instructions . For *now, just exit gracefully.
 
 
CHECK_bit0    * D0
    MOVE.B    #%000, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_bit1    * D1
    MOVE.B    #%001, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_bit2    * D2
    MOVE.B    #%010, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA   

    RTS

CHECK_bit3    * D3
    MOVE.B    #%011, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_bit4    * D4
    MOVE.B    #%100, D7    * REGISTER

    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    


CHECK_bit5    * D5
    MOVE.B    #%101, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_bit6    * D6
    MOVE.B    #%110, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_bit7    * D7
    MOVE.B    #%111, D7    * REGISTER
    
    MOVE.B    #%000, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_bit8    * A0
    MOVE.B    #%000, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_bit9    * A1
    MOVE.B    #%001, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_bit10    * A2
    MOVE.B    #%010, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA

    RTS    


CHECK_bit11    * A5
    MOVE.B    #%011, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_bit12    * A4
    MOVE.B    #%100, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA

    RTS    


CHECK_bit13    * A5
    MOVE.B    #%101, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA

    RTS    


CHECK_bit14     * A6
    MOVE.B    #%110, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA

    RTS        


CHECK_bit15    * A7
    MOVE.B    #%111, D7    * REGISTER
    
    MOVE.B    #%001, D6    * MODE

    JSR        CHECK_EA

    RTS    

CHECK_DONE_MOVEM_LOOP
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
