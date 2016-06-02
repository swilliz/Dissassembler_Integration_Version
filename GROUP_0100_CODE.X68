*-----------------------------------------------------------
* Title      : GROUP_0100_CODE
* Written by : Sam 
* Date       : 5/27/16
* Description: NOP, RTS, JSR,  MOVEM, CLR
*-----------------------------------------------------------
GROUP_0100_CODE          *at this point we know the first 4 bits are 0100 -> NOP, RTS, JSR,  MOVEM, CLR

                 CLR.L D0                *clear D0
                 
                 CLR.L D1                *clear D1
                 
                 MOVE.W  (A5),D0     *D0 is the binary value to decode

                 MOVE.B  #4,D1           *4 bits is the number of times to shift to the left to remove opcode

                 LSL.W   D1,D0           *Shift the bits 4 times -> D0 now removes the opcode
                 
                 MOVE.B  #4,D1           *4 bits is the number of times to shift to hold everything except the opcode

                 LSR.W   D1,D0           *Shift the bits 4 times -> D0 now holds everything except opcode
                 
                                            
                 CMP.W    #$E71, D0      *if D0 holds E71, the opcode is NOP
                 
                 BEQ      NOP_OPCODE       *Branch to NOP_CODE if the opcode is NOP
                 
                 
                 CMP.W    #$E75, D0      *if D0 holds E75, the opcode is RTS
                 
                 BEQ      RTS_OPCODE       *Branch to RTS_CODE if the opcode is RTS
                 
                 
                 CLR.L D0                *clear D0
                 
                 
                 CLR.L D1                *clear D1
                 
                 
                 MOVE.W  (A5),D0     *D0 is the binary value to decode


                 MOVE.B  #4,D1           *4 bits is the number of times to shift to the left to remove opcode


                 LSL.W   D1,D0           *Shift the bits 4 times -> D0 now removes the opcode
                 
                 MOVE.B  #12,D1           *12 bits is the number of times to shift to hold the 4th-8th bits (counting left to right, non-inclusive)

                 LSR.W   D1,D0           *Shift the bits 4 times -> D0 now holds 4th-8th bits (counting left to right, non-inclusive)
                 
                 CMP.W    #$2, D0        *if D0 holds #2, the opcode is CLR
                 
                 BEQ      CLR_OPCODE       *Branch to NOP_CODE if the opcode is CLR
                 
        
                 CMP.W    #$E, D0        *if D0 holds $E = 14, the opcode is JSR
                 
                 BEQ      JSR_OPCODE       *Branch to NOP_CODE if the opcode is CLR
                 
                 
                 BRA      MOVEM_OPCODE     *else it is a MOVEM

    



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
