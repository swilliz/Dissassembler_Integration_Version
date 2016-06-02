*-----------------------------------------------------------
* Title      : DIVU_OR
* Written by : Ko Fukushima
* Date       : 5/18/2016
* Description:
*-----------------------------------------------------------
    
DIVU_OR          JSR      GET_SIZE_PURPLE  
                                          
                 CMP.B    #$3, D5        *if D0 holds 3, the opcode is DIVU
                 
                 BEQ      DIVU_CODE
                 
                 JMP      OR_CODE
                 
DIVU_CODE  
                 * OP_CODE message
                 LEA      DIVU_MESSAGE, A1
                 MOVE.B   #14, D0
                 TRAP #15

                 MOVE    #%01, D5          
                 
                 LEA      SIZE_W_PRINT,    A1
                 
                 MOVE.B   #14,             D0
        
                 TRAP #15
                 
                 JSR     Set_Ea
                 
                 JSR     PRINT_EA *by using jmp table
                 
                 JSR     PRINT_COMMA
                 
                  * for the first Dn 
                 JSR     GET_Data_Register
                 
                 MOVE.B  #%000, D6 * for mode

                 JSR     PRINT_EA *by using jmp table

                 JMP     PARSE_MEMORY

OR_CODE    
                 * OP_CODE message
                 LEA      OR_MESSAGE, A1
                 MOVE.B   #14, D0
                 TRAP #15

                 JSR PRINTOUT_SIZE_PURPLE
                 
                   * check for dn and ea
                 CLR.L D0                *clear D0
                 
                 CLR.L D1                *clear D1
                 
                 MOVE.W  (A5),D0     *D0 is the binary value to decode
                 
                 BTST    #8, D0
                 
                 BEQ     OR_FIRST_EA
                 
                 * for the first Dn 
                 JSR     GET_Data_Register
                 
                 MOVE.B  #%000, D6 * for mode
                 
                 JSR     PRINT_EA *by using jmp table
                 
                 JSR     PRINT_COMMA
                 
                 JSR     Set_Ea
                 
                 JSR     PRINT_EA *by using jmp table
                 
                 JMP     PARSE_MEMORY
                 
OR_FIRST_EA
                 JSR     Set_Ea
                 
                 JSR     PRINT_EA *by using jmp table
                 
                 JSR     PRINT_COMMA
                 
                  * for the first Dn 
                 JSR     GET_Data_Register
                 
                 MOVE.B  #%000, D6 * for mode

                 JSR     PRINT_EA *by using jmp table
                 
                 JMP     PARSE_MEMORY








*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
