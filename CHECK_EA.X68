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
CHECK_EA 
               
               LEA     CHECK_jmp_table_ea,A0      *Index into the table

               MULU        #6,D6            *Form offset     

               JMP         0(A0,D6)         *Jump indirect with index
 
CHECK_jmp_table_ea   JMP         CHECK_code000

               JMP         CHECK_code001

               JMP         CHECK_code010

               JMP         CHECK_code011

               JMP         CHECK_code100

               JMP         CHECK_code101

               JMP         CHECK_code110

               JMP         CHECK_code111
        

 

*The following subroutines will get filled in as you decode the instructions . For *now, just exit gracefully.

 

 

CHECK_code000       BRA         CHECK_DATA_REGISTER

CHECK_code001       BRA         CHECK_ADDRESS_REGISTER

CHECK_code010       BRA         CHECK_INDIRECT_ADDRESS

CHECK_code011       BRA         CHECK_ADDRESS_PI    * post increment

CHECK_code100       BRA         CHECK_ADDRESS_PD    * pre decrement

CHECK_code101       BRA         CHECK_ADDRESS_W_DISPLACEMENT

CHECK_code110       BRA         CHECK_ADDRESS_W_INDEX

CHECK_code111       BRA         CHECK_GROUP_111

 
CHECK_DATA_REGISTER
            
            BRA DONE
            

CHECK_ADDRESS_REGISTER

            BRA DONE
            
CHECK_INDIRECT_ADDRESS
            
            BRA DONE

CHECK_ADDRESS_PI  
            BRA DONE  
       
CHECK_ADDRESS_PD  
            BRA DONE
            
CHECK_ADDRESS_W_DISPLACEMENT
            BRA ERROR_HANDLE

CHECK_ADDRESS_W_INDEX
            BRA ERROR_HANDLE

CHECK_GROUP_111

               LEA         CHECK_jmp_table_ea_111,A0    *Index into the table

               MULU        #6,D7       *Form offset     

               JMP         0(A0,D7)   *Jump indirect with index
               
CHECK_jmp_table_ea_111   
               JMP         CHECK_reg000

               JMP         CHECK_reg001

               JMP         CHECK_reg010

               JMP         CHECK_reg011

               JMP         CHECK_reg100
        

CHECK_reg010       BRA         CHECK_PC_W_DISPLACEMENT

CHECK_reg011       BRA         CHECK_PC_W_INDEX

CHECK_reg000       BRA         CHECK_ABSOLUTE_SHORT

CHECK_reg001       BRA         CHECK_ABSOLUTE_LONG

CHECK_reg100       BRA         CHECK_IMMEDIATE


CHECK_PC_W_DISPLACEMENT
            BRA ERROR_HANDLE

CHECK_PC_W_INDEX
            BRA ERROR_HANDLE

CHECK_ABSOLUTE_SHORT
            BRA DONE  


CHECK_ABSOLUTE_LONG           
            BRA DONE  


CHECK_IMMEDIATE   
            BRA DONE
            
    
 * INCLUDE 'MESSAGE_Data.X68'
 * INCLUDE 'HEX_TO_ASCII_V1.X68'
     
        









                 

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
