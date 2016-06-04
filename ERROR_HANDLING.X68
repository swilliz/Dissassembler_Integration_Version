ERROR_HANDLING 
* Program starts here

                 MOVE.W  (A5),D0

*                 ORG     $400

*start            LEA     stack,SP        *Load the SP

                 LEA     CHECK_jmp_table,A0    *Index into the table

                 CLR.L   D0              *Zero it

                 MOVE.W  (A5),D0     *We'll play with it here

                 MOVE.B  #shift,D1       *Shift 12 bits to the right  

                 LSR.W   D1,D0           *Move the bits

*

* Consider the next instruction. Why do we have to multiply the index 

* by 6? How many bytes does a single jump table entry require? 

 

               MULU        #6,D0       *Form offset     

               JSR         0(A0,D0)   *Jump indirect with index

                    

CHECK_jmp_table      JMP         CHECK_code0000

               JMP         CHECK_code0001

               JMP         CHECK_code0010

               JMP         CHECK_code0011

               JMP         CHECK_code0100

               JMP         CHECK_code0101

               JMP         CHECK_code0110

               JMP         CHECK_code0111

               JMP         CHECK_code1000

               JMP         CHECK_code1001

               JMP         CHECK_code1010

               JMP         CHECK_code1011

               JMP         CHECK_code1100

               JMP         CHECK_code1101

               JMP         CHECK_code1110

               JMP         CHECK_code1111

        

 

*The following subroutines will get filled in as you decode the instructions . For *now, just exit gracefully.

 

 

CHECK_code0000       BRA         CHECK_ADDI

CHECK_code0001       BRA         CHECK_MOVEB

CHECK_code0010       BRA         CHECK_MOVEL

CHECK_code0011       BRA         CHECK_MOVEW

CHECK_code0100       BRA         CHECK_GROUP_0100_CODE

CHECK_code0101       BRA         CHECK_ADDQ   * Subroutine for ADDQ

CHECK_code0110       JMP         CHECK_BCC

CHECK_code0111       BRA         CHECK_MOVEQ

CHECK_code1000       BRA         CHECK_DIVU_OR

CHECK_code1001       BRA         CHECK_SUB    * Subroutine for SUB    

CHECK_code1010       BRA         ERROR_HANDLE

 

* Next we put in the next level of decoding. I just stuck this BRA

* instruction here so it would look different. If this was your real

* code, you would decode to the next level. Perhaps this would be

 * another jump table to the 8 possible op-codes at the next level.

 

CHECK_code1011       BRA         CHECK_CMP             *CMP  * Subroutuine for CMP

CHECK_code1100       BRA         CHECK_MULS_AND             *MULS, AND

CHECK_code1101       BRA         CHECK_ADD_ADDA             *ADD_ADDA       *#$2700

CHECK_code1110       BRA         CHECK_SHIFTS

CHECK_code1111       BRA         ERROR_HANDLE
                 
ERROR_HANDLE
        LEA         HEX_SIGN, A1
        
        MOVE.B      #14, D0
        
        TRAP #15

        MOVE.W      A5, D5
        
        JSR         HEX_TO_ASCII
        
        LEA         SPACE, A1
        
        MOVE.B      #14, D0
        
        TRAP #15

        LEA     DATA, A1
        
        MOVE.B      #14, D0
        
        TRAP #15
        
        LEA         POUND_SIGN, A1
        
        MOVE.B      #14, D0
        
        TRAP #15
        
        LEA         HEX_SIGN, A1
        
        TRAP #15
        
        MOVE.W      (A5)+, D5
        
        JSR         HEX_TO_ASCII
        
        BRA         PARSE_MEMORY
        
        INCLUDE     'DAMIAN_OP_CODE_HANDLE_ERROR.X68'
        INCLUDE     'CHECK_TRYING_NOP.X68'
        INCLUDE     'CHECK_ADDQ.X68'
        INCLUDE     'CHECK_GROUP_0100_CODE.X68'
        INCLUDE     'SUB_CHECK.X68'
        INCLUDE     'DIVU_OR_CHECK.X68'
        INCLUDE     'CMP_CHECK.X68'
        INCLUDE     'MULS_AND_CHECK.X68'
        INCLUDE     'CHECK_EA.X68'
        INCLUDE     'ADD_ADDA_CHECK.X68'
        INCLUDE     'BCC_CHECK.X68'
        INCLUDE     'MOVEQ_CHECK.X68'
        INCLUDE     'ADDI_CHECK.X68'
        INCLUDE     'MOVEM_CHECK.X68'
        
                    
            

*            *INCLUDE 'MESSAGE_Data.X68'
*            INCLUDE 'JUMPTABLE EA.X68'
*               END   $400 









































*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
