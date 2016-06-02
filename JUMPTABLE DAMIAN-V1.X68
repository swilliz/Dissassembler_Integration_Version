 
* Program starts here

                 MOVE.W  (A5),D0

*                 ORG     $400

*start            LEA     stack,SP        *Load the SP

                 LEA     jmp_table,A0    *Index into the table

                 CLR.L   D0              *Zero it

                 MOVE.W  (A5),D0     *We'll play with it here

                 MOVE.B  #shift,D1       *Shift 12 bits to the right  

                 LSR.W   D1,D0           *Move the bits

*

* Consider the next instruction. Why do we have to multiply the index 

* by 6? How many bytes does a single jump table entry require? 

 

               MULU        #6,D0       *Form offset     

               JSR         0(A0,D0)   *Jump indirect with index

                    

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

 

 

code0000       BRA         ADDI

code0001       BRA         MOVEB

code0010       BRA         MOVEL

code0011       BRA         MOVEW

code0100       BRA         GROUP_0100_CODE

code0101       BRA         ADDQ   * Subroutine for ADDQ

code0110       BRA         BCC

code0111       BRA         MOVEQ

code1000       BRA         DIVU_OR

code1001       BRA         SUB    * Subroutine for SUB

code1010       STOP        #$2700

 

* Next we put in the next level of decoding. I just stuck this BRA

* instruction here so it would look different. If this was your real

* code, you would decode to the next level. Perhaps this would be

 * another jump table to the 8 possible op-codes at the next level.

 

code1011       BRA        CMP  * Subroutuine for CMP

code1100       BRA         MULS_AND

code1101       BRA         ADD_ADDA       *#$2700

code1110       BRA         SHIFTS

code1111       STOP        #$2700
                 

                    
            

*            *INCLUDE 'MESSAGE_Data.X68'
*            INCLUDE 'JUMPTABLE EA.X68'
*               END   $400 
















*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
