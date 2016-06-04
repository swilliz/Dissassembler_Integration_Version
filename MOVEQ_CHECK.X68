*-----------------------------------------------------------
* Title      : MOVEQ 
* Written by : Ko Fukushima
* Written by : Samuel Williams
* Date       : 5/28/2016
* Description:
*-----------------------------------------------------------

CHECK_MOVEQ 

                 * ADD message
*                 LEA      MOVEQ_MESSAGE,    A1
*                 MOVE.B   #14,            D0
*                 TRAP #15
                 
                 * print out size L
*                 LEA      SIZE_L_PRINT,    A1
*                 MOVE.B   #14,             D0          
*                 TRAP #15   
                 
                 * print out immediate Data
                 
*                LEA     POUND_SIGN, A1
*            
*                MOVE.B  #14, D0
*            
*                TRAP #15
            
*                LEA     HEX_SIGN, A1
*            
*                TRAP #15
                
                CLR.L       D0              *Zero it

                MOVE.W      (A5),D0     *We'll play with it here
               
                MOVE.B      #8, D1
               
                LSL.W       D1, D0

                MOVE.B      #8,D1       *Shift 12 bits to the right  

                LSR.W       D1,D0           *Move the bits -> D0 holds DATA
                    
                CLR.L D5
               
                MOVE.W D0, D5      
        
*                JSR         HEX_TO_ASCII
                
*                LEA      COMMA,    A1
*                MOVE.B   #14,            D0
*                TRAP #15
                 
                * for the first Dn 
                CLR.L D6
                
                JSR     CHECK_GET_Data_Register
                
                MOVE.B  #%000, D6 * for mode
                 
                JSR     CHECK_EA *by using jmp table
                 
                BRA CHECK_PARSE_MEMORY
        















*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
