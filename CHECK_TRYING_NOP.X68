CHECK_LEA_OPCODE
    
    MOVE.W  (A5),D0     *D0 is the binary value to decode
    
    MOVE.B  #13,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds Register
                                            
    MOVE.W D0, D7 *D7 holds Register  

    MOVE.W  (A5),D0     *D0 is the binary value to decode

    MOVE.B  #10,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds MODE
                                            
    MOVE.W D0, D6 *D6 holds MODE  
    
    JSR CHECK_EA
                                  
    MOVE.W  (A5),D0     *D0 is the binary value to decode 

    MOVE.L #%001, D6

    MOVE.B  #4,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  
                                            
    MOVE.W D0, D7 
    
    JSR CHECK_EA
    
    JMP     CHECK_PARSE_MEMORY       
          
CHECK_NOP_OPCODE
    
    BRA CHECK_PARSE_MEMORY
CHECk_RTS_OPCODE 
 
    BRA CHECK_PARSE_MEMORY
    
CHECK_JSR_OPCODE 

    MOVE.W (A5), D0

    MOVE.B  #13,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds Register
                                            
    MOVE.W D0, D7 *D7 holds Register  

    MOVE.W (A5), D0

    MOVE.B  #10,D1     

    LSL.W   D1,D0
                 
    MOVE.B  #13,D1

    LSR.W   D1,D0  *D0 now holds MODE
                                            
    MOVE.W D0, D6 *D6 holds MODE  
    
    JSR CHECK_EA
    
    BRA CHECK_PARSE_MEMORY
       
CHECK_CLR_OPCODE 
     
    MOVE.W      (A5), D0
             
    MOVE.B      #6, D1
               
    LSR.W       D1, D0  *shift right 6 
               
    MOVE.B      #14, D1
               
    LSL.W       D1, D0  *shift left 15, only size is left
    
    MOVE.B      #14, D1
               
    LSR.W       D1, D0  *shift right 15, size is left   
    
    CMP.W       #00, D0

    BEQ         CHECK_SIZE_B
    
    CMP.W       #01, D0
               
    BEQ         CHECK_SIZE_W 
    
    CMP.W       #2, D0
               
    BEQ         CHECK_SIZE_L
    
    BRA          ERROR_HANDLE

CHECK_PRINT_SIZE

    CLR.L   D0
                
    CLR.L   D1
                     * set register
                 
    MOVE.W  (A5),D0     *D0 is the binary value to decode
               
    MOVE.B  #13,D1           *8 bits is the number of times to shift to the left to remove opcode & register #

    LSL.W   D1,D0           *Shift the bits 8 times -> D0 now removes the opcode & reg#

    MOVE.B  #13,D1          *14 bits is the number of times to shift to hold the mode number

    LSR.W   D1,D0           *Shift the bits 13 times -> D0 now holds the size number

    MOVE.B  D0, D7          *put D0 to data register into D7 for future printing
                 
                 * set mode
    CLR.L D0                *clear D0
                 
    CLR.L D1                *clear D1
                 
    MOVE.W  (A5),D0     *D0 is the binary value to decode
               
    MOVE.B  #10,D1           *8 bits is the number of times to shift to the left to remove opcode & register #

    LSL.W   D1,D0           *Shift the bits 8 times -> D0 now removes the opcode & reg#

    MOVE.B  #13,D1          *14 bits is the number of times to shift to hold the mode number

    LSR.W   D1,D0           *Shift the bits 13 times -> D0 now holds the size number

    MOVE.L  D0, D6          *put D0 to data register into D7 for future printing
                 
    JSR     CHECK_EA *by using jmp table

    BRA CHECK_PARSE_MEMORY
    
CHECK_SIZE_B 
                  
    JMP CHECK_PRINT_SIZE
    
CHECK_SIZE_W 
                  
    JMP CHECK_PRINT_SIZE
    
CHECK_SIZE_L 
                  
    JMP CHECK_PRINT_SIZE




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
