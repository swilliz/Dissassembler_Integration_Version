CHECK_SHIFTS           CLR.L D0
                    
                 CLR.L D6

                 CLR.L D1
                 
                 MOVE.W (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0            * check to see if its memory shift
                 
                 BEQ CHECK_MEMORY_SHIFTS
                 
                 MOVE.W     (A5), D0
                 
                 MOVE.B     #11, D1
                 
                 LSL.W      D1, D0
                 
                 MOVE.B     #14, D1
                 
                 LSR.W      D1, D0
                 
                 CMP.B      #%00, D0
                 
                 BEQ        CHECK_ASD
                 
                 CMP.B      #%01, D0
                 
                 BEQ        CHECK_LSD
                 
                 CMP        #%11, D0
                 
                 BEQ        CHECK_ROD
                 
                 BRA        ERROR_HANDLE
                 
                 
CHECK_MEMORY_SHIFTS
                 MOVE.W (A5),D0
                 
                 LSL.W #4,D0            *shift out the opcode
                 
                 MOVE.B #13,D1          
                 
                 LSR.W D1,D0            *shift out everything, so only three bits after opcode are there
                 
                 CMP.B #1,D0            
                 
                 BEQ CHECK_LSD                *if the bits are 1, it is a logical shift
                 
                 CMP.B #3,D0
                 
                 BEQ CHECK_ROD                *if the bits are 3, it is a rotation
                 
                 MOVE.W (A5),D0
                 
                 LSL.W #4,D0            *shift out the opcode
                 
                 MOVE.B #13,D1          
                 
                 LSR.W D1,D0            *shift out everything, so only three bits after opcode are there   
                    
                 CMP.B  #0, D0
                 
                 BEQ    CHECK_ASD
                 
                 BRA ERROR_HANDLE
                 

CHECK_LSD              CLR.L D0               *still need to do checks, since an asd shift could still be a possibility
                 
                 CLR.L D1
                                               
                 MOVE.W (A5), D0
                 
                 LSL.W  #7, D0
                 
                 MOVE.B #15, D1
                 
                 LSR.W  D1, D0
                 
                 CMP.B  #1, D0
                 
                 BEQ CHECK_LSL
                 
                 CMP.B #0, D0
                 
                 BEQ CHECK_LSR
                 
                 BRA ERROR_HANDLE
                 

CHECK_LSL           
                 MOVE.W (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0        * check to see if it is memory and not register shift
                 
                 BEQ CHECK_LSD_MEMORY
                 
                 BRA CHECK_REGISTER_SHIFTS_EA

CHECK_LSR                    
                 MOVE.W (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0            * check to see if memory shift
                 
                 BEQ CHECK_LSD_MEMORY
                 
                 BRA CHECK_REGISTER_SHIFTS_EA
                 
CHECK_LSD_MEMORY
                 JSR    CHECK_MEMORY_SHIFTS_EA
                 
                 BRA CHECK_PARSE_MEMORY
            

CHECK_ROD              CLR.L D0               *same check as logical shift, since an arithmetic shift could still be possible
                 
                 CLR.L D1
                 
                 MOVE.W (A5), D0
                 
                 LSL.W  #7, D0
                 
                 MOVE.B #15, D1
                 
                 LSR.W  D1, D0
                 
                 CMP.B  #1, D0
                 
                 BEQ CHECK_ROL
                 
                 BRA CHECK_ROR

CHECK_ROL              
                 MOVE.W (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0            * check to see if its memory shift
                 
                 BEQ CHECK_ROD_MEMORY
                 
                 BRA CHECK_REGISTER_SHIFTS_EA

CHECK_ROR                        
                 MOVE.W (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0            * check to see if its memory shift
                 
                 BEQ CHECK_ROD_MEMORY
                 
                 BRA CHECK_REGISTER_SHIFTS_EA

CHECK_ROD_MEMORY       
                 JSR    CHECK_MEMORY_SHIFTS_EA
                 
                 BRA CHECK_PARSE_MEMORY
                 
                 
CHECK_ASD              MOVE.W (A5), D0
                 
                 LSL.W  #7, D0
                 
                 MOVE.B #15, D1
                 
                 LSR.W  D1, D0
                 
                 CMP.B  #1, D0
                 
                 BEQ CHECK_ASL
                 
                 BRA CHECK_ASR
                 
CHECK_ASL
                 
                 MOVE.W (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0            * check to see if its memory shift
                 
                 BEQ CHECK_ASD_MEMORY
                 
                 BRA CHECK_REGISTER_SHIFTS_EA
                                  

CHECK_ASR                               
                 MOVE.W (A5), D0
                 
                 LSL.W #8, D0
                 
                 MOVE.B #14, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B  #%11, D0            * check to see if its memory shift
                 
                 BEQ CHECK_ASD_MEMORY
                 
                 BRA CHECK_REGISTER_SHIFTS_EA

CHECK_ASD_MEMORY
                 JSR    CHECK_MEMORY_SHIFTS_EA
                 
                 BRA CHECK_PARSE_MEMORY
                 
CHECK_REGISTER_SHIFTS_EA               
                 JSR GET_SIZE_PURPLE

                 MOVE.W (A5), D0
                 
                 MOVE.B #10, D1
                 
                 LSL.W D1, D0
                 
                 MOVE.B #15, D1
                 
                 LSR.W D1, D0
                 
                 CMP.B #1, D0
                 
                 BEQ CHECK_REGISTER
                 
                 CMP.B  #0, D0
                 
                 BEQ CHECK_COUNT
                 
                 BRA ERROR_HANDLE

                 
CHECK_COUNT    
               
                 MOVE.W (A5), D0
                 
                 LSL.W #4, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W D1, D0
                                  
                 MOVE.W (A5), D0
                 
                 MOVE.B #13, D1                * to print out the ea that is being shifted
                 
                 LSL.W D1, D0
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D7
                 
                 MOVE.L #%000, D6              * we know it is a data register
                 
                 JSR CHECK_EA
                 
                 BRA CHECK_PARSE_MEMORY
                 

CHECK_REGISTER
                 MOVE.W (A5), D0
                 
                 LSL.W #4, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D7
                 
                 MOVE.L #%000, D6
                 
                 JSR CHECK_EA                  * to print out the data register
                 
                 MOVE.W (A5), D0
                 
                 MOVE.B #13, D1                * to print out the ea that is being shifted
                 
                 LSL.W D1, D0
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D7
                 
                 MOVE.L #%000, D6              * we know it is a data register
                 
                 JSR CHECK_EA
                 
                 BRA CHECK_PARSE_MEMORY
                                 

CHECK_MEMORY_SHIFTS_EA   * gets the mode and register of the memory ea, and prints it out
                 *JSR GET_SIZE_PURPLE
                 
                 *JSR PRINTOUT_SIZE_PURPLE

                 MOVE.W (A5), D0
                 
                 MOVE.B #10, D1
                 
                 LSL.W D1, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W D1, D0
                 
                 MOVE.L D0, D6
                 
                 MOVE.W (A5), D0
                 
                 MOVE.B #13, D1
                 
                 LSL.W D1, D0
                 
                 LSR.W D1, D0
                 
                 MOVE.L D0, D7
                 
                 JSR CHECK_EA
                 
                 RTS
                                 
              
CHECK_MOVEB            
                 
                 MOVE.B     #%00, D5
                 
                 BRA CHECK_MOVE_EA

CHECK_MOVEW            CLR.L D0
                 
                 CLR.L D1
                 
                 MOVE.W (A5),D0
                 
                 LSL.W #7,D0
                 
                 MOVE.B #13,D1
                 
                 LSR.W D1,D0
                 
                 CMP.B #1,D0            *check to see if the mode of the destination is an address register
                 
                 BEQ CHECK_MOVEAW             *if the destination is an address, it is MOVEA
                 
                 MOVE.B     #%01, D5
                    
                 BRA CHECK_MOVE_EA
              

CHECK_MOVEL            CLR.L D0
                 
                 CLR.L D1
                 
                 MOVE.W (A5),D0
                 
                 LSL.W #7,D0
                 
                 MOVE.B #13,D1
                 
                 LSR.W D1,D0
                 
                 CMP.B #1,D0            *check to see if the mode of the destination is equal to 1
                 
                 BEQ CHECK_MOVEAL             *if the mode is 1, then it is an address register, and the opcode is MOVEA
                 
                 MOVE.B     #%10, D5
                 
                 BRA CHECK_MOVE_EA
                 
                 
CHECK_MOVEAW                    
                 MOVE.B     #%01, D5
                 
                 BRA CHECK_MOVE_EA

CHECK_MOVEAL                  
                 MOVE.B     #%10, D5
                 
                 BRA CHECK_MOVE_EA

CHECK_MOVE_EA
                 CLR    D7 
                 
                 CLR    D6               
                 
                 MOVE.W (A5), D0
                 
                 MOVE.B #10, D1
                 
                 LSL.W D1, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D6          * getting the mode of the second ea
                 
                 MOVE.W (A5), D0
                 
                 MOVE.B #13, D1
                 
                 LSL.W D1, D0
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D7          * getting the register of the second ea
                 
                 JSR CHECK_EA
                 
                 MOVE.W (A5), D0
                 
                 LSL.W #4, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D7          * getting the register of the first ea
                 
                 MOVE.W (A5), D0
                 
                 LSL.W #7, D0
                 
                 MOVE.B #13, D1
                 
                 LSR.W D1, D0
                 
                 MOVE.B D0, D6          * getting the mode of the first ea
                 
                 JSR CHECK_EA
                 
                 BRA CHECK_PARSE_MEMORY













*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
