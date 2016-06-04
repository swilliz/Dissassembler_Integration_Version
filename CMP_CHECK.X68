*-----------------------------------------------------------
* Title      : CMP
* Written by : Ko Fukushima 
* Date       : 5/20/2016
* Description:
*-----------------------------------------------------------
   
CHECK_CMP
                 * ADD message
*                 LEA      CMP_MESSAGE,    A1
*                 MOVE.B   #14,            D0
*                 TRAP #15
                 
                 JSR GET_SIZE_PURPLE
                 
        *         JSR     PRINTOUT_SIZE_PURPLE
                 
* print out after the opcode
                 
                 JSR     CHECK_Set_Ea
                 
                 JSR     CHECK_EA *by using jmp table
                 
            *     JSR     PRINT_COMMA
                 
                  * for the first Dn 
                 JSR     CHECK_GET_Data_Register
                 
                 CLR.L   D6
                 
                 MOVE.B  #%000, D6 * for mode

                 JSR     CHECK_EA *by using jmp table
                 
                 JMP     CHECK_PARSE_MEMORY

                 
 *                JMP     NEXT






*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
