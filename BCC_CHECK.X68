*-----------------------------------------------------------
* Title      : Bcc
* Written by : SAM WILLIAMS
* Date       : 5/20/2016
* Description:
*-----------------------------------------------------------
*    ORG    $1000

*example          EQU     %0110001111111111 * %0110001100000000 * %0110001101000110
*eightbitaddr     EQU     $3445
*sixteenbitaddr   EQU     $12345678 

*               MOVE.L      #sixteenbitaddr , (A5)
CHECK_BCC           
               CLR       D0              *Zero it

               MOVE.W      (A5),D0     *We'll play with it here
               
               CLR       D1
               
               MOVE.B      #4, D1
               
               LSL.W       D1, D0

               MOVE.B      #12,D1       *Shift 12 bits to the right  

               LSR.W       D1,D0           *Move the bi
               
               CMP.B       #%0100, D0
               
               BEQ         CHECK_PARSE_MEMORY  
               
               CMP.B       #%1110, D0
               
               BEQ         CHECK_PARSE_MEMORY  
               
               CMP.B       #%1111, D0
               
               BEQ         CHECK_PARSE_MEMORY
            
               BRA ERROR_HANDLE
                                
*CHECK_DISPLACEMENT   
*
*               CLR.L       D0              *Zero it
*
*               MOVE.W      (A5),D0     *We'll play with it here
*               
*               MOVE.B      #8, D1
*               
*               LSL.W       D1, D0
*
*               MOVE.B      #8,D1       *Shift 12 bits to the right  
*
*               LSR.W       D1,D0           *Move the bits
*               
*               *chk the D0 for 8, 16, or 32 but displacement
*                
*               CMP.B  #$00, D0
*
*               BEQ  a_16_BIT 
*
*               CMP.B #$FF, D0   
*
*               BEQ  a_32_BIT
*                                             
*               JMP CHECK_PARSE_MEMORY
                          
*CHECK_a_16_BIT
*        CLR.L  D5
*        
**        MOVE.W (A6)+, D5
*        
*     *   JSR  HEX_TO_ASCII
*        
*        JMP CHECK_PARSE_MEMORY
*CHECK_a_32_BIT
*
*        CLR.L  D5
*        
**        MOVE.L (A6)+, D5
*        
*      *  JSR  HEX_TO_ASCII
*        
*        JMP CHECK_PARSE_MEMORY
*          

















*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
