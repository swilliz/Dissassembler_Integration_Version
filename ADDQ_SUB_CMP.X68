*-----------------------------------------------------------
* Title      : SUBROUTINES - CMP, SUB, ADDQ
* Written by : Samuel Williams - Uses code from Ko Fukushima
*                and Damian Banki
* Date       : 5/23/2016
* Description: Contains the subroutines for CMP, SUB, and 
*                ADDQ
*-----------------------------------------------------------
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

    MOVE.W (A5), D0
    
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
   
    MOVE.W (A5), D0

    MOVE.B  #4,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds Dn
                                            
    MOVE.W D0, D7 *D6 holds Dn
    
    JSR PRINT_EA
    
    CLR.L D6
    
    CLR.L D7
    
    MOVE.W (A5), D0

    MOVE.B  #10,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds MODE
                                            
    MOVE.W D0, D6 *D6 holds mode
    
    MOVE.W (A5), D0

    MOVE.B  #13,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds Register
                                            
    MOVE.W D0, D7 *D6 holds Register   
    
    JSR PRINT_EA

    BRA PARSE_MEMORY


ADDQ

    LEA ADDQ_MESSAGE, A1  *print ADDQ
                 
    MOVE.B #14, D0
                 
    TRAP #15
    
    MOVE.W (A5), D0
    
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

    MOVE.W #$111, D6
    
    MOVE.W #$100, D7

    JSR PRINT_EA
    
    CLR.L D6
    
    CLR.L D7
    
    MOVE.W (A5), D0

    MOVE.B  #10,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds MODE
                                            
    MOVE.W D0, D6 *D6 holds mode
    
    MOVE.W (A5), D0

    MOVE.B  #13,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds MODE
                                            
    MOVE.W D0, D7 *D6 holds Register   
    
    JSR PRINT_EA

    BRA PARSE_MEMORY

    







*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
