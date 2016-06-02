*-----------------------------------------------------------
* Title      : CMP
* Written by : Ko Fukushima 
* Date       : 5/20/2016
* Description:
*-----------------------------------------------------------
   
CMP
                 * ADD message
                 LEA      CMP_MESSAGE,    A1
                 MOVE.B   #14,            D0
                 TRAP #15
                 
                 JSR     PRINTOUT_SIZE_PURPLE
                 
* print out after the opcode
                 
                 JSR     Set_Ea
                 
                 JSR     PRINT_EA *by using jmp table
                 
                 JSR     PRINT_COMMA
                 
                  * for the first Dn 
                 JSR     GET_Data_Register
                 
                 MOVE.B  #%000, D6 * for mode

                 JSR     PRINT_EA *by using jmp table
                 
 *                JMP     NEXT



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
