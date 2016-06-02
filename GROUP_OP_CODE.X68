*-----------------------------------------------------------
* Title      : OP-CODE
* Written by : Ko FUkushima
* Date       : 5/15/2016
* Description:
*-----------------------------------------------------------
    
               LEA     jmp_table,A0            *Index into the table

               CLR.L   D0              *Zero it

               MOVE.W  (A5),D0     *We'll play with it here

               MOVE.B  #shift,D1       *Shift 12 bits to the right  

               LSR.W   D1,D0           *Move the bits

jmp_table      JMP         code0000

               JMP         code0001

               JMP         code0010

               JMP         code0011

               JMP         code0100

               JMP         code0101

               JMP         code0110

               JMP         code0111

               JMP         code1000

               JMP         code1001

               JMP         code1010

               JMP         code1011

               JMP         code1100

               JMP         code1101

               JMP         code1110

               JMP         code1111

*The following subroutines will get filled in as you decode the instructions . For *now, just exit gracefully.

code0000       *BRA         ADDI * we don't have it now

code0001       BRA         MOVEB

code0010       STOP        #$2700 * BRA         MOVEW

code0011       STOP        #$2700 * BRA         MOVEL

code0100       BRA         GROUP_0100_CODE

code0101       BRA         ADDQ

code0110       BRA         BCC * we don't have it now

code0111       STOP        #$2700 * BRA         MOVEQ

code1000       STOP        #$2700 * BRA         DIVU_OR

code1001       STOP        #$2700 * BRA         SUB * we don't have it now

code1010       STOP        #$2700 * It's gonna be error

code1011       STOP        #$2700 * BRA         CMP

code1100       STOP        #$2700 * BRA         MULS_AND

code1101       STOP        #$2700 * BRA         ADD_ADDA       

code1110       STOP        #$2700 * BRA        SHIFTS

code1111       STOP        #$2700 * It's gonna be error







*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
