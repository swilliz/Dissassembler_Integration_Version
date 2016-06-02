 *ORG     $400

* D6 is mode, D7 is register 
* Dn, An, (An), (An)+, -(An)
* Jumps based on mode
* USING A5 AS THE ADDRESS REGISTER HOLDING CURRENT ADDRESS OF PROGRESS

* Consider the next instruction. Why do we have to multiply the index 

* by 6? How many bytes does a single jump table entry require? 


*start 
               *MOVE.B       #%00, D5         *SIZE
              
               *MOVE.B       #%111,D6         *MODE
               
               *MOVE.B       #%100,D7         *REGISTER
               
               *MOVE.L       #$4000, A5

               *MOVE.B       #$0040, (A5)  
PRINT_EA 
               
               LEA     jmp_table_ea,A0      *Index into the table

               MULU        #6,D6            *Form offset     

               JMP         0(A0,D6)         *Jump indirect with index
 
jmp_table_ea   JMP         code000

               JMP         code001

               JMP         code010

               JMP         code011

               JMP         code100

               JMP         code101

               JMP         code110

               JMP         code111
        

 

*The following subroutines will get filled in as you decode the instructions . For *now, just exit gracefully.

 

 

code000       BRA         DATA_REGISTER

code001       BRA         ADDRESS_REGISTER

code010       BRA         INDIRECT_ADDRESS

code011       BRA         ADDRESS_PI    * post increment

code100       BRA         ADDRESS_PD    * pre decrement

code101       BRA         ADDRESS_W_DISPLACEMENT

code110       BRA         ADDRESS_W_INDEX

code111       BRA         GROUP_111

 
DATA_REGISTER

            LEA D_REGISTER, A1
            
            CLR.L D0
            
            MOVE.B #14, D0
            
            TRAP #15                * print out 'D' for data register
            
            CLR.L D1
            
            MOVE.B D7, D1
            
            MOVE.B #3, D0           * print out the number in the register
            
            TRAP #15
            
            BRA DONE
            

ADDRESS_REGISTER
            LEA A_REGISTER, A1
            
            CLR.L D0
            
            MOVE.B #14, D0          * print out the 'A' for address register
            
            TRAP #15
            
            CLR.L D1
            
            MOVE.B D7, D1
            
            MOVE.B #3, D0
            
            TRAP #15                * print out the value in the data register

            BRA DONE
            
INDIRECT_ADDRESS
            LEA IA_START, A1
            
            CLR.L D0
            
            MOVE.B #14, D0          * print out the '(A' for start of indirect address register
            
            TRAP #15
            
            CLR.L D1
            
            MOVE.B D7, D1
            
            MOVE.B #3, D0
            
            TRAP #15                * print out the value in the data register
            
            LEA IA_END, A1

            CLR.L D0
            
            MOVE.B #14, D0          * print out the ')' for end of post increment address register
            
            TRAP #15
            
            BRA DONE

ADDRESS_PI
            LEA A_PI_START, A1
            
            CLR.L D0
            
            MOVE.B #14, D0          * print out the '(A' for start of post increment address register
            
            TRAP #15
            
            CLR.L D1
            
            MOVE.B D7, D1
            
            MOVE.B #3, D0
            
            TRAP #15                * print out the value in the data register
            
            LEA A_PI_END, A1

            CLR.L D0
            
            MOVE.B #14, D0          * print out the ')+' for end of post increment address register
   
            TRAP #15
            
            BRA DONE  
       
ADDRESS_PD

            LEA A_PD_START, A1
            
            CLR.L D0
            
            MOVE.B #14, D0          * print out the '-(A' for start of pre decrement address register
            
            TRAP #15
            
            CLR.L D1
            
            MOVE.B D7, D1
            
            MOVE.B #3, D0
            
            TRAP #15                * print out the value in the data register
            
            LEA A_PD_END, A1

            CLR.L D0
            
            MOVE.B #14, D0          * print out the ')-' for end of pre decrement

            TRAP #15
            
            BRA DONE
            
ADDRESS_W_DISPLACEMENT
            BRA DONE

ADDRESS_W_INDEX
            BRA DONE

GROUP_111

               LEA         jmp_table_ea_111,A0    *Index into the table

               MULU        #6,D7       *Form offset     

               JMP         0(A0,D7)   *Jump indirect with index
               
jmp_table_ea_111   
               JMP         reg000

               JMP         reg001

               JMP         reg010

               JMP         reg011

               JMP         reg100
        

reg010       BRA         PC_W_DISPLACEMENT

reg011       BRA         PC_W_INDEX

reg000       BRA         ABSOLUTE_SHORT

reg001       BRA         ABSOLUTE_LONG

reg100       BRA         IMMEDIATE


PC_W_DISPLACEMENT
            BRA DONE

PC_W_INDEX
            BRA DONE

ABSOLUTE_SHORT
            LEA         HEX_SIGN, A1
            
            MOVE.B      #14, D0
            
            TRAP #15
            
            CLR.L       D1
            
            MOVE.W      (A6)+, D1
            
            MOVE.B      #15, D0
            
            MOVE.B      #16, D2
            
            TRAP #15
            
            BRA DONE  


ABSOLUTE_LONG
            LEA         HEX_SIGN, A1
            
            MOVE.B      #14, D0
            
            TRAP #15
            
            CLR.L       D1
            
            MOVE.L      (A6)+, D1
            
            MOVE.B      #15, D0
            
            MOVE.B      #16, D2
            
            TRAP #15
                        
            BRA DONE  


IMMEDIATE
            LEA     POUND_SIGN, A1
            
            MOVE.B  #14, D0
            
            TRAP #15
            
            LEA     HEX_SIGN, A1
            
            TRAP #15
            
            CMP.B   #%00, D5
            
            BEQ     IMMEDIATE_B
            
            CMP.B   #%01, D5
            
            BEQ     IMMEDIATE_W
            
            BRA     IMMEDIATE_L
            
IMMEDIATE_B
            CLR.L       D5
   
            MOVE.W      (A6)+, D5
            
            JSR         HEX_TO_ASCII
            
            BRA DONE

IMMEDIATE_W
            CLR.L       D5

            MOVE.W      (A6)+, D5
            
            JSR         HEX_TO_ASCII
            
            *MOVE.B      #15, D0
            
            *MOVE.B      #16, D2
            
            *TRAP #15 
            
            BRA DONE        

IMMEDIATE_L 
            CLR.L       D5
            
            MOVE.L      (A6)+, D5
    
            JSR         HEX_TO_ASCII
            
            BRA DONE
            
DONE 
    RTS
    
 * INCLUDE 'MESSAGE_Data.X68'
 * INCLUDE 'HEX_TO_ASCII_V1.X68'
     
        








*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
