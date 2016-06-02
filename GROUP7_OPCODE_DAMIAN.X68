*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

BEQ      ADDR_CODE
                 
                 JMP      ADD_CODE
                 
SHIFTS           CLR.L D0

                 CLR.L D1
                 
                 MOVE.W (A5),D0
                 
                 LSL.W #4,D0            *shift out the opcode
                 
                 MOVE.B #13,D1          
                 
                 LSR.W D1,D0            *shift out everything, so only three bits after opcode are there
                 
                 CMP.B #1,D0            
                 
                 BEQ LSD                *if the bits are 1, it is a logical shift
                 
                 CMP.B #3,D0
                 
                 BEQ ROD                *if the bits are 3, it is a rotation
                 
                 BRA ASD                *if it is not equal to 1 or 3, it is arithmetic shift
                 
ADDR_CODE  
     *need to error check 

ADD_CODE 
    *JMP ADD_ADDA
    *need to error check 

LSD              CLR.L D0               *still need to do checks, since an asd shift could still be a possibility
                 
                 CLR.L D1
                 
                 MOVE.W (A5),D0
                 
                 LSL.W #8,D0
                 
                 MOVE.B #14,D1
                 
                 LSR.W D1,D0
                 
                 CMP.B #3,D0            *need to check the two bits after the direction 
                 
                 BNE ASD                *if the two bits are not 3, it is an arithmetic shift
                 
                 MOVE.L (A5), D0
                 
                 LSL.W  #7, D0
                 
                 MOVE.B #15, D1
                 
                 LSR.W  D1, D0
                 
                 CMP.B  #1, D0
                 
                 BEQ LSL
                 
                 BRA LSR
                 

LSL
                 LEA LSL_MESSAGE, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 BRA DONE

LSR
                 LEA LSR_MESSAGE, A1    
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 BRA DONE

ROD              CLR.L D0               *same check as logical shift, since an arithmetic shift could still be possible
                 
                 CLR.L D1
                 
                 MOVE.W (A5),D0
                 
                 LSL.W #8,D0
                 
                 MOVE.B #14,D1
                 
                 LSR.W D1,D0
                 
                 CMP.B #3,D0
                 
                 BNE ASD
                 
                 MOVE.L (A5), D0
                 
                 LSL.W  #7, D0
                 
                 MOVE.B #15, D1
                 
                 LSR.W  D1, D0
                 
                 CMP.B  #1, D0
                 
                 BEQ ROL
                 
                 BRA ROR

ROL
                 LEA ROL_MESSAGE, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 BRA DONE

ROR       
                 LEA ROR_MESSAGE, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 BRA DONE
                 
ASD              MOVE.L (A5), D0
                 
                 LSL.W  #7, D0
                 
                 MOVE.B #15, D1
                 
                 LSR.W  D1, D0
                 
                 CMP.B  #1, D0
                 
                 BEQ ASL
                 
                 BRA ASR
                 
ASL
                 LEA ASL_MESSAGE, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 BRA DONE

ASR                
                 LEA ASR_MESSAGE, A1
                 
                 MOVE.B #14, D0
                 
                 TRAP #15
                 
                 BRA DONE


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
