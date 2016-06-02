*-----------------------------------------------------------
* Title      : Damian Sam Williams
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
*    ORG    $1000
    
*example          EQU     %0101111000000010
                
*START:           ; first instruction of program

 *                MOVEA.W    #$7000, A5
 *                MOVE.L    #$10342035, (A5)
                 
MOVEB            LEA MOVE_MESSAGE, A1   * printing out the opcode and size

                 CLR.L  D0
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 LEA SIZE_B_PRINT, A1
                 
                 TRAP #15               * done printing opcode and size
                 
                 MOVE.L (A5), D0
                 
                 LSL.W #4, D0
                 
                 CLR.L D1
                 
                 MOVE.B #13, D1
                 
                 LSR.W  D1, D0

                 MOVE.B D0, D7

                 MOVE.L (A5), D0

                 LSL.W  #7, D0

                 MOVE.B #11, D1

                 LSR.W  D1, D0
                 
                 MOVE.B D0, D6
                 
                 JSR print_ea
                 
                 LEA COMMA, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 MOVE.L #example, D0
                 
                 MOVE.B #10, D1
                 
                 LSL.W  D1, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W  D1, D0

                 MOVE.B D0, D6
                 
                 MOVE.L #example, D0
                 
                 LSL.W  D1, D0
                 
                 LSR.W  D1, D0
                 
                 MOVE.B D0, D7
                 
                 JSR print_ea
                 
                 BRA DONE

MOVEW            CLR.L D0
                 
                 CLR.L D1
                 
                 MOVE.W #example,D0
                 
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
                    
                 BRA DONE
              

MOVEL            CLR.L D0
                 
                 CLR.L D1
                 
                 MOVE.W #example,D0
                 
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
                 
                 BRA DONE
                 
                 
MOVEAW           LEA MOVEA_MESSAGE, A1  * start printing out opcode and size

                 CLR.L D0
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 LEA SIZE_W_PRINT, A1
                 
                 TRAP #15               * done printing out opcode and size
                 
                 BRA DONE

MOVEAL           LEA MOVEA_MESSAGE, A1  * start printing out opcode and size

                 CLR.L D0
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 LEA SIZE_L_PRINT, A1
                 
                 TRAP #15               * done printing out opcode and size
                 
                 BRA DONE 
                
SUB
    LEA SUB_MESSAGE, A1  *print SUB
                 
    MOVE.B #14, D0
                 
    TRAP #15
    
    JMP SUB_CMP

CMP
    LEA CMP_MESSAGE, A1  *print CMP
                 
    MOVE.B #14, D0
                 
    TRAP #15
    
    JMP SUB_CMP

SUB_CMP

    MOVE.L #example, D0
    
    MOVE.B  #8,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #14,D1

    LSR.W   D1,D0  *DO now holds size
                                            
    CMP.B    #$2, D0        *if D0 holds 3, size is L
    
    JMP      SUB_CMP_L   
                 
    CMP.B    #$1, D0        *if D0 holds 3, size is W
                                 
    JMP      SUB_CMP_W

    JMP      SUB_CMP_B

SUB_CMP_B  *Print B

    LEA SIZE_B_PRINT, A1  *print B
                 
    MOVE.B #14, D0
                 
    TRAP #15
    
    MOVE.B #%00, D5
    
    JMP PRINT_SUB_CMP
    
SUB_CMP_W  *Print W

    LEA SIZE_W_PRINT, A1  *print W
                 
    MOVE.B #14, D0
                 
    TRAP #15
    
    MOVE.B #%01, D5

    JMP PRINT_SUB_CMP

SUB_CMP_L   *Print L

    LEA SIZE_L_PRINT, A1  *print L
                 
    MOVE.B #14, D0
                 
    TRAP #15

    MOVE.B #%10, D5
    
    JMP PRINT_SUB_CMP
    
PRINT_SUB_CMP

    MOVE.W #$000, D6
   
    MOVE.L #example, D0

    MOVE.B  #4,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds Dn
                                            
    MOVE.W D0, D7 *D6 holds Dn
    
    JSR PRINT_EA
    
    CLR.L D6
    
    CLR.L D7
    
    MOVE.L #example, D0

    MOVE.B  #10,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds MODE
                                            
    MOVE.W D0, D6 *D6 holds mode
    
    MOVE.L #example, D0

    MOVE.B  #13,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds Register
                                            
    MOVE.W D0, D7 *D6 holds Register   
    
    JSR PRINT_EA

    BRA DONE


ADDQ

    LEA ADDQ_MESSAGE, A1  *print ADDQ
                 
    MOVE.B #14, D0
                 
    TRAP #15
    
    MOVE.L #example, D0
    
    MOVE.B  #8,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #14,D1

    LSR.W   D1,D0  *DO now holds size
                                            
    CMP.B    #$2, D0        *if D0 holds 3, size is L
    
    JMP      ADDQL
                 
    CMP.B    #$1, D0        *if D0 holds 3, size is W
                                 
    JMP      ADDQW

    JMP      ADDQB

ADDQB  *Print B

    LEA SIZE_B_PRINT, A1  *print B
                 
    MOVE.B #14, D0
                 
    TRAP #15
    
    MOVE.B #%00, D5
    
    JMP PRINTADDQ
    
ADDQW  *Print W

    LEA SIZE_W_PRINT, A1  *print W
                 
    MOVE.B #14, D0
                 
    TRAP #15
    
    MOVE.B #%01, D5

    JMP PRINTADDQ

ADDQL   *Print L

    LEA SIZE_L_PRINT, A1  *print L
                 
    MOVE.B #14, D0
                 
    TRAP #15

    MOVE.B #%10, D5
    
    JMP PRINTADDQ
    
PRINTADDQ
  
    MOVE.L #example, D0

    MOVE.B  #4,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds DATA
    
    MOVE.L D0, D1
                                            
    MOVE.B #3, D0
                 
    TRAP #15
    
    CLR.L D6
    
    CLR.L D7
    
    MOVE.L #example, D0

    MOVE.B  #10,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds MODE
                                            
    MOVE.W D0, D6 *D6 holds mode
    
    MOVE.L #example, D0

    MOVE.B  #13,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds MODE
                                            
    MOVE.W D0, D7 *D6 holds Register   
    
    JSR PRINT_EA

    BRA DONE

   * INCLUDE 'JUMPTABLE EA.X68'
        
    *SIMHALT             ; halt simulator

* Put variables and constants here

   * END    START        ; last line of source









*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
