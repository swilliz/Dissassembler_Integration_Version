*-----------------------------------------------------------
* Title      : SUB
* Written by : Ko Fukushima
* Date       : 5/20/2016
* Description: 
*-----------------------------------------------------------

CHECK_SUB
                 * ADD message
*                 LEA      SUB_MESSAGE,    A1
*                 MOVE.B   #14,            D0
*                 TRAP #15
                 
                 JSR    CHECK_GET_SIZE_PURPLE
                 
           *      JSR     PRINTOUT_SIZE_PURPLE
                 
                 
* check for dn and ea
                 CLR.L D0                *clear D0
                 
                 CLR.L D1                *clear D1
                 
                 MOVE.W  (A5),D0     *D0 is the binary value to decode
                 
                 * check the bit at 7
                 MOVE.B  #7,D1           *8 bits is the number of times to shift to the left to remove opcode & register #

                 LSL.W   D1,D0           *Shift the bits 8 times -> D0 now removes the opcode & reg#
                 
                 MOVE.B  #15,D1          *14 bits is the number of times to shift to hold the mode number

                 LSR.W   D1,D0           *Shift the bits 14 times -> D0 now holds the mode number
                 
                 CMP.B   #0, D0
                 
              *   BTST    #8, D0
                 
                 BEQ     CHECK_SUB_FIRST_EA
                 
                 * for the first Dn 
                 JSR     CHECK_GET_Data_Register
                 
                 CLR.L   D6
                 
                 MOVE.B  #%000, D6 * for mode
                 
                 JSR     CHECK_EA *by using jmp table
                 
            *     JSR     PRINT_COMMA
                 
                 JSR     CHECK_Set_Ea
                 
                 JSR     CHECK_EA *by using jmp table
                 
                 JMP     CHECK_PARSE_MEMORY
                 
CHECK_SUB_FIRST_EA
                 JSR     CHECK_Set_Ea
                 
                 JSR     CHECK_EA *by using jmp table
                 
       *          JSR     PRINT_COMMA
                 
                  * for the first Dn 
                 JSR     CHECK_GET_Data_Register
                 
                 CLR.L   D6
                 
                 MOVE.B  #%000, D6 * for mode

                 JSR     CHECK_EA *by using jmp table
                 
                 JMP     CHECK_PARSE_MEMORY







*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
