*-----------------------------------------------------------
* Title      :  Test All
* Written by :  
* Date       :  03/13/2016
* Description:  Tests all required opcodes and EA for W16
*-----------------------------------------------------------
    ORG    $7000
START:                  ; first instruction of program
	
**		*MOVEM (WORD & LONG ONLY)
************************************ Start with MOVEM.L list to (An)
*		MOVEM.L D0-D7,(A0)
*		MOVEM.L A0-A7,(A0)
*		MOVEM.L A0-A3/D0-D7,(A0)
*		MOVEM.L A0-A3/D0-D2,(A0)
*		MOVEM.L A4-A7/D0-D1,(A0)
*		MOVEM.L A0/A3/D2/D5,(A0)
*		MOVEM.L D1/D5/D7,(A0)	
************************************ End with MOVEM.L list to (An)	
************************************ Start with NOP
*		NOP
************************************ End with NOP
*
*	 	MOVE.B $00008000,D0		*All other addresses require 32 bits
*		MOVE.B $FFFF7FFF,D0
************************************ Start with MOVE.B Dn to Dn
*		MOVE.B	D0,D0
*		MOVE.B	D0,D1
*		MOVE.B	D0,D2
*		MOVE.B	D0,D3
*		MOVE.B	D0,D4
*		MOVE.B	D0,D5
*		MOVE.B	D0,D6
*		MOVE.B	D0,D7
*		
*		MOVE.B	D1,D0
*		MOVE.B	D1,D1
*		MOVE.B	D1,D2
*		MOVE.B	D1,D3
*		MOVE.B	D1,D4
*		MOVE.B	D1,D5
*		MOVE.B	D1,D6
*		MOVE.B	D1,D7
*		
*		MOVE.B	D2,D0
*		MOVE.B	D2,D1
*		MOVE.B	D2,D2
*		MOVE.B	D2,D3
*		MOVE.B	D2,D4
*		MOVE.B	D2,D5
*		MOVE.B	D2,D6
*		MOVE.B	D2,D7
*		
*		MOVE.B	D3,D0
*		MOVE.B	D3,D1
*		MOVE.B	D3,D2
*		MOVE.B	D3,D3
*		MOVE.B	D3,D4
*		MOVE.B	D3,D5
*		MOVE.B	D3,D6
*		MOVE.B	D3,D7
*		
*		MOVE.B	D4,D0
*		MOVE.B	D4,D1
*		MOVE.B	D4,D2
*		MOVE.B	D4,D3
*		MOVE.B	D4,D4
*		MOVE.B	D4,D5
*		MOVE.B	D4,D6
*		MOVE.B	D4,D7		
*
*		MOVE.B	D5,D0
*		MOVE.B	D5,D1
*		MOVE.B	D5,D2
*		MOVE.B	D5,D3
*		MOVE.B	D5,D4
*		MOVE.B	D5,D5
*		MOVE.B	D5,D6
*		MOVE.B	D5,D7		
*
*		MOVE.B	D6,D0
*		MOVE.B	D6,D1
*		MOVE.B	D6,D2
*		MOVE.B	D6,D3
*		MOVE.B	D6,D4
*		MOVE.B	D6,D5
*		MOVE.B	D6,D6
*		MOVE.B	D6,D7
*		
*		MOVE.B	D7,D0
*		MOVE.B	D7,D1
*		MOVE.B	D7,D2
*		MOVE.B	D7,D3
*		MOVE.B	D7,D4
*		MOVE.B	D7,D5
*		MOVE.B	D7,D6
*		MOVE.B	D7,D7
************************************ End with MOVE.B Dn to Dn
*		
************************************ Start with MOVE.B An to Dn
*		*MOVE.B An,Dn is not possible
************************************ End with MOVE.B Dn to Dn
*		
************************************ Start with MOVE.B (An) to Dn
*		MOVE.B	(A0),D0
*		MOVE.B	(A0),D1
*		MOVE.B	(A0),D2
*		MOVE.B	(A0),D3
*		MOVE.B	(A0),D4
*		MOVE.B	(A0),D5
*		MOVE.B	(A0),D6
*		MOVE.B	(A0),D7
*		
*		MOVE.B	(A1),D0
*		MOVE.B	(A1),D1
*		MOVE.B	(A1),D2
*		MOVE.B	(A1),D3
*		MOVE.B	(A1),D4
*		MOVE.B	(A1),D5
*		MOVE.B	(A1),D6
*		MOVE.B	(A1),D7
*		
*		MOVE.B	(A2),D0
*		MOVE.B	(A2),D1
*		MOVE.B	(A2),D2
*		MOVE.B	(A2),D3
*		MOVE.B	(A2),D4
*		MOVE.B	(A2),D5
*		MOVE.B	(A2),D6
*		MOVE.B	(A2),D7
*		
*		MOVE.B	(A3),D0
*		MOVE.B	(A3),D1
*		MOVE.B	(A3),D2
*		MOVE.B	(A3),D3
*		MOVE.B	(A3),D4
*		MOVE.B	(A3),D5
*		MOVE.B	(A3),D6
*		MOVE.B	(A3),D7
*		
*		MOVE.B	(A4),D0
*		MOVE.B	(A4),D1
*		MOVE.B	(A4),D2
*		MOVE.B	(A4),D3
*		MOVE.B	(A4),D4
*		MOVE.B	(A4),D5
*		MOVE.B	(A4),D6
*		MOVE.B	(A4),D7		
*
*		MOVE.B	(A5),D0
*		MOVE.B	(A5),D1
*		MOVE.B	(A5),D2
*		MOVE.B	(A5),D3
*		MOVE.B	(A5),D4
*		MOVE.B	(A5),D5
*		MOVE.B	(A5),D6
*		MOVE.B	(A5),D7		
*
*		MOVE.B	(A6),D0
*		MOVE.B	(A6),D1
*		MOVE.B	(A6),D2
*		MOVE.B	(A6),D3
*		MOVE.B	(A6),D4
*		MOVE.B	(A6),D5
*		MOVE.B	(A6),D6
*		MOVE.B	(A6),D7
*		
*		MOVE.B	(A7),D0
*		MOVE.B	(A7),D1
*		MOVE.B	(A7),D2
*		MOVE.B	(A7),D3
*		MOVE.B	(A7),D4
*		MOVE.B	(A7),D5
*		MOVE.B	(A7),D6
*		MOVE.B	(A7),D7
************************************ End with MOVE.B (An) to Dn
*		
************************************ Start with MOVE.B (An)+ to Dn
*		MOVE.B	(A0)+,D0
*		MOVE.B	(A0)+,D1
*		MOVE.B	(A0)+,D2
*		MOVE.B	(A0)+,D3
*		MOVE.B	(A0)+,D4
*		MOVE.B	(A0)+,D5
*		MOVE.B	(A0)+,D6
*		MOVE.B	(A0)+,D7
*
*		MOVE.B	(A1)+,D0
*		MOVE.B	(A1)+,D1
*		MOVE.B	(A1)+,D2
*		MOVE.B	(A1)+,D3
*		MOVE.B	(A1)+,D4
*		MOVE.B	(A1)+,D5
*		MOVE.B	(A1)+,D6
*		MOVE.B	(A1)+,D7
*
*		MOVE.B	(A2)+,D0
*		MOVE.B	(A2)+,D1
*		MOVE.B	(A2)+,D2
*		MOVE.B	(A2)+,D3
*		MOVE.B	(A2)+,D4
*		MOVE.B	(A2)+,D5
*		MOVE.B	(A2)+,D6
*		MOVE.B	(A2)+,D7
*
*		MOVE.B	(A3)+,D0
*		MOVE.B	(A3)+,D1
*		MOVE.B	(A3)+,D2
*		MOVE.B	(A3)+,D3
*		MOVE.B	(A3)+,D4
*		MOVE.B	(A3)+,D5
*		MOVE.B	(A3)+,D6
*		MOVE.B	(A3)+,D7
*
*		MOVE.B	(A4)+,D0
*		MOVE.B	(A4)+,D1
*		MOVE.B	(A4)+,D2
*		MOVE.B	(A4)+,D3
*		MOVE.B	(A4)+,D4
*		MOVE.B	(A4)+,D5
*		MOVE.B	(A4)+,D6
*		MOVE.B	(A4)+,D7
*
*		MOVE.B	(A5)+,D0
*		MOVE.B	(A5)+,D1
*		MOVE.B	(A5)+,D2
*		MOVE.B	(A5)+,D3
*		MOVE.B	(A5)+,D4
*		MOVE.B	(A5)+,D5
*		MOVE.B	(A5)+,D6
*		MOVE.B	(A5)+,D7
*
*		MOVE.B	(A6)+,D0
*		MOVE.B	(A6)+,D1
*		MOVE.B	(A6)+,D2
*		MOVE.B	(A6)+,D3
*		MOVE.B	(A6)+,D4
*		MOVE.B	(A6)+,D5
*		MOVE.B	(A6)+,D6
*		MOVE.B	(A6)+,D7
*
*		MOVE.B	(A7)+,D0
*		MOVE.B	(A7)+,D1
*		MOVE.B	(A7)+,D2
*		MOVE.B	(A7)+,D3
*		MOVE.B	(A7)+,D4
*		MOVE.B	(A7)+,D5
*		MOVE.B	(A7)+,D6
*		MOVE.B	(A7)+,D7
************************************ End with MOVE.B (An)+ to Dn
*
************************************ Start with MOVE.B -(An) to Dn
*		MOVE.B	-(A0),D0
*		MOVE.B	-(A0),D1
*		MOVE.B	-(A0),D2
*		MOVE.B	-(A0),D3
*		MOVE.B	-(A0),D4
*		MOVE.B	-(A0),D5
*		MOVE.B	-(A0),D6
*		MOVE.B	-(A0),D7
*
*		MOVE.B	-(A1),D0
*		MOVE.B	-(A1),D1
*		MOVE.B	-(A1),D2
*		MOVE.B	-(A1),D3
*		MOVE.B	-(A1),D4
*		MOVE.B	-(A1),D5
*		MOVE.B	-(A1),D6
*		MOVE.B	-(A1),D7
*
*		MOVE.B	-(A2),D0
*		MOVE.B	-(A2),D1
*		MOVE.B	-(A2),D2
*		MOVE.B	-(A2),D3
*		MOVE.B	-(A2),D4
*		MOVE.B	-(A2),D5
*		MOVE.B	-(A2),D6
*		MOVE.B	-(A2),D7
*
*		MOVE.B	-(A3),D0
*		MOVE.B	-(A3),D1
*		MOVE.B	-(A3),D2
*		MOVE.B	-(A3),D3
*		MOVE.B	-(A3),D4
*		MOVE.B	-(A3),D5
*		MOVE.B	-(A3),D6
*		MOVE.B	-(A3),D7
*
*		MOVE.B	-(A4),D0
*		MOVE.B	-(A4),D1
*		MOVE.B	-(A4),D2
*		MOVE.B	-(A4),D3
*		MOVE.B	-(A4),D4
*		MOVE.B	-(A4),D5
*		MOVE.B	-(A4),D6
*		MOVE.B	-(A4),D7
*
*		MOVE.B	-(A5),D0
*		MOVE.B	-(A5),D1
*		MOVE.B	-(A5),D2
*		MOVE.B	-(A5),D3
*		MOVE.B	-(A5),D4
*		MOVE.B	-(A5),D5
*		MOVE.B	-(A5),D6
*		MOVE.B	-(A5),D7
*
*		MOVE.B	-(A6),D0
*		MOVE.B	-(A6),D1
*		MOVE.B	-(A6),D2
*		MOVE.B	-(A6),D3
*		MOVE.B	-(A6),D4
*		MOVE.B	-(A6),D5
*		MOVE.B	-(A6),D6
*		MOVE.B	-(A6),D7
*
*		MOVE.B	-(A7),D0
*		MOVE.B	-(A7),D1
*		MOVE.B	-(A7),D2
*		MOVE.B	-(A7),D3
*		MOVE.B	-(A7),D4
*		MOVE.B	-(A7),D5
*		MOVE.B	-(A7),D6
*		MOVE.B	-(A7),D7
************************************ End with MOVE.B -(An) to Dn
*		
************************************ Start with MOVE.B (xxxx).W to Dn
*		MOVE.B $00000000,D0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007FF0,D0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,D0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,D0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,D0
*		MOVE.B $0,D0
*		MOVE.B $1234,D0
*		MOVE.B $56,D0
*		MOVE.B $210,D0
*		MOVE.B $7770,D0
*		MOVE.B $A,D0
*
*		MOVE.B $00000000,D4		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007FF0,D4		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,D4		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFFF0,D4		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,D4
*		MOVE.B $0,D4
*		MOVE.B $22,D4
*		MOVE.B $426,D4
*		MOVE.B $3876,D4
*		MOVE.B $1222,D4
*		MOVE.B $12,D4
*
*		MOVE.B $00000000,D7		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007FF0,D7		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,D7		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFFF0,D7		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,D7
*		MOVE.B $0,D7
*		MOVE.B $10,D7
*		MOVE.B $106,D7
*		MOVE.B $5550,D7
*		MOVE.B $246C,D7
*		MOVE.B $0FFE,D7
*		MOVE.B $E8,D7
************************************ End with MOVE.B (xxxx).W to Dn	
*
************************************ Start with MOVE.B (xxxx).L to Dn
*		MOVE.B $00008000,D0		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7FFE,D0		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,D0
*		MOVE.B $00009876,D0		
*		MOVE.B $FFEE0202,D0		
*		MOVE.B $12345678,D0
*		MOVE.B $AAAAAAAA,D0
*		MOVE.B $B2C3A1EE,D0
*		MOVE.B $7777777E,D0
*		MOVE.B $CCCCCCCC,D0
*		MOVE.B $C7C77AAE,D0
*		MOVE.B $10101010,D0
*
*		MOVE.B $00008000,D3		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7FFE,D3		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,D3
*		MOVE.B $00009876,D3		
*		MOVE.B $FFEE0202,D3		
*		MOVE.B $12345678,D3
*		MOVE.B $AAAAAAAA,D3
*		MOVE.B $B2C3A1E8,D3
*		MOVE.B $77777770,D3
*		MOVE.B $CCCCCCCC,D3
*		MOVE.B $C7C77AA0,D3
*		MOVE.B $10101010,D3
*
*		MOVE.B $00008000,D5		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7FF0,D5		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,D5
*		MOVE.B $00009876,D5		
*		MOVE.B $FFEE0202,D5		
*		MOVE.B $12345678,D5
*		MOVE.B $AAAAAAAA,D5
*		MOVE.B $B2C3A1E0,D5
*		MOVE.B $77777770,D5
*		MOVE.B $CCCCCCCC,D5
*		MOVE.B $C7C77AA2,D5
*		MOVE.B $10101010,D5
*
*		MOVE.B $00008000,D7		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7FF2,D7		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,D7
*		MOVE.B $00009876,D7		
*		MOVE.B $FFEE0202,D7		
*		MOVE.B $12345678,D7
*		MOVE.B $AAAAAAAA,D7
*		MOVE.B $B2C3A1E2,D7
*		MOVE.B $77777772,D7
*		MOVE.B $CCCCCCCC,D7
*		MOVE.B $C7C77AA2,D7
*		MOVE.B $10101010,D7
************************************ End with MOVE.B (xxxx).L to Dn	
*
************************************ Start with MOVE.B <data> to Dn
*		MOVE.B #$0080,D0	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn. 
*		MOVE.B #$80,D0
*		MOVE.B #$00FF,D0
*		MOVE.B #$11,D0
*		MOVE.B #$12,D0
*		MOVE.B #$AA,D0
*		MOVE.B #$B3,D0
*		MOVE.B #$C1,D0
*		MOVE.B #$CC,D0
*		MOVE.B #$98,D0
*		MOVE.B #$FA,D0
*		MOVE.B #$AF,D0
*		MOVE.B #$A2,D0
*		MOVE.B #$D8,D0
*		MOVE.B #$55,D0
*		MOVE.B #$3C,D0
*		MOVE.B #$EF,D0
*		MOVE.B #$0092,D0
*		MOVE.B #$00BB,D0
*
*		MOVE.B #$0080,D2	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn. 
*		MOVE.B #$80,D2
*		MOVE.B #$00FF,D2
*		MOVE.B #$11,D2
*		MOVE.B #$12,D2
*		MOVE.B #$AA,D2
*		MOVE.B #$B3,D2
*		MOVE.B #$C1,D2
*		MOVE.B #$CC,D2
*		MOVE.B #$98,D2
*		MOVE.B #$FA,D2
*		MOVE.B #$AF,D2
*		MOVE.B #$A2,D2
*		MOVE.B #$D8,D2
*		MOVE.B #$55,D2
*		MOVE.B #$3C,D2
*		MOVE.B #$EF,D2
*		MOVE.B #$0092,D2
*		MOVE.B #$00BB,D2
*		
*		MOVE.B #$0080,D4	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn. 
*		MOVE.B #$80,D4
*		MOVE.B #$00FF,D4
*		MOVE.B #$11,D4
*		MOVE.B #$12,D4
*		MOVE.B #$AA,D4
*		MOVE.B #$B3,D4
*		MOVE.B #$C1,D4
*		MOVE.B #$CC,D4
*		MOVE.B #$98,D4
*		MOVE.B #$FA,D4
*		MOVE.B #$AF,D4
*		MOVE.B #$A2,D4
*		MOVE.B #$D8,D4
*		MOVE.B #$55,D4
*		MOVE.B #$3C,D4
*		MOVE.B #$EF,D4
*		MOVE.B #$0092,D4
*		MOVE.B #$00BB,D4
*
*		MOVE.B #$0080,D6	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn. 
*		MOVE.B #$80,D6
*		MOVE.B #$00FF,D6
*		MOVE.B #$11,D6
*		MOVE.B #$12,D6
*		MOVE.B #$AA,D6
*		MOVE.B #$B3,D6
*		MOVE.B #$C1,D6
*		MOVE.B #$CC,D6
*		MOVE.B #$98,D6
*		MOVE.B #$FA,D6
*		MOVE.B #$AF,D6
*		MOVE.B #$A2,D6
*		MOVE.B #$D8,D6
*		MOVE.B #$55,D6
*		MOVE.B #$3C,D6
*		MOVE.B #$EF,D6
*		MOVE.B #$0092,D6
*		MOVE.B #$00BB,D6
*
*		MOVE.B #$0080,D7	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn. 
*		MOVE.B #$80,D7
*		MOVE.B #$00FF,D7
*		MOVE.B #$11,D7
*		MOVE.B #$12,D7
*		MOVE.B #$AA,D7
*		MOVE.B #$B3,D7
*		MOVE.B #$C1,D7
*		MOVE.B #$CC,D7
*		MOVE.B #$98,D7
*		MOVE.B #$FA,D7
*		MOVE.B #$AF,D7
*		MOVE.B #$A2,D7
*		MOVE.B #$D8,D7
*		MOVE.B #$55,D7
*		MOVE.B #$3C,D7
*		MOVE.B #$EF,D7
*		MOVE.B #$0092,D7
*		MOVE.B #$00BB,D7		
************************************ End with MOVE.B #<data> to Dn			
*
*		*** Destination (An) ***
************************************ Start with MOVE.B Dn to (An)
*		MOVE.B	D0,(A0)
*		MOVE.B	D0,(A1)
*		MOVE.B	D0,(A2)
*		MOVE.B	D0,(A3)
*		MOVE.B	D0,(A4)
*		MOVE.B	D0,(A5)
*		MOVE.B	D0,(A6)
*		MOVE.B	D0,(A7)
*		
*		MOVE.B	D1,(A0)
*		MOVE.B	D1,(A1)
*		MOVE.B	D1,(A2)
*		MOVE.B	D1,(A3)
*		MOVE.B	D1,(A4)
*		MOVE.B	D1,(A5)
*		MOVE.B	D1,(A6)
*		MOVE.B	D1,(A7)
*		
*		MOVE.B	D2,(A0)
*		MOVE.B	D2,(A1)
*		MOVE.B	D2,(A2)
*		MOVE.B	D2,(A3)
*		MOVE.B	D2,(A4)
*		MOVE.B	D2,(A5)
*		MOVE.B	D2,(A6)
*		MOVE.B	D2,(A7)
*		
*		MOVE.B	D3,(A0)
*		MOVE.B	D3,(A1)
*		MOVE.B	D3,(A2)
*		MOVE.B	D3,(A3)
*		MOVE.B	D3,(A4)
*		MOVE.B	D3,(A5)
*		MOVE.B	D3,(A6)
*		MOVE.B	D3,(A7)
*		
*		MOVE.B	D4,(A0)
*		MOVE.B	D4,(A1)
*		MOVE.B	D4,(A2)
*		MOVE.B	D4,(A3)
*		MOVE.B	D4,(A4)
*		MOVE.B	D4,(A5)
*		MOVE.B	D4,(A6)
*		MOVE.B	D4,(A7)	
*
*		MOVE.B	D5,(A0)
*		MOVE.B	D5,(A1)
*		MOVE.B	D5,(A2)
*		MOVE.B	D5,(A3)
*		MOVE.B	D5,(A4)
*		MOVE.B	D5,(A5)
*		MOVE.B	D5,(A6)
*		MOVE.B	D5,(A7)	
*
*		MOVE.B	D6,(A0)
*		MOVE.B	D6,(A1)
*		MOVE.B	D6,(A2)
*		MOVE.B	D6,(A3)
*		MOVE.B	D6,(A4)
*		MOVE.B	D6,(A5)
*		MOVE.B	D6,(A6)
*		MOVE.B	D6,(A7)
*		
*		MOVE.B	D7,(A0)
*		MOVE.B	D7,(A1)
*		MOVE.B	D7,(A2)
*		MOVE.B	D7,(A3)
*		MOVE.B	D7,(A4)
*		MOVE.B	D7,(A5)
*		MOVE.B	D7,(A6)
*		MOVE.B	D7,(A7)
************************************ End with MOVE.B Dn to (An)
*		
************************************ Start with MOVE.B An to (An)
*		*MOVE.B An,(An) is not possible. MOVE.W AND MOVE.L ONLY
************************************ End with MOVE.B Dn to (An)
*		
************************************ Start with MOVE.B (An) to (An)
*		MOVE.B	(A0),(A0)
*		MOVE.B	(A0),(A1)
*		MOVE.B	(A0),(A2)
*		MOVE.B	(A0),(A3)
*		MOVE.B	(A0),(A4)
*		MOVE.B	(A0),(A5)
*		MOVE.B	(A0),(A6)
*		MOVE.B	(A0),(A7)
*		
*		MOVE.B	(A1),(A0)
*		MOVE.B	(A1),(A1)
*		MOVE.B	(A1),(A2)
*		MOVE.B	(A1),(A3)
*		MOVE.B	(A1),(A4)
*		MOVE.B	(A1),(A5)
*		MOVE.B	(A1),(A6)
*		MOVE.B	(A1),(A7)
*		
*		MOVE.B	(A2),(A0)
*		MOVE.B	(A2),(A1)
*		MOVE.B	(A2),(A2)
*		MOVE.B	(A2),(A3)
*		MOVE.B	(A2),(A4)
*		MOVE.B	(A2),(A5)
*		MOVE.B	(A2),(A6)
*		MOVE.B	(A2),(A7)
*		
*		MOVE.B	(A3),(A0)
*		MOVE.B	(A3),(A1)
*		MOVE.B	(A3),(A2)
*		MOVE.B	(A3),(A3)
*		MOVE.B	(A3),(A4)
*		MOVE.B	(A3),(A5)
*		MOVE.B	(A3),(A6)
*		MOVE.B	(A3),(A7)
*		
*		MOVE.B	(A4),(A0)
*		MOVE.B	(A4),(A1)
*		MOVE.B	(A4),(A2)
*		MOVE.B	(A4),(A3)
*		MOVE.B	(A4),(A4)
*		MOVE.B	(A4),(A5)
*		MOVE.B	(A4),(A6)
*		MOVE.B	(A4),(A7)	
*
*		MOVE.B	(A5),(A0)
*		MOVE.B	(A5),(A1)
*		MOVE.B	(A5),(A2)
*		MOVE.B	(A5),(A3)
*		MOVE.B	(A5),(A4)
*		MOVE.B	(A5),(A5)
*		MOVE.B	(A5),(A6)
*		MOVE.B	(A5),(A7)		
*
*		MOVE.B	(A6),(A0)
*		MOVE.B	(A6),(A1)
*		MOVE.B	(A6),(A2)
*		MOVE.B	(A6),(A3)
*		MOVE.B	(A6),(A4)
*		MOVE.B	(A6),(A5)
*		MOVE.B	(A6),(A6)
*		MOVE.B	(A6),(A7)
*		
*		MOVE.B	(A7),(A0)
*		MOVE.B	(A7),(A1)
*		MOVE.B	(A7),(A2)
*		MOVE.B	(A7),(A3)
*		MOVE.B	(A7),(A4)
*		MOVE.B	(A7),(A5)
*		MOVE.B	(A7),(A6)
*		MOVE.B	(A7),(A7)
************************************ End with MOVE.B (An) to (An)
*		
************************************ Start with MOVE.B (An)+ to (An)
*		MOVE.B	(A0)+,(A0)
*		MOVE.B	(A0)+,(A1)
*		MOVE.B	(A0)+,(A2)
*		MOVE.B	(A0)+,(A3)
*		MOVE.B	(A0)+,(A4)
*		MOVE.B	(A0)+,(A5)
*		MOVE.B	(A0)+,(A6)
*		MOVE.B	(A0)+,(A7)
*
*		MOVE.B	(A1)+,(A0)
*		MOVE.B	(A1)+,(A1)
*		MOVE.B	(A1)+,(A2)
*		MOVE.B	(A1)+,(A3)
*		MOVE.B	(A1)+,(A4)
*		MOVE.B	(A1)+,(A5)
*		MOVE.B	(A1)+,(A6)
*		MOVE.B	(A1)+,(A7)
*
*		MOVE.B	(A2)+,(A0)
*		MOVE.B	(A2)+,(A1)
*		MOVE.B	(A2)+,(A2)
*		MOVE.B	(A2)+,(A3)
*		MOVE.B	(A2)+,(A4)
*		MOVE.B	(A2)+,(A5)
*		MOVE.B	(A2)+,(A6)
*		MOVE.B	(A2)+,(A7)
*
*		MOVE.B	(A3)+,(A0)
*		MOVE.B	(A3)+,(A1)
*		MOVE.B	(A3)+,(A2)
*		MOVE.B	(A3)+,(A3)
*		MOVE.B	(A3)+,(A4)
*		MOVE.B	(A3)+,(A5)
*		MOVE.B	(A3)+,(A6)
*		MOVE.B	(A3)+,(A7)
*
*		MOVE.B	(A4)+,(A0)
*		MOVE.B	(A4)+,(A1)
*		MOVE.B	(A4)+,(A2)
*		MOVE.B	(A4)+,(A3)
*		MOVE.B	(A4)+,(A4)
*		MOVE.B	(A4)+,(A5)
*		MOVE.B	(A4)+,(A6)
*		MOVE.B	(A4)+,(A7)
*
*		MOVE.B	(A5)+,(A0)
*		MOVE.B	(A5)+,(A1)
*		MOVE.B	(A5)+,(A2)
*		MOVE.B	(A5)+,(A3)
*		MOVE.B	(A5)+,(A4)
*		MOVE.B	(A5)+,(A5)
*		MOVE.B	(A5)+,(A6)
*		MOVE.B	(A5)+,(A7)
*
*		MOVE.B	(A6)+,(A0)
*		MOVE.B	(A6)+,(A1)
*		MOVE.B	(A6)+,(A2)
*		MOVE.B	(A6)+,(A3)
*		MOVE.B	(A6)+,(A4)
*		MOVE.B	(A6)+,(A5)
*		MOVE.B	(A6)+,(A6)
*		MOVE.B	(A6)+,(A7)
*
*		MOVE.B	(A7)+,(A0)
*		MOVE.B	(A7)+,(A1)
*		MOVE.B	(A7)+,(A2)
*		MOVE.B	(A7)+,(A3)
*		MOVE.B	(A7)+,(A4)
*		MOVE.B	(A7)+,(A5)
*		MOVE.B	(A7)+,(A6)
*		MOVE.B	(A7)+,(A7)
************************************ End with MOVE.B (An)+ to (An)
*
************************************ Start with MOVE.B -(An) to (An)
*		MOVE.B	-(A0),(A0)
*		MOVE.B	-(A0),(A1)
*		MOVE.B	-(A0),(A2)
*		MOVE.B	-(A0),(A3)
*		MOVE.B	-(A0),(A4)
*		MOVE.B	-(A0),(A5)
*		MOVE.B	-(A0),(A6)
*		MOVE.B	-(A0),(A7)
*
*		MOVE.B	-(A1),(A0)
*		MOVE.B	-(A1),(A1)
*		MOVE.B	-(A1),(A2)
*		MOVE.B	-(A1),(A3)
*		MOVE.B	-(A1),(A4)
*		MOVE.B	-(A1),(A5)
*		MOVE.B	-(A1),(A6)
*		MOVE.B	-(A1),(A7)
*
*		MOVE.B	-(A2),(A0)
*		MOVE.B	-(A2),(A1)
*		MOVE.B	-(A2),(A2)
*		MOVE.B	-(A2),(A3)
*		MOVE.B	-(A2),(A4)
*		MOVE.B	-(A2),(A5)
*		MOVE.B	-(A2),(A6)
*		MOVE.B	-(A2),(A7)
*
*		MOVE.B	-(A3),(A0)
*		MOVE.B	-(A3),(A1)
*		MOVE.B	-(A3),(A2)
*		MOVE.B	-(A3),(A3)
*		MOVE.B	-(A3),(A4)
*		MOVE.B	-(A3),(A5)
*		MOVE.B	-(A3),(A6)
*		MOVE.B	-(A3),(A7)
*
*		MOVE.B	-(A4),(A0)
*		MOVE.B	-(A4),(A1)
*		MOVE.B	-(A4),(A2)
*		MOVE.B	-(A4),(A3)
*		MOVE.B	-(A4),(A4)
*		MOVE.B	-(A4),(A5)
*		MOVE.B	-(A4),(A6)
*		MOVE.B	-(A4),(A7)
*
*		MOVE.B	-(A5),(A0)
*		MOVE.B	-(A5),(A1)
*		MOVE.B	-(A5),(A2)
*		MOVE.B	-(A5),(A3)
*		MOVE.B	-(A5),(A4)
*		MOVE.B	-(A5),(A5)
*		MOVE.B	-(A5),(A6)
*		MOVE.B	-(A5),(A7)
*
*		MOVE.B	-(A6),(A0)
*		MOVE.B	-(A6),(A1)
*		MOVE.B	-(A6),(A2)
*		MOVE.B	-(A6),(A3)
*		MOVE.B	-(A6),(A4)
*		MOVE.B	-(A6),(A5)
*		MOVE.B	-(A6),(A6)
*		MOVE.B	-(A6),(A7)
*
*		MOVE.B	-(A7),(A0)
*		MOVE.B	-(A7),(A1)
*		MOVE.B	-(A7),(A2)
*		MOVE.B	-(A7),(A3)
*		MOVE.B	-(A7),(A4)
*		MOVE.B	-(A7),(A5)
*		MOVE.B	-(A7),(A6)
*		MOVE.B	-(A7),(A7)
************************************ End with MOVE.B -(An) to (An)
*		
************************************ Start with MOVE.B (xxxx).W to (An)
*		MOVE.B $00000000,(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007F00,(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,(A0)
*		MOVE.B $0,(A0)
*		MOVE.B $1234,(A0)
*		MOVE.B $56,(A0)
*		MOVE.B $212,(A0)
*		MOVE.B $7772,(A0)
*		MOVE.B $A,(A0)
*
*		MOVE.B $00000000,(A1)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007F00,(A1)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,(A1)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,(A1)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,(A1)
*		MOVE.B $0,(A1)
*		MOVE.B $22,(A1)
*		MOVE.B $420,(A1)
*		MOVE.B $3876,(A1)
*		MOVE.B $1222,(A1)
*		MOVE.B $12,(A1)
*		
*		MOVE.B $00000000,(A2)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007F00,(A2)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,(A2)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,(A2)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,(A2)
*		
*		MOVE.B $0,(A3)
*		MOVE.B $22,(A3)
*		MOVE.B $420,(A3)
*		MOVE.B $3876,(A3)
*		MOVE.B $1222,(A3)
*		MOVE.B $12,(A3)		
*
*		MOVE.B $00000000,(A4)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007F00,(A4)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,(A4)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,(A4)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,(A4)
*		MOVE.B $0,(A4)
*		MOVE.B $12,(A4)
*		MOVE.B $106,(A4)
*		MOVE.B $5550,(A4)
*		MOVE.B $246C,(A4)
*		MOVE.B $0FFA,(A4)
*		MOVE.B $E8,(A4)
*
*		MOVE.B $00000000,(A5)		
*		MOVE.B $00007F00,(A5)		
*		MOVE.B $FFFF8000,(A5)		
*		MOVE.B $FFFFFF00,(A5)		
*		MOVE.B $00,(A5)
*		
*		MOVE.B $0,(A6)
*		MOVE.B $22,(A6)
*		MOVE.B $420,(A6)
*		MOVE.B $3876,(A6)
*		MOVE.B $1222,(A6)
*		MOVE.B $12,(A6)
*		
*		MOVE.B $00000000,(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007F00,(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,(A7)
*		MOVE.B $0,(A7)
*		MOVE.B $12,(A7)
*		MOVE.B $106,(A7)
*		MOVE.B $5550,(A7)
*		MOVE.B $246A,(A7)
*		MOVE.B $0FFA,(A7)
*		MOVE.B $E8,(A7)		
************************************ End with MOVE.B (xxxx).W to (An)	
*
************************************ Start with MOVE.B (xxxx).L to (An)
*		MOVE.B $00008000,(A0)		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7F00,(A0)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,(A0)
*		MOVE.B $00009876,(A0)		
*		MOVE.B $FFEE0202,(A0)		
*		MOVE.B $12345678,(A0)
*		MOVE.B $AAAAAAAA,(A0)
*		MOVE.B $B2C3A1E0,(A0)
*		MOVE.B $77777770,(A0)
*		MOVE.B $CCCCCCC0,(A0)
*		MOVE.B $C7C77AA0,(A0)
*		MOVE.B $10101010,(A0)
*
*		MOVE.B $00008000,(A1)		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7F00,(A1)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,(A1)
*		MOVE.B $00009876,(A1)		
*		MOVE.B $FFEE0202,(A1)		
*		MOVE.B $12345678,(A1)
*		
*		MOVE.B $AAAAAAAA,(A2)
*		MOVE.B $B2C3A1E0,(A2)
*		MOVE.B $77777770,(A2)
*		MOVE.B $CCCCCCC0,(A2)
*		MOVE.B $C7C77AA0,(A2)
*		MOVE.B $10101010,(A2)
*
*		MOVE.B $00008000,(A3)		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7F00,(A3)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,(A3)
*		MOVE.B $00009876,(A3)		
*		MOVE.B $FFEE0202,(A3)		
*		MOVE.B $12345678,(A3)
*		
*		MOVE.B $AAAAAAAA,(A4)
*		MOVE.B $B2C3A1E0,(A4)
*		MOVE.B $77777770,(A4)
*		MOVE.B $CCCCCCC0,(A4)
*		MOVE.B $C7C77AA0,(A4)
*		MOVE.B $10101010,(A4)
*		
*		MOVE.B $00008000,(A5)		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7F00,(A5)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,(A5)
*		MOVE.B $00009876,(A5)		
*		MOVE.B $FFEE0202,(A5)		
*		MOVE.B $12345678,(A5)
*		MOVE.B $AAAAAAAA,(A5)
*		
*		MOVE.B $B2C3A1E0,(A6)
*		MOVE.B $77777770,(A6)
*		MOVE.B $CCCCCCC0,(A6)
*		MOVE.B $C7C77AA0,(A6)
*		MOVE.B $10101010,(A6)		
*
*		MOVE.B $00008000,(A7)		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7F00,(A7)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,(A7)
*		MOVE.B $00009876,(A7)		
*		MOVE.B $FFEE0202,(A7)		
*		MOVE.B $12345678,(A7)
*		MOVE.B $AAAAAAAA,(A7)
*		MOVE.B $B2C3A1E0,(A7)
*		MOVE.B $77777770,(A7)
*		MOVE.B $CCCCCCC0,(A7)
*		MOVE.B $C7C77AA0,(A7)
*		MOVE.B $10100000,(A7)
************************************ End with MOVE.B (xxxx).L to (An)	
*
************************************ Start with MOVE.B <data> to (An)
*		MOVE.B #$0080,(A0)	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An). 
*		MOVE.B #$80,(A0)
*		MOVE.B #$00FF,(A0)
*		MOVE.B #$11,(A0)
*		MOVE.B #$12,(A0)
*		MOVE.B #$AA,(A0)
*		MOVE.B #$B3,(A0)
*		MOVE.B #$C1,(A0)
*		MOVE.B #$CC,(A0)
*		MOVE.B #$98,(A0)
*		MOVE.B #$FA,(A0)
*		MOVE.B #$AF,(A0)
*		MOVE.B #$A2,(A0)
*		MOVE.B #$D8,(A0)
*		MOVE.B #$55,(A0)
*		MOVE.B #$3C,(A0)
*		MOVE.B #$EF,(A0)
*		MOVE.B #$0092,(A0)
*		MOVE.B #$00BB,(A0)
*
*		MOVE.B #$0080,(A1)	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An). 
*		MOVE.B #$80,(A1)
*		MOVE.B #$00FF,(A1)
*		MOVE.B #$11,(A1)
*		MOVE.B #$12,(A1)
*		MOVE.B #$AA,(A1)
*		MOVE.B #$B3,(A1)
*		MOVE.B #$C1,(A1)
*		MOVE.B #$CC,(A1)
*		MOVE.B #$98,(A1)
*		
*		MOVE.B #$FA,(A2)
*		MOVE.B #$AF,(A2)
*		MOVE.B #$A2,(A2)
*		MOVE.B #$D8,(A2)
*		MOVE.B #$55,(A2)
*		MOVE.B #$3C,(A2)
*		MOVE.B #$EF,(A2)
*		MOVE.B #$0092,(A2)
*		MOVE.B #$00BB,(A2)
*		
*		MOVE.B #$0080,(A3)	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An). 
*		MOVE.B #$80,(A3)
*		MOVE.B #$00FF,(A3)
*		MOVE.B #$11,(A3)
*		MOVE.B #$12,(A3)
*		MOVE.B #$AA,(A3)
*		MOVE.B #$B3,(A3)
*		MOVE.B #$C1,(A3)
*		MOVE.B #$CC,(A3)
*		MOVE.B #$98,(A3)
*		
*		MOVE.B #$FA,(A4)
*		MOVE.B #$AF,(A4)
*		MOVE.B #$A2,(A4)
*		MOVE.B #$D8,(A4)
*		MOVE.B #$55,(A4)
*		MOVE.B #$3C,(A4)
*		MOVE.B #$EF,(A4)
*		MOVE.B #$0092,(A4)
*		MOVE.B #$00BB,(A4)
*
*		MOVE.B #$0080,(A5)	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An). 
*		MOVE.B #$80,(A5)
*		MOVE.B #$00FF,(A5)
*		MOVE.B #$11,(A5)
*		MOVE.B #$12,(A5)
*		MOVE.B #$AA,(A5)
*		MOVE.B #$B3,(A5)
*		MOVE.B #$C1,(A5)
*		MOVE.B #$CC,(A5)
*		
*		MOVE.B #$98,(A6)
*		MOVE.B #$FA,(A6)
*		MOVE.B #$AF,(A6)
*		MOVE.B #$A2,(A6)
*		MOVE.B #$D8,(A6)
*		MOVE.B #$55,(A6)
*		MOVE.B #$3C,(A6)
*		MOVE.B #$EF,(A6)
*		MOVE.B #$0092,(A6)
*		MOVE.B #$00BB,(A6)
*
*		MOVE.B #$0080,(A7)	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An). 
*		MOVE.B #$80,(A7)
*		MOVE.B #$00FF,(A7)
*		MOVE.B #$11,(A7)
*		MOVE.B #$12,(A7)
*		MOVE.B #$AA,(A7)
*		MOVE.B #$B3,(A7)
*		MOVE.B #$C1,(A7)
*		MOVE.B #$CC,(A7)
*		MOVE.B #$98,(A7)
*		MOVE.B #$FA,(A7)
*		MOVE.B #$AF,(A7)
*		MOVE.B #$A2,(A7)
*		MOVE.B #$D8,(A7)
*		MOVE.B #$55,(A7)
*		MOVE.B #$3C,(A7)
*		MOVE.B #$EF,(A7)
*		MOVE.B #$0092,(A7)
*		MOVE.B #$00BB,(A7)		
************************************ End with MOVE.B #<data> to (An)		
*
*		*** Destination (An)+ ***
************************************ Start with MOVE.B Dn to (An)+
*		MOVE.B	D0,(A0)+
*		MOVE.B	D0,(A1)+
*		MOVE.B	D0,(A2)+
*		MOVE.B	D0,(A3)+
*		MOVE.B	D0,(A4)+
*		MOVE.B	D0,(A5)+
*		MOVE.B	D0,(A6)+
*		MOVE.B	D0,(A7)+
*		
*		MOVE.B	D1,(A0)+
*		MOVE.B	D1,(A1)+
*		MOVE.B	D1,(A2)+
*		MOVE.B	D1,(A3)+
*		MOVE.B	D1,(A4)+
*		MOVE.B	D1,(A5)+
*		MOVE.B	D1,(A6)+
*		MOVE.B	D1,(A7)+
*		
*		MOVE.B	D2,(A0)+
*		MOVE.B	D2,(A1)+
*		MOVE.B	D2,(A2)+
*		MOVE.B	D2,(A3)+
*		MOVE.B	D2,(A4)+
*		MOVE.B	D2,(A5)+
*		MOVE.B	D2,(A6)+
*		MOVE.B	D2,(A7)+
*		
*		MOVE.B	D3,(A0)+
*		MOVE.B	D3,(A1)+
*		MOVE.B	D3,(A2)+
*		MOVE.B	D3,(A3)+
*		MOVE.B	D3,(A4)+
*		MOVE.B	D3,(A5)+
*		MOVE.B	D3,(A6)+
*		MOVE.B	D3,(A7)+
*		
*		MOVE.B	D4,(A0)+
*		MOVE.B	D4,(A1)+
*		MOVE.B	D4,(A2)+
*		MOVE.B	D4,(A3)+
*		MOVE.B	D4,(A4)+
*		MOVE.B	D4,(A5)+
*		MOVE.B	D4,(A6)+
*		MOVE.B	D4,(A7)+
*
*		MOVE.B	D5,(A0)+
*		MOVE.B	D5,(A1)+
*		MOVE.B	D5,(A2)+
*		MOVE.B	D5,(A3)+
*		MOVE.B	D5,(A4)+
*		MOVE.B	D5,(A5)+
*		MOVE.B	D5,(A6)+
*		MOVE.B	D5,(A7)+
*
*		MOVE.B	D6,(A0)+
*		MOVE.B	D6,(A1)+
*		MOVE.B	D6,(A2)+
*		MOVE.B	D6,(A3)+
*		MOVE.B	D6,(A4)+
*		MOVE.B	D6,(A5)+
*		MOVE.B	D6,(A6)+
*		MOVE.B	D6,(A7)+
*		
*		MOVE.B	D7,(A0)+
*		MOVE.B	D7,(A1)+
*		MOVE.B	D7,(A2)+
*		MOVE.B	D7,(A3)+
*		MOVE.B	D7,(A4)+
*		MOVE.B	D7,(A5)+
*		MOVE.B	D7,(A6)+
*		MOVE.B	D7,(A7)+
************************************ End with MOVE.B Dn to (An)+
*		
************************************ Start with MOVE.B An to (An)+
*		*MOVE.B An,(An)+ is not possible. MOVE.W AND MOVE.L ONLY
************************************ End with MOVE.B Dn to (An)+
*		
************************************ Start with MOVE.B (An) to (An)+
*		MOVE.B	(A0),(A0)+
*		MOVE.B	(A0),(A1)+
*		MOVE.B	(A0),(A2)+
*		MOVE.B	(A0),(A3)+
*		MOVE.B	(A0),(A4)+
*		MOVE.B	(A0),(A5)+
*		MOVE.B	(A0),(A6)+
*		MOVE.B	(A0),(A7)+
*		
*		MOVE.B	(A1),(A0)+
*		MOVE.B	(A1),(A1)+
*		MOVE.B	(A1),(A2)+
*		MOVE.B	(A1),(A3)+
*		MOVE.B	(A1),(A4)+
*		MOVE.B	(A1),(A5)+
*		MOVE.B	(A1),(A6)+
*		MOVE.B	(A1),(A7)+
*		
*		MOVE.B	(A2),(A0)+
*		MOVE.B	(A2),(A1)+
*		MOVE.B	(A2),(A2)+
*		MOVE.B	(A2),(A3)+
*		MOVE.B	(A2),(A4)+
*		MOVE.B	(A2),(A5)+
*		MOVE.B	(A2),(A6)+
*		MOVE.B	(A2),(A7)+
*		
*		MOVE.B	(A3),(A0)+
*		MOVE.B	(A3),(A1)+
*		MOVE.B	(A3),(A2)+
*		MOVE.B	(A3),(A3)+
*		MOVE.B	(A3),(A4)+
*		MOVE.B	(A3),(A5)+
*		MOVE.B	(A3),(A6)+
*		MOVE.B	(A3),(A7)+
*		
*		MOVE.B	(A4),(A0)+
*		MOVE.B	(A4),(A1)+
*		MOVE.B	(A4),(A2)+
*		MOVE.B	(A4),(A3)+
*		MOVE.B	(A4),(A4)+
*		MOVE.B	(A4),(A5)+
*		MOVE.B	(A4),(A6)+
*		MOVE.B	(A4),(A7)+	
*
*		MOVE.B	(A5),(A0)+
*		MOVE.B	(A5),(A1)+
*		MOVE.B	(A5),(A2)+
*		MOVE.B	(A5),(A3)+
*		MOVE.B	(A5),(A4)+
*		MOVE.B	(A5),(A5)+
*		MOVE.B	(A5),(A6)+
*		MOVE.B	(A5),(A7)+		
*
*		MOVE.B	(A6),(A0)+
*		MOVE.B	(A6),(A1)+
*		MOVE.B	(A6),(A2)+
*		MOVE.B	(A6),(A3)+
*		MOVE.B	(A6),(A4)+
*		MOVE.B	(A6),(A5)+
*		MOVE.B	(A6),(A6)+
*		MOVE.B	(A6),(A7)+
*		
*		MOVE.B	(A7),(A0)+
*		MOVE.B	(A7),(A1)+
*		MOVE.B	(A7),(A2)+
*		MOVE.B	(A7),(A3)+
*		MOVE.B	(A7),(A4)+
*		MOVE.B	(A7),(A5)+
*		MOVE.B	(A7),(A6)+
*		MOVE.B	(A7),(A7)+
************************************ End with MOVE.B (An) to (An)+
*		
************************************ Start with MOVE.B (An)+ to (An)+
*		MOVE.B	(A0)+,(A0)+
*		MOVE.B	(A0)+,(A1)+
*		MOVE.B	(A0)+,(A2)+
*		MOVE.B	(A0)+,(A3)+
*		MOVE.B	(A0)+,(A4)+
*		MOVE.B	(A0)+,(A5)+
*		MOVE.B	(A0)+,(A6)+
*		MOVE.B	(A0)+,(A7)+
*
*		MOVE.B	(A1)+,(A0)+
*		MOVE.B	(A1)+,(A1)+
*		MOVE.B	(A1)+,(A2)+
*		MOVE.B	(A1)+,(A3)+
*		MOVE.B	(A1)+,(A4)+
*		MOVE.B	(A1)+,(A5)+
*		MOVE.B	(A1)+,(A6)+
*		MOVE.B	(A1)+,(A7)+
*
*		MOVE.B	(A2)+,(A0)+
*		MOVE.B	(A2)+,(A1)+
*		MOVE.B	(A2)+,(A2)+
*		MOVE.B	(A2)+,(A3)+
*		MOVE.B	(A2)+,(A4)+
*		MOVE.B	(A2)+,(A5)+
*		MOVE.B	(A2)+,(A6)+
*		MOVE.B	(A2)+,(A7)+
*
*		MOVE.B	(A3)+,(A0)+
*		MOVE.B	(A3)+,(A1)+
*		MOVE.B	(A3)+,(A2)+
*		MOVE.B	(A3)+,(A3)+
*		MOVE.B	(A3)+,(A4)+
*		MOVE.B	(A3)+,(A5)+
*		MOVE.B	(A3)+,(A6)+
*		MOVE.B	(A3)+,(A7)+
*
*		MOVE.B	(A4)+,(A0)+
*		MOVE.B	(A4)+,(A1)+
*		MOVE.B	(A4)+,(A2)+
*		MOVE.B	(A4)+,(A3)+
*		MOVE.B	(A4)+,(A4)+
*		MOVE.B	(A4)+,(A5)+
*		MOVE.B	(A4)+,(A6)+
*		MOVE.B	(A4)+,(A7)+
*
*		MOVE.B	(A5)+,(A0)+
*		MOVE.B	(A5)+,(A1)+
*		MOVE.B	(A5)+,(A2)+
*		MOVE.B	(A5)+,(A3)+
*		MOVE.B	(A5)+,(A4)+
*		MOVE.B	(A5)+,(A5)+
*		MOVE.B	(A5)+,(A6)+
*		MOVE.B	(A5)+,(A7)+
*
*		MOVE.B	(A6)+,(A0)+
*		MOVE.B	(A6)+,(A1)+
*		MOVE.B	(A6)+,(A2)+
*		MOVE.B	(A6)+,(A3)+
*		MOVE.B	(A6)+,(A4)+
*		MOVE.B	(A6)+,(A5)+
*		MOVE.B	(A6)+,(A6)+
*		MOVE.B	(A6)+,(A7)+
*
*		MOVE.B	(A7)+,(A0)+
*		MOVE.B	(A7)+,(A1)+
*		MOVE.B	(A7)+,(A2)+
*		MOVE.B	(A7)+,(A3)+
*		MOVE.B	(A7)+,(A4)+
*		MOVE.B	(A7)+,(A5)+
*		MOVE.B	(A7)+,(A6)+
*		MOVE.B	(A7)+,(A7)+
************************************ End with MOVE.B (An)+ to (An)+
*
************************************ Start with MOVE.B -(An) to (An)+
*		MOVE.B	-(A0),(A0)+
*		MOVE.B	-(A0),(A1)+
*		MOVE.B	-(A0),(A2)+
*		MOVE.B	-(A0),(A3)+
*		MOVE.B	-(A0),(A4)+
*		MOVE.B	-(A0),(A5)+
*		MOVE.B	-(A0),(A6)+
*		MOVE.B	-(A0),(A7)+
*
*		MOVE.B	-(A1),(A0)+
*		MOVE.B	-(A1),(A1)+
*		MOVE.B	-(A1),(A2)+
*		MOVE.B	-(A1),(A3)+
*		MOVE.B	-(A1),(A4)+
*		MOVE.B	-(A1),(A5)+
*		MOVE.B	-(A1),(A6)+
*		MOVE.B	-(A1),(A7)+
*
*		MOVE.B	-(A2),(A0)+
*		MOVE.B	-(A2),(A1)+
*		MOVE.B	-(A2),(A2)+
*		MOVE.B	-(A2),(A3)+
*		MOVE.B	-(A2),(A4)+
*		MOVE.B	-(A2),(A5)+
*		MOVE.B	-(A2),(A6)+
*		MOVE.B	-(A2),(A7)+
*
*		MOVE.B	-(A3),(A0)+
*		MOVE.B	-(A3),(A1)+
*		MOVE.B	-(A3),(A2)+
*		MOVE.B	-(A3),(A3)+
*		MOVE.B	-(A3),(A4)+
*		MOVE.B	-(A3),(A5)+
*		MOVE.B	-(A3),(A6)+
*		MOVE.B	-(A3),(A7)+
*
*		MOVE.B	-(A4),(A0)+
*		MOVE.B	-(A4),(A1)+
*		MOVE.B	-(A4),(A2)+
*		MOVE.B	-(A4),(A3)+
*		MOVE.B	-(A4),(A4)+
*		MOVE.B	-(A4),(A5)+
*		MOVE.B	-(A4),(A6)+
*		MOVE.B	-(A4),(A7)+
*
*		MOVE.B	-(A5),(A0)+
*		MOVE.B	-(A5),(A1)+
*		MOVE.B	-(A5),(A2)+
*		MOVE.B	-(A5),(A3)+
*		MOVE.B	-(A5),(A4)+
*		MOVE.B	-(A5),(A5)+
*		MOVE.B	-(A5),(A6)+
*		MOVE.B	-(A5),(A7)+
*
*		MOVE.B	-(A6),(A0)+
*		MOVE.B	-(A6),(A1)+
*		MOVE.B	-(A6),(A2)+
*		MOVE.B	-(A6),(A3)+
*		MOVE.B	-(A6),(A4)+
*		MOVE.B	-(A6),(A5)+
*		MOVE.B	-(A6),(A6)+
*		MOVE.B	-(A6),(A7)+
*
*		MOVE.B	-(A7),(A0)+
*		MOVE.B	-(A7),(A1)+
*		MOVE.B	-(A7),(A2)+
*		MOVE.B	-(A7),(A3)+
*		MOVE.B	-(A7),(A4)+
*		MOVE.B	-(A7),(A5)+
*		MOVE.B	-(A7),(A6)+
*		MOVE.B	-(A7),(A7)+
************************************ End with MOVE.B -(An) to (An)+
*		
************************************ Start with MOVE.B (xxxx).W to (An)+
*		MOVE.B $00000000,(A0)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007FF0,(A0)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,(A0)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFFF0,(A0)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,(A0)+
*		MOVE.B $0,(A0)+
*		MOVE.B $1234,(A0)+
*		MOVE.B $56,(A0)+
*		MOVE.B $210,(A0)+
*		MOVE.B $7770,(A0)+
*		MOVE.B $A,(A0)+
*		MOVE.B $C2,(A0)+
*
*		MOVE.B $00000000,(A1)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007FF0,(A1)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,(A1)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFFF0,(A1)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,(A1)+
*		MOVE.B $0,(A1)+
*		MOVE.B $22,(A1)+
*		MOVE.B $420,(A1)+
*		MOVE.B $3876,(A1)+
*		MOVE.B $1222,(A1)+
*		MOVE.B $12,(A1)+
*		MOVE.B $C2,(A1)+
*
*		MOVE.B $00000000,(A4)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007FF0,(A4)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,(A4)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFFF0,(A4)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,(A4)+
*		MOVE.B $0,(A4)+
*		MOVE.B $10,(A4)+
*		MOVE.B $106,(A4)+
*		MOVE.B $5550,(A4)+
*		MOVE.B $246A,(A4)+
*		MOVE.B $0FFA,(A4)+
*		MOVE.B $E8,(A4)+
*		
*		MOVE.B $00000000,(A7)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007FF0,(A7)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,(A7)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFFF0,(A7)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,(A7)+
*		MOVE.B $0,(A7)+
*		MOVE.B $12,(A7)+
*		MOVE.B $106,(A7)+
*		MOVE.B $5550,(A7)+
*		MOVE.B $246A,(A7)+
*		MOVE.B $0FFA,(A7)+
*		MOVE.B $E8,(A7)+	
************************************ End with MOVE.B (xxxx).W to (An)+	
*
************************************ Start with MOVE.B (xxxx).L to (An)+
*		MOVE.B $00008000,(A0)+		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7FF0,(A0)+		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,(A0)+
*		MOVE.B $00009876,(A0)+		
*		MOVE.B $FFEE0202,(A0)+		
*		MOVE.B $12345678,(A0)+
*		MOVE.B $AAAAAAAA,(A0)+
*		MOVE.B $B2C3A1E0,(A0)+
*		MOVE.B $77777770,(A0)+
*		MOVE.B $CCCCCCCC,(A0)+
*		MOVE.B $C7C77AA0,(A0)+
*		MOVE.B $10101010,(A0)+
*
*		MOVE.B $00008000,(A2)+		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7FF0,(A2)+		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,(A2)+
*		MOVE.B $00009876,(A2)+		
*		MOVE.B $FFEE0202,(A2)+		
*		MOVE.B $12345678,(A2)+
*		MOVE.B $AAAAAAAA,(A2)+
*		MOVE.B $B2C3A1E0,(A2)+
*		MOVE.B $77777770,(A2)+
*		MOVE.B $CCCCCCCC,(A2)+
*		MOVE.B $C7C77AA0,(A2)+
*		MOVE.B $10101010,(A2)+
*
*		MOVE.B $00008000,(A4)+		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7FF0,(A4)+		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,(A4)+
*		MOVE.B $00009876,(A4)+		
*		MOVE.B $FFEE0202,(A4)+		
*		MOVE.B $12345678,(A4)+
*		MOVE.B $AAAAAAAA,(A4)+
*		MOVE.B $B2C3A1E0,(A4)+
*		MOVE.B $77777770,(A4)+
*		MOVE.B $CCCCCCCC,(A4)+
*		MOVE.B $C7C77AA0,(A4)+
*		MOVE.B $10101010,(A4)+
*		
*		MOVE.B $00008000,(A6)+		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7FF0,(A6)+		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,(A6)+
*		MOVE.B $00009876,(A6)+		
*		MOVE.B $FFEE0202,(A6)+		
*		MOVE.B $12345678,(A6)+
*		MOVE.B $AAAAAAAA,(A6)+
*		MOVE.B $B2C3A1E0,(A6)+
*		MOVE.B $77777770,(A6)+
*		MOVE.B $CCCCCCCC,(A6)+
*		MOVE.B $C7C77AA0,(A6)+
*		MOVE.B $10101010,(A6)+		
*
*		MOVE.B $00008000,(A7)+		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7FF0,(A7)+		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,(A7)+
*		MOVE.B $00009876,(A7)+		
*		MOVE.B $FFEE0202,(A7)+		
*		MOVE.B $12345678,(A7)+
*		MOVE.B $AAAAAAAA,(A7)+
*		MOVE.B $B2C3A1E0,(A7)+
*		MOVE.B $77777770,(A7)+
*		MOVE.B $CCCCCCCC,(A7)+
*		MOVE.B $C7C77AA0,(A7)+
*		MOVE.B $10101010,(A7)+
************************************ End with MOVE.B (xxxx).L to (An)+	
*
************************************ Start with MOVE.B <data> to (An)+
*		MOVE.B #$0080,(A0)+	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+. 
*		MOVE.B #$80,(A0)+
*		MOVE.B #$00FF,(A0)+
*		MOVE.B #$11,(A0)+
*		MOVE.B #$12,(A0)+
*		MOVE.B #$AA,(A0)+
*		MOVE.B #$B3,(A0)+
*		MOVE.B #$C1,(A0)+
*		MOVE.B #$CC,(A0)+
*		MOVE.B #$98,(A0)+
*		MOVE.B #$FA,(A0)+
*		MOVE.B #$AF,(A0)+
*		MOVE.B #$A2,(A0)+
*		MOVE.B #$D8,(A0)+
*		MOVE.B #$55,(A0)+
*		MOVE.B #$3C,(A0)+
*		MOVE.B #$EF,(A0)+
*		MOVE.B #$0092,(A0)+
*
*		MOVE.B #$0080,(A1)+	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+. 
*		MOVE.B #$80,(A1)+
*		MOVE.B #$00FF,(A1)+
*		MOVE.B #$11,(A1)+
*		MOVE.B #$12,(A1)+
*		MOVE.B #$AA,(A1)+
*		MOVE.B #$B3,(A1)+
*		MOVE.B #$C1,(A1)+
*		
*		MOVE.B #$CC,(A2)+
*		MOVE.B #$98,(A2)+
*		MOVE.B #$FA,(A2)+
*		MOVE.B #$AF,(A2)+
*		MOVE.B #$A2,(A2)+
*		MOVE.B #$D8,(A2)+
*		MOVE.B #$55,(A2)+
*		MOVE.B #$3C,(A2)+
*		MOVE.B #$EF,(A2)+
*		MOVE.B #$0092,(A2)+
*		
*		MOVE.B #$0080,(A3)+	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+. 
*		MOVE.B #$80,(A3)+
*		MOVE.B #$00FF,(A3)+
*		MOVE.B #$11,(A3)+
*		MOVE.B #$12,(A3)+
*		MOVE.B #$AA,(A3)+
*		MOVE.B #$B3,(A3)+
*		MOVE.B #$C1,(A3)+
*		MOVE.B #$CC,(A3)+
*		MOVE.B #$98,(A3)+
*		
*		MOVE.B #$FA,(A4)+
*		MOVE.B #$AF,(A4)+
*		MOVE.B #$A2,(A4)+
*		MOVE.B #$D8,(A4)+
*		MOVE.B #$55,(A4)+
*		MOVE.B #$3C,(A4)+
*		MOVE.B #$EF,(A4)+
*		MOVE.B #$0092,(A4)+
*		MOVE.B #$00BB,(A4)+
*		MOVE.B #$001A,(A4)+
*
*		MOVE.B #$0080,(A5)+	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+. 
*		MOVE.B #$80,(A5)+
*		MOVE.B #$00FF,(A5)+
*		MOVE.B #$11,(A5)+
*		MOVE.B #$12,(A5)+
*		MOVE.B #$AA,(A5)+
*		MOVE.B #$B3,(A5)+
*		MOVE.B #$C1,(A5)+
*		MOVE.B #$CC,(A5)+
*		MOVE.B #$98,(A5)+
*		MOVE.B #$FA,(A5)+
*		MOVE.B #$C2,(A5)+
*		
*		MOVE.B #$AF,(A6)+		
*		MOVE.B #$A2,(A6)+
*		MOVE.B #$D8,(A6)+
*		MOVE.B #$55,(A6)+
*		MOVE.B #$3C,(A6)+
*		MOVE.B #$EF,(A6)+
*		MOVE.B #$0092,(A6)+
*		MOVE.B #$00BB,(A6)+
*
*		MOVE.B #$0080,(A7)+	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+. 
*		MOVE.B #$80,(A7)+
*		MOVE.B #$00FF,(A7)+
*		MOVE.B #$11,(A7)+
*		MOVE.B #$12,(A7)+
*		MOVE.B #$AA,(A7)+
*		MOVE.B #$B3,(A7)+
*		MOVE.B #$C1,(A7)+
*		MOVE.B #$CC,(A7)+
*		MOVE.B #$98,(A7)+
*		MOVE.B #$FA,(A7)+
*		MOVE.B #$AF,(A7)+
*		MOVE.B #$A2,(A7)+
*		MOVE.B #$D8,(A7)+
*		MOVE.B #$55,(A7)+
*		MOVE.B #$3C,(A7)+
*		MOVE.B #$EF,(A7)+
*		MOVE.B #$0092,(A7)+	
************************************ End with MOVE.B #<data> to (An)+	
*
**** Destination -(An)
************************************ Start with MOVE.B Dn to -(An)
*		MOVE.B	D0,-(A0)
*		MOVE.B	D0,-(A1)
*		MOVE.B	D0,-(A2)
*		MOVE.B	D0,-(A3)
*		MOVE.B	D0,-(A4)
*		MOVE.B	D0,-(A5)
*		MOVE.B	D0,-(A6)
*		MOVE.B	D0,-(A7)
*		
*		MOVE.B	D1,-(A0)
*		MOVE.B	D1,-(A1)
*		MOVE.B	D1,-(A2)
*		MOVE.B	D1,-(A3)
*		MOVE.B	D1,-(A4)
*		MOVE.B	D1,-(A5)
*		MOVE.B	D1,-(A6)
*		MOVE.B	D1,-(A7)
*		
*		MOVE.B	D2,-(A0)
*		MOVE.B	D2,-(A1)
*		MOVE.B	D2,-(A2)
*		MOVE.B	D2,-(A3)
*		MOVE.B	D2,-(A4)
*		MOVE.B	D2,-(A5)
*		MOVE.B	D2,-(A6)
*		MOVE.B	D2,-(A7)
*		
*		MOVE.B	D3,-(A0)
*		MOVE.B	D3,-(A1)
*		MOVE.B	D3,-(A2)
*		MOVE.B	D3,-(A3)
*		MOVE.B	D3,-(A4)
*		MOVE.B	D3,-(A5)
*		MOVE.B	D3,-(A6)
*		MOVE.B	D3,-(A7)
*		
*		MOVE.B	D4,-(A0)
*		MOVE.B	D4,-(A1)
*		MOVE.B	D4,-(A2)
*		MOVE.B	D4,-(A3)
*		MOVE.B	D4,-(A4)
*		MOVE.B	D4,-(A5)
*		MOVE.B	D4,-(A6)
*		MOVE.B	D4,-(A7)	
*
*		MOVE.B	D5,-(A0)
*		MOVE.B	D5,-(A1)
*		MOVE.B	D5,-(A2)
*		MOVE.B	D5,-(A3)
*		MOVE.B	D5,-(A4)
*		MOVE.B	D5,-(A5)
*		MOVE.B	D5,-(A6)
*		MOVE.B	D5,-(A7)	
*
*		MOVE.B	D6,-(A0)
*		MOVE.B	D6,-(A1)
*		MOVE.B	D6,-(A2)
*		MOVE.B	D6,-(A3)
*		MOVE.B	D6,-(A4)
*		MOVE.B	D6,-(A5)
*		MOVE.B	D6,-(A6)
*		MOVE.B	D6,-(A7)
*		
*		MOVE.B	D7,-(A0)
*		MOVE.B	D7,-(A1)
*		MOVE.B	D7,-(A2)
*		MOVE.B	D7,-(A3)
*		MOVE.B	D7,-(A4)
*		MOVE.B	D7,-(A5)
*		MOVE.B	D7,-(A6)
*		MOVE.B	D7,-(A7)
************************************ End with MOVE.B Dn to -(An)
*		
************************************ Start with MOVE.B An to -(An)
*		*MOVE.B An,-(An) is not possible. MOVE.W AND MOVE.L ONLY
************************************ End with MOVE.B Dn to -(An)
*		
************************************ Start with MOVE.B (An) to -(An)
*		MOVE.B	(A0),-(A0)
*		MOVE.B	(A0),-(A1)
*		MOVE.B	(A0),-(A2)
*		MOVE.B	(A0),-(A3)
*		MOVE.B	(A0),-(A4)
*		MOVE.B	(A0),-(A5)
*		MOVE.B	(A0),-(A6)
*		MOVE.B	(A0),-(A7)
*		
*		MOVE.B	(A1),-(A0)
*		MOVE.B	(A1),-(A1)
*		MOVE.B	(A1),-(A2)
*		MOVE.B	(A1),-(A3)
*		MOVE.B	(A1),-(A4)
*		MOVE.B	(A1),-(A5)
*		MOVE.B	(A1),-(A6)
*		MOVE.B	(A1),-(A7)
*		
*		MOVE.B	(A2),-(A0)
*		MOVE.B	(A2),-(A1)
*		MOVE.B	(A2),-(A2)
*		MOVE.B	(A2),-(A3)
*		MOVE.B	(A2),-(A4)
*		MOVE.B	(A2),-(A5)
*		MOVE.B	(A2),-(A6)
*		MOVE.B	(A2),-(A7)
*		
*		MOVE.B	(A3),-(A0)
*		MOVE.B	(A3),-(A1)
*		MOVE.B	(A3),-(A2)
*		MOVE.B	(A3),-(A3)
*		MOVE.B	(A3),-(A4)
*		MOVE.B	(A3),-(A5)
*		MOVE.B	(A3),-(A6)
*		MOVE.B	(A3),-(A7)
*		
*		MOVE.B	(A4),-(A0)
*		MOVE.B	(A4),-(A1)
*		MOVE.B	(A4),-(A2)
*		MOVE.B	(A4),-(A3)
*		MOVE.B	(A4),-(A4)
*		MOVE.B	(A4),-(A5)
*		MOVE.B	(A4),-(A6)
*		MOVE.B	(A4),-(A7)	
*
*		MOVE.B	(A5),-(A0)
*		MOVE.B	(A5),-(A1)
*		MOVE.B	(A5),-(A2)
*		MOVE.B	(A5),-(A3)
*		MOVE.B	(A5),-(A4)
*		MOVE.B	(A5),-(A5)
*		MOVE.B	(A5),-(A6)
*		MOVE.B	(A5),-(A7)		
*
*		MOVE.B	(A6),-(A0)
*		MOVE.B	(A6),-(A1)
*		MOVE.B	(A6),-(A2)
*		MOVE.B	(A6),-(A3)
*		MOVE.B	(A6),-(A4)
*		MOVE.B	(A6),-(A5)
*		MOVE.B	(A6),-(A6)
*		MOVE.B	(A6),-(A7)
*		
*		MOVE.B	(A7),-(A0)
*		MOVE.B	(A7),-(A1)
*		MOVE.B	(A7),-(A2)
*		MOVE.B	(A7),-(A3)
*		MOVE.B	(A7),-(A4)
*		MOVE.B	(A7),-(A5)
*		MOVE.B	(A7),-(A6)
*		MOVE.B	(A7),-(A7)
************************************ End with MOVE.B (An) to -(An)
*		
************************************ Start with MOVE.B (An)+ to -(An)
*		MOVE.B	(A0)+,-(A0)
*		MOVE.B	(A0)+,-(A1)
*		MOVE.B	(A0)+,-(A2)
*		MOVE.B	(A0)+,-(A3)
*		MOVE.B	(A0)+,-(A4)
*		MOVE.B	(A0)+,-(A5)
*		MOVE.B	(A0)+,-(A6)
*		MOVE.B	(A0)+,-(A7)
*
*		MOVE.B	(A1)+,-(A0)
*		MOVE.B	(A1)+,-(A1)
*		MOVE.B	(A1)+,-(A2)
*		MOVE.B	(A1)+,-(A3)
*		MOVE.B	(A1)+,-(A4)
*		MOVE.B	(A1)+,-(A5)
*		MOVE.B	(A1)+,-(A6)
*		MOVE.B	(A1)+,-(A7)
*
*		MOVE.B	(A2)+,-(A0)
*		MOVE.B	(A2)+,-(A1)
*		MOVE.B	(A2)+,-(A2)
*		MOVE.B	(A2)+,-(A3)
*		MOVE.B	(A2)+,-(A4)
*		MOVE.B	(A2)+,-(A5)
*		MOVE.B	(A2)+,-(A6)
*		MOVE.B	(A2)+,-(A7)
*
*		MOVE.B	(A3)+,-(A0)
*		MOVE.B	(A3)+,-(A1)
*		MOVE.B	(A3)+,-(A2)
*		MOVE.B	(A3)+,-(A3)
*		MOVE.B	(A3)+,-(A4)
*		MOVE.B	(A3)+,-(A5)
*		MOVE.B	(A3)+,-(A6)
*		MOVE.B	(A3)+,-(A7)
*
*		MOVE.B	(A4)+,-(A0)
*		MOVE.B	(A4)+,-(A1)
*		MOVE.B	(A4)+,-(A2)
*		MOVE.B	(A4)+,-(A3)
*		MOVE.B	(A4)+,-(A4)
*		MOVE.B	(A4)+,-(A5)
*		MOVE.B	(A4)+,-(A6)
*		MOVE.B	(A4)+,-(A7)
*
*		MOVE.B	(A5)+,-(A0)
*		MOVE.B	(A5)+,-(A1)
*		MOVE.B	(A5)+,-(A2)
*		MOVE.B	(A5)+,-(A3)
*		MOVE.B	(A5)+,-(A4)
*		MOVE.B	(A5)+,-(A5)
*		MOVE.B	(A5)+,-(A6)
*		MOVE.B	(A5)+,-(A7)
*
*		MOVE.B	(A6)+,-(A0)
*		MOVE.B	(A6)+,-(A1)
*		MOVE.B	(A6)+,-(A2)
*		MOVE.B	(A6)+,-(A3)
*		MOVE.B	(A6)+,-(A4)
*		MOVE.B	(A6)+,-(A5)
*		MOVE.B	(A6)+,-(A6)
*		MOVE.B	(A6)+,-(A7)
*
*		MOVE.B	(A7)+,-(A0)
*		MOVE.B	(A7)+,-(A1)
*		MOVE.B	(A7)+,-(A2)
*		MOVE.B	(A7)+,-(A3)
*		MOVE.B	(A7)+,-(A4)
*		MOVE.B	(A7)+,-(A5)
*		MOVE.B	(A7)+,-(A6)
*		MOVE.B	(A7)+,-(A7)
************************************ End with MOVE.B (An)+ to -(An)
*
************************************ Start with MOVE.B -(An) to -(An)
*		MOVE.B	-(A0),-(A0)
*		MOVE.B	-(A0),-(A1)
*		MOVE.B	-(A0),-(A2)
*		MOVE.B	-(A0),-(A3)
*		MOVE.B	-(A0),-(A4)
*		MOVE.B	-(A0),-(A5)
*		MOVE.B	-(A0),-(A6)
*		MOVE.B	-(A0),-(A7)
*
*		MOVE.B	-(A1),-(A0)
*		MOVE.B	-(A1),-(A1)
*		MOVE.B	-(A1),-(A2)
*		MOVE.B	-(A1),-(A3)
*		MOVE.B	-(A1),-(A4)
*		MOVE.B	-(A1),-(A5)
*		MOVE.B	-(A1),-(A6)
*		MOVE.B	-(A1),-(A7)
*
*		MOVE.B	-(A2),-(A0)
*		MOVE.B	-(A2),-(A1)
*		MOVE.B	-(A2),-(A2)
*		MOVE.B	-(A2),-(A3)
*		MOVE.B	-(A2),-(A4)
*		MOVE.B	-(A2),-(A5)
*		MOVE.B	-(A2),-(A6)
*		MOVE.B	-(A2),-(A7)
*
*		MOVE.B	-(A3),-(A0)
*		MOVE.B	-(A3),-(A1)
*		MOVE.B	-(A3),-(A2)
*		MOVE.B	-(A3),-(A3)
*		MOVE.B	-(A3),-(A4)
*		MOVE.B	-(A3),-(A5)
*		MOVE.B	-(A3),-(A6)
*		MOVE.B	-(A3),-(A7)
*
*		MOVE.B	-(A4),-(A0)
*		MOVE.B	-(A4),-(A1)
*		MOVE.B	-(A4),-(A2)
*		MOVE.B	-(A4),-(A3)
*		MOVE.B	-(A4),-(A4)
*		MOVE.B	-(A4),-(A5)
*		MOVE.B	-(A4),-(A6)
*		MOVE.B	-(A4),-(A7)
*
*		MOVE.B	-(A5),-(A0)
*		MOVE.B	-(A5),-(A1)
*		MOVE.B	-(A5),-(A2)
*		MOVE.B	-(A5),-(A3)
*		MOVE.B	-(A5),-(A4)
*		MOVE.B	-(A5),-(A5)
*		MOVE.B	-(A5),-(A6)
*		MOVE.B	-(A5),-(A7)
*
*		MOVE.B	-(A6),-(A0)
*		MOVE.B	-(A6),-(A1)
*		MOVE.B	-(A6),-(A2)
*		MOVE.B	-(A6),-(A3)
*		MOVE.B	-(A6),-(A4)
*		MOVE.B	-(A6),-(A5)
*		MOVE.B	-(A6),-(A6)
*		MOVE.B	-(A6),-(A7)
*
*		MOVE.B	-(A7),-(A0)
*		MOVE.B	-(A7),-(A1)
*		MOVE.B	-(A7),-(A2)
*		MOVE.B	-(A7),-(A3)
*		MOVE.B	-(A7),-(A4)
*		MOVE.B	-(A7),-(A5)
*		MOVE.B	-(A7),-(A6)
*		MOVE.B	-(A7),-(A7)
************************************ End with MOVE.B -(An) to -(An)
*		
************************************ Start with MOVE.B (xxxx).W to -(An)
*		MOVE.B $00000000,-(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007F00,-(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,-(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,-(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,-(A0)
*		MOVE.B $0,-(A0)
*		MOVE.B $1234,-(A0)
*		MOVE.B $56,-(A0)
*		MOVE.B $212,-(A0)
*		MOVE.B $7770,-(A0)
*		MOVE.B $FA,-(A0)
*		MOVE.B $C2,-(A0)
*
*		MOVE.B $00000000,-(A1)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007F00,-(A1)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,-(A1)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,-(A1)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,-(A1)
*		MOVE.B $0,-(A1)
*		
*		MOVE.B $22,-(A2)
*		MOVE.B $420,-(A2)
*		MOVE.B $3876,-(A2)
*		MOVE.B $1222,-(A2)
*		MOVE.B $12,-(A2)
*		MOVE.B $22,-(A2)
*
*		MOVE.B $00000000,-(A3)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007F00,-(A3)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,-(A3)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,-(A3)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,-(A3)
*		MOVE.B $0,-(A3)
*		
*		MOVE.B $1A,-(A4)
*		MOVE.B $106,-(A4)
*		MOVE.B $5554,-(A4)
*		MOVE.B $2462,-(A4)
*		MOVE.B $0FF0,-(A4)
*		MOVE.B $E8,-(A4)
*		
*		MOVE.B $00000000,-(A5)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007F00,-(A5)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,-(A5)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,-(A5)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,-(A5)
*		MOVE.B $0,-(A5)
*		
*		MOVE.B $1A,-(A6)
*		MOVE.B $106,-(A6)
*		MOVE.B $5554,-(A6)
*		MOVE.B $2462,-(A6)
*		MOVE.B $0FF0,-(A6)
*		MOVE.B $E8,-(A6)		
*		
*		MOVE.B $00000000,-(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007F00,-(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,-(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,-(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,-(A7)
*		MOVE.B $0,-(A7)
*		MOVE.B $1A,-(A7)
*		MOVE.B $106,-(A7)
*		MOVE.B $5554,-(A7)
*		MOVE.B $2462,-(A7)
*		MOVE.B $0FF0,-(A7)
*		MOVE.B $E8,-(A7)		
************************************ End with MOVE.B (xxxx).W to -(An)	
*
************************************ Start with MOVE.B (xxxx).L to -(An)
*		MOVE.B $00008000,-(A0)		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7F00,-(A0)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,-(A0)
*		MOVE.B $00009876,-(A0)		
*		MOVE.B $FFEE0202,-(A0)		
*		MOVE.B $12345678,-(A0)
*		MOVE.B $AAAAAAAA,-(A0)
*		MOVE.B $B2C3A1E4,-(A0)
*		MOVE.B $77777776,-(A0)
*		MOVE.B $CCCCCCCC,-(A0)
*		MOVE.B $C7C77AA8,-(A0)
*		MOVE.B $10101010,-(A0)
*
*		MOVE.B $00008000,-(A1)		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7F00,-(A1)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,-(A1)
*		MOVE.B $00009876,-(A1)		
*		MOVE.B $FFEE0202,-(A1)		
*		MOVE.B $12345678,-(A1)
*		
*		MOVE.B $AAAAAAAA,-(A2)
*		MOVE.B $B2C3A1E4,-(A2)
*		MOVE.B $77777776,-(A2)
*		MOVE.B $CCCCCCCC,-(A2)
*		MOVE.B $C7C77AA8,-(A2)
*		MOVE.B $10101010,-(A2)
*
*		MOVE.B $00008000,-(A3)		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7F00,-(A3)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,-(A3)
*		MOVE.B $00009876,-(A3)		
*		MOVE.B $FFEE0202,-(A3)		
*		MOVE.B $12345678,-(A3)
*		
*		MOVE.B $AAAAAAAA,-(A4)
*		MOVE.B $B2C3A1E4,-(A4)
*		MOVE.B $77777776,-(A4)
*		MOVE.B $CCCCCCCC,-(A4)
*		MOVE.B $C7C77AA8,-(A4)
*		MOVE.B $10101010,-(A4)
*		
*		MOVE.B $00008000,-(A5)		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7F00,-(A5)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,-(A5)
*		MOVE.B $00009876,-(A5)		
*		MOVE.B $FFEE0202,-(A5)		
*		MOVE.B $12345678,-(A5)
*		
*		MOVE.B $AAAAAAAA,-(A6)
*		MOVE.B $B2C3A1E4,-(A6)
*		MOVE.B $77777776,-(A6)
*		MOVE.B $CCCCCCCC,-(A6)
*		MOVE.B $C7C77AA8,-(A6)
*		MOVE.B $10101010,-(A6)		
*
*		MOVE.B $00008000,-(A7)		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7F00,-(A7)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,-(A7)
*		MOVE.B $00009876,-(A7)		
*		MOVE.B $FFEE0202,-(A7)		
*		MOVE.B $12345678,-(A7)
*		MOVE.B $AAAAAAAA,-(A7)
*		MOVE.B $B2C3A1E4,-(A7)
*		MOVE.B $77777776,-(A7)
*		MOVE.B $CCCCCCCC,-(A7)
*		MOVE.B $C7C77AA8,-(A7)
*		MOVE.B $10101010,-(A7)
************************************ End with MOVE.B (xxxx).L to -(An)	
*
************************************ Start with MOVE.B <data> to (-An)
*		MOVE.B #$0080,-(A0)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An). 
*		MOVE.B #$80,-(A0)
*		MOVE.B #$00FF,-(A0)
*		MOVE.B #$11,-(A0)
*		MOVE.B #$12,-(A0)
*		MOVE.B #$AA,-(A0)
*		MOVE.B #$B3,-(A0)
*		MOVE.B #$C1,-(A0)
*		
*		MOVE.B #$98,-(A1)
*		MOVE.B #$FA,-(A1)
*		MOVE.B #$AF,-(A1)
*		MOVE.B #$A2,-(A1)
*		MOVE.B #$D8,-(A1)
*		MOVE.B #$55,-(A1)
*		MOVE.B #$3C,-(A1)
*		MOVE.B #$EF,-(A1)
*		MOVE.B #$0092,-(A1)
*		MOVE.B #$00BB,-(A1)
*
*		MOVE.B #$0080,-(A2)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An). 
*		MOVE.B #$80,-(A2)
*		MOVE.B #$00FF,-(A2)
*		MOVE.B #$11,-(A2)
*		MOVE.B #$12,-(A2)
*		MOVE.B #$AA,-(A2)
*		MOVE.B #$B3,-(A2)
*		MOVE.B #$C1,-(A2)
*		MOVE.B #$CC,-(A2)
*		MOVE.B #$98,-(A2)
*		
*		MOVE.B #$FA,-(A3)
*		MOVE.B #$AF,-(A3)
*		MOVE.B #$A2,-(A3)
*		MOVE.B #$D8,-(A3)
*		MOVE.B #$55,-(A3)
*		MOVE.B #$3C,-(A3)
*		MOVE.B #$EF,-(A3)
*		MOVE.B #$0092,-(A3)
*		
*		MOVE.B #$0080,-(A4)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An). 
*		MOVE.B #$80,-(A4)
*		MOVE.B #$00FF,-(A4)
*		MOVE.B #$11,-(A4)
*		MOVE.B #$12,-(A4)
*		MOVE.B #$AA,-(A4)
*		MOVE.B #$B3,-(A4)
*		MOVE.B #$C1,-(A4)
*		MOVE.B #$CC,-(A4)
*		MOVE.B #$98,-(A4)
*		
*		MOVE.B #$FA,-(A5)
*		MOVE.B #$AF,-(A5)
*		MOVE.B #$A2,-(A5)
*		MOVE.B #$D8,-(A5)
*		MOVE.B #$55,-(A5)
*		MOVE.B #$3C,-(A5)
*		MOVE.B #$EF,-(A5)
*		MOVE.B #$0092,-(A5)
*
*		MOVE.B #$0080,-(A6)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An). 
*		MOVE.B #$80,-(A6)
*		MOVE.B #$00FF,-(A6)
*		MOVE.B #$11,-(A6)
*		MOVE.B #$12,-(A6)
*		MOVE.B #$AA,-(A6)
*		MOVE.B #$B3,-(A6)
*		MOVE.B #$C1,-(A6)
*		MOVE.B #$CC,-(A6)
*		MOVE.B #$98,-(A6)
*		MOVE.B #$FA,-(A6)
*		MOVE.B #$AF,-(A6)
*		MOVE.B #$A2,-(A6)
*		MOVE.B #$D8,-(A6)
*		MOVE.B #$55,-(A6)
*		MOVE.B #$3C,-(A6)
*		MOVE.B #$EF,-(A6)
*		MOVE.B #$00BB,-(A6)
*
*		MOVE.B #$0080,-(A7)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An). 
*		MOVE.B #$80,-(A7)
*		MOVE.B #$00FF,-(A7)
*		MOVE.B #$11,-(A7)
*		MOVE.B #$12,-(A7)
*		MOVE.B #$AA,-(A7)
*		MOVE.B #$B3,-(A7)
*		MOVE.B #$C1,-(A7)
*		MOVE.B #$CC,-(A7)
*		MOVE.B #$98,-(A7)
*		MOVE.B #$FA,-(A7)
*		MOVE.B #$AF,-(A7)
*		MOVE.B #$A2,-(A7)
*		MOVE.B #$D8,-(A7)
*		MOVE.B #$55,-(A7)
*		MOVE.B #$3C,-(A7)
*		MOVE.B #$EF,-(A7)
*		MOVE.B #$00BB,-(A7)		
************************************ End with MOVE.B #<data> to -(An)			
*
*		*** Destination (xxxx).W
************************************ Start with MOVE.B Dn to (xxxx).W
*		MOVE.B	D0,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B	D0,$00007120		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B	D0,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B	D0,$FFFFF110		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B	D0,$5D23
*		MOVE.B	D0,$2222
*		MOVE.B	D0,$A
*		MOVE.B	D0,$12
*		MOVE.B	D0,$BBC
*		MOVE.B	D0,$6000
*		MOVE.B	D0,$00003456
*		MOVE.B	D0,$FFFFABDC
*
*		MOVE.B	D1,$5D24
*		MOVE.B	D1,$2222
*		MOVE.B	D1,$A
*		MOVE.B	D1,$12
*		MOVE.B	D1,$BBC
*		MOVE.B	D1,$6000
*		MOVE.B	D1,$00003456
*		MOVE.B	D1,$FFFFABDC		
*
*		MOVE.B	D2,$00000000
*		MOVE.B	D2,$00007120
*		MOVE.B	D2,$FFFF8000
*		MOVE.B	D2,$FFFFF110
*		MOVE.B	D2,$5D22
*		MOVE.B	D2,$2222
*		MOVE.B	D2,$A
*		MOVE.B	D2,$12
*		MOVE.B	D2,$BBC
*		MOVE.B	D2,$6000
*		MOVE.B	D2,$00003456
*		MOVE.B	D2,$FFFFABDC
*
*		MOVE.B	D3,$00000000
*		MOVE.B	D3,$00007110
*		MOVE.B	D3,$FFFF8000
*		MOVE.B	D3,$FFFFF110
*		MOVE.B	D3,$5D22
*		MOVE.B	D3,$2222
*		MOVE.B	D3,$A
*		MOVE.B	D3,$12
*		MOVE.B	D3,$BBC
*		MOVE.B	D3,$6000
*		MOVE.B	D3,$00003456
*		MOVE.B	D3,$FFFFABDC
*
*		MOVE.B	D4,$00000000
*		MOVE.B	D4,$00007120
*		MOVE.B	D4,$FFFF8000
*		MOVE.B	D4,$FFFFF120
*		MOVE.B	D4,$5D20
*		MOVE.B	D4,$2222
*		MOVE.B	D4,$A
*		MOVE.B	D4,$12
*		MOVE.B	D4,$BBC
*		MOVE.B	D4,$6000
*		MOVE.B	D4,$00003456
*		MOVE.B	D4,$FFFFABDC
*
*		MOVE.B	D5,$00000000
*		MOVE.B	D5,$00007102
*		MOVE.B	D5,$FFFF8000
*		MOVE.B	D5,$FFFFF100
*		MOVE.B	D5,$5D20
*		MOVE.B	D5,$2222
*		MOVE.B	D5,$A
*		MOVE.B	D5,$12
*		MOVE.B	D5,$BBC
*		MOVE.B	D5,$6000
*		MOVE.B	D5,$00003456
*		MOVE.B	D5,$FFFFABDC
*
*		MOVE.B	D6,$00000000
*		MOVE.B	D6,$00007102
*		MOVE.B	D6,$FFFF8000
*		MOVE.B	D6,$FFFFF110
*		MOVE.B	D6,$5D22
*		MOVE.B	D6,$2222
*		MOVE.B	D6,$A
*		MOVE.B	D6,$12
*		MOVE.B	D6,$BBC
*		MOVE.B	D6,$6000
*		MOVE.B	D6,$00003456
*		MOVE.B	D6,$FFFFABDC
*		
*		MOVE.B	D7,$00000000
*		MOVE.B	D7,$00007002
*		MOVE.B	D7,$FFFF8000
*		MOVE.B	D7,$FFFFF000
*		MOVE.B	D7,$5D22
*		MOVE.B	D7,$2222
*		MOVE.B	D7,$A
*		MOVE.B	D7,$12
*		MOVE.B	D7,$BBC
*		MOVE.B	D7,$6000
*		MOVE.B	D7,$00003456
*		MOVE.B	D7,$FFFFABDC
************************************ End with MOVE.B Dn to (xxxx).W
*		
************************************ Start with MOVE.B An to (xxxx).W
*		*MOVE.B An,<xxxx>.W is not possible. MOVE.W AND MOVE.L ONLY
************************************ End with MOVE.B An to (xxxx).W
*		
************************************ Start with MOVE.B (An) to (xxxx).W
*		MOVE.B	(A0),$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B	(A0),$00007100		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B	(A0),$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B	(A0),$FFFFF190		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B	(A0),$5D22
*		MOVE.B	(A0),$2222
*		MOVE.B	(A0),$A
*		MOVE.B	(A0),$12
*		MOVE.B	(A0),$BBC
*		MOVE.B	(A0),$6000
*		MOVE.B	(A0),$00003456
*		MOVE.B	(A0),$FFFFABDC
*
*		MOVE.B	(A1),$2222
*		MOVE.B	(A1),$A
*		MOVE.B	(A1),$12
*		MOVE.B	(A1),$BBC
*		MOVE.B	(A1),$6000
*		MOVE.B	(A1),$00003456
*		MOVE.B	(A1),$FFFFABDC		
*
*		MOVE.B	(A2),$00000000
*		MOVE.B	(A2),$00007110
*		MOVE.B	(A2),$FFFF8000
*		MOVE.B	(A2),$FFFFF120
*		MOVE.B	(A2),$5D22
*		MOVE.B	(A2),$2222
*		MOVE.B	(A2),$A
*		MOVE.B	(A2),$12
*		MOVE.B	(A2),$BBC
*		MOVE.B	(A2),$6000
*		MOVE.B	(A2),$00003456
*		MOVE.B	(A2),$FFFFABDC
*
*		MOVE.B	(A3),$00000000
*		MOVE.B	(A3),$00007120
*		MOVE.B	(A3),$FFFF8000
*		MOVE.B	(A3),$FFFFF000
*		MOVE.B	(A3),$5D23
*		MOVE.B	(A3),$2222
*		MOVE.B	(A3),$A
*		MOVE.B	(A3),$12
*		MOVE.B	(A3),$BBC
*		MOVE.B	(A3),$6000
*		MOVE.B	(A3),$00003456
*		MOVE.B	(A3),$FFFFABDC
*
*		MOVE.B	(A4),$00000000
*		MOVE.B	(A4),$00007110
*		MOVE.B	(A4),$FFFF8000
*		MOVE.B	(A4),$FFFFF000
*		MOVE.B	(A4),$5D20
*		MOVE.B	(A4),$2222
*		MOVE.B	(A4),$A
*		MOVE.B	(A4),$12
*		MOVE.B	(A4),$BBC
*		MOVE.B	(A4),$6000
*		MOVE.B	(A4),$00003456
*		MOVE.B	(A4),$FFFFABDC
*
*		MOVE.B	(A5),$00000000
*		MOVE.B	(A5),$00007110
*		MOVE.B	(A5),$FFFF8000
*		MOVE.B	(A5),$FFFFF000
*		MOVE.B	(A5),$5D22
*		MOVE.B	(A5),$2222
*		MOVE.B	(A5),$A
*		MOVE.B	(A5),$12
*		MOVE.B	(A5),$BBC
*		MOVE.B	(A5),$6000
*		MOVE.B	(A5),$00003456
*		MOVE.B	(A5),$FFFFABDC
*
*		MOVE.B	(A6),$00000000
*		MOVE.B	(A6),$00007120
*		MOVE.B	(A6),$FFFF8000
*		MOVE.B	(A6),$FFFFF110
*		MOVE.B	(A6),$5D24
*		MOVE.B	(A6),$2222
*		MOVE.B	(A6),$A
*		MOVE.B	(A6),$12
*		MOVE.B	(A6),$BBC
*		MOVE.B	(A6),$6000
*		MOVE.B	(A6),$00003456
*		MOVE.B	(A6),$FFFFABDC
*		
*		MOVE.B	(A7),$00000000
*		MOVE.B	(A7),$00007110
*		MOVE.B	(A7),$FFFF8000
*		MOVE.B	(A7),$FFFFF000
*		MOVE.B	(A7),$5D20
*		MOVE.B	(A7),$2222
*		MOVE.B	(A7),$A
*		MOVE.B	(A7),$12
*		MOVE.B	(A7),$BBC
*		MOVE.B	(A7),$6000
*		MOVE.B	(A7),$00003456
*		MOVE.B	(A7),$FFFFABDC
************************************ End with MOVE.B (An) to (xxxx).W
*		
************************************ Start with MOVE.B (An)+ to (xxxx).W
*		MOVE.B	(A0)+,$00000000
*		MOVE.B	(A0)+,$00007F02
*		MOVE.B	(A0)+,$FFFF8000
*		MOVE.B	(A0)+,$FFFFF000
*		MOVE.B	(A0)+,$5D24
*		MOVE.B	(A0)+,$2222
*		MOVE.B	(A0)+,$A
*		MOVE.B	(A0)+,$BBC
*		MOVE.B	(A0)+,$6000
*		MOVE.B	(A0)+,$00003456
*		MOVE.B	(A0)+,$00004020
*		MOVE.B	(A0)+,$FFFFABDC		
*
*		MOVE.B	(A1)+,$00000000
*		MOVE.B	(A1)+,$00007120
*		MOVE.B	(A1)+,$FFFF8000
*		MOVE.B	(A1)+,$FFFFF000
*		MOVE.B	(A1)+,$5D24
*		MOVE.B	(A1)+,$2222
*		MOVE.B	(A1)+,$A
*		MOVE.B	(A1)+,$BBC
*		MOVE.B	(A1)+,$6000
*		MOVE.B	(A1)+,$00003456
*		MOVE.B	(A1)+,$00004020
*		MOVE.B	(A1)+,$FFFFABDC		
*
*		MOVE.B	(A2)+,$00000000
*		MOVE.B	(A2)+,$00007110
*		MOVE.B	(A2)+,$FFFF8000
*		MOVE.B	(A2)+,$FFFFF000
*		MOVE.B	(A2)+,$5D24
*		MOVE.B	(A2)+,$2222
*		MOVE.B	(A2)+,$A
*		MOVE.B	(A2)+,$BBC
*		MOVE.B	(A2)+,$6000
*		MOVE.B	(A2)+,$00003456
*		MOVE.B	(A2)+,$00004020
*		MOVE.B	(A2)+,$FFFFABDC		
*
*		MOVE.B	(A3)+,$00000000
*		MOVE.B	(A3)+,$00007110
*		MOVE.B	(A3)+,$FFFF8000
*		MOVE.B	(A3)+,$FFFFF120
*		MOVE.B	(A3)+,$5D2A
*		MOVE.B	(A3)+,$2222
*		MOVE.B	(A3)+,$A
*		MOVE.B	(A3)+,$BBC
*		MOVE.B	(A3)+,$6000
*		MOVE.B	(A3)+,$00003456
*		MOVE.B	(A3)+,$00004020
*		MOVE.B	(A3)+,$FFFFABDC		
*
*		MOVE.B	(A4)+,$00000000
*		MOVE.B	(A4)+,$00007114
*		MOVE.B	(A4)+,$FFFF8000
*		MOVE.B	(A4)+,$FFFFF120
*		MOVE.B	(A4)+,$5D22
*		MOVE.B	(A4)+,$2222
*		MOVE.B	(A4)+,$A
*		MOVE.B	(A4)+,$BBC
*		MOVE.B	(A4)+,$6000
*		MOVE.B	(A4)+,$00003456
*		MOVE.B	(A4)+,$00004020
*		MOVE.B	(A4)+,$FFFFABDC		
*
*		MOVE.B	(A5)+,$00000000
*		MOVE.B	(A5)+,$00007120
*		MOVE.B	(A5)+,$FFFF8000
*		MOVE.B	(A5)+,$FFFFF100
*		MOVE.B	(A5)+,$5D24
*		MOVE.B	(A5)+,$2222
*		MOVE.B	(A5)+,$A
*		MOVE.B	(A5)+,$BBC
*		MOVE.B	(A5)+,$6000
*		MOVE.B	(A5)+,$00003456
*		MOVE.B	(A5)+,$00004020
*		MOVE.B	(A5)+,$FFFFABDC		
*
*		MOVE.B	(A6)+,$00000000
*		MOVE.B	(A6)+,$00007110
*		MOVE.B	(A6)+,$FFFF8000
*		MOVE.B	(A6)+,$FFFFF110
*		MOVE.B	(A6)+,$5D22
*		MOVE.B	(A6)+,$2222
*		MOVE.B	(A6)+,$A
*		MOVE.B	(A6)+,$BBC
*		MOVE.B	(A6)+,$6000
*		MOVE.B	(A6)+,$00003456
*		MOVE.B	(A6)+,$00004020
*		MOVE.B	(A6)+,$FFFFABDC		
*
*		MOVE.B	(A7)+,$00000000
*		MOVE.B	(A7)+,$00007112
*		MOVE.B	(A7)+,$FFFF8000
*		MOVE.B	(A7)+,$FFFFF110
*		MOVE.B	(A7)+,$5D24
*		MOVE.B	(A7)+,$2222
*		MOVE.B	(A7)+,$A
*		MOVE.B	(A7)+,$BBC
*		MOVE.B	(A7)+,$6000
*		MOVE.B	(A7)+,$00003456
*		MOVE.B	(A7)+,$00004020
*		MOVE.B	(A7)+,$FFFFABDC		
************************************ End with MOVE.B (An)+ to (xxxx).W
*
************************************ Start with MOVE.B -(An) to (xxxx).W
*		MOVE.B	-(A0),$00000000
*		MOVE.B	-(A0),$00007112
*		MOVE.B	-(A0),$FFFF8000
*		MOVE.B	-(A0),$FFFFF110
*		MOVE.B	-(A0),$5D24
*		MOVE.B	-(A0),$2222
*		MOVE.B	-(A0),$22
*		MOVE.B	-(A0),$BBC0		
*		MOVE.B	-(A0),$A
*		MOVE.B	-(A0),$BBC
*		MOVE.B	-(A0),$6000
*		MOVE.B	-(A0),$00003456	
*
*		MOVE.B	-(A1),$00000000
*		MOVE.B	-(A1),$00007112
*		MOVE.B	-(A1),$FFFF8000
*		MOVE.B	-(A1),$FFFFF110
*		MOVE.B	-(A1),$5D22
*		MOVE.B	-(A1),$2222
*		MOVE.B	-(A1),$A
*		MOVE.B	-(A1),$BBC
*		MOVE.B	-(A1),$6000
*		MOVE.B	-(A1),$00003456
*		MOVE.B	-(A1),$00004020
*		MOVE.B	-(A1),$FFFFABDC	
*
*		MOVE.B	-(A2),$00000000
*		MOVE.B	-(A2),$00007112
*		MOVE.B	-(A2),$FFFF8000
*		MOVE.B	-(A2),$FFFFF110
*		MOVE.B	-(A2),$5D22
*		MOVE.B	-(A2),$2222
*		MOVE.B	-(A2),$A
*		MOVE.B	-(A2),$BBC
*		MOVE.B	-(A2),$6000
*		MOVE.B	-(A2),$00003456
*		MOVE.B	-(A2),$00004020
*		MOVE.B	-(A2),$FFFFABDC
*
*		MOVE.B	-(A3),$00000000
*		MOVE.B	-(A3),$00007112
*		MOVE.B	-(A3),$FFFF8000
*		MOVE.B	-(A3),$FFFFF110
*		MOVE.B	-(A3),$5D22
*		MOVE.B	-(A3),$2222
*		MOVE.B	-(A3),$A
*		MOVE.B	-(A3),$BBC
*		MOVE.B	-(A3),$6000
*		MOVE.B	-(A3),$00003456
*		MOVE.B	-(A3),$00004020
*		MOVE.B	-(A3),$FFFFABDC
*
*		MOVE.B	-(A4),$00000000
*		MOVE.B	-(A4),$00007112
*		MOVE.B	-(A4),$FFFF8000
*		MOVE.B	-(A4),$FFFFF110
*		MOVE.B	-(A4),$5D22
*		MOVE.B	-(A4),$2222
*		MOVE.B	-(A4),$A
*		MOVE.B	-(A4),$BBC
*		MOVE.B	-(A4),$6000
*		MOVE.B	-(A4),$00003456
*		MOVE.B	-(A4),$00004020
*		MOVE.B	-(A4),$FFFFABDC
*
*		MOVE.B	-(A5),$00000000
*		MOVE.B	-(A5),$00007112
*		MOVE.B	-(A5),$FFFF8000
*		MOVE.B	-(A5),$FFFFF110
*		MOVE.B	-(A5),$5D22
*		MOVE.B	-(A5),$2222
*		MOVE.B	-(A5),$A
*		MOVE.B	-(A5),$BBC
*		MOVE.B	-(A5),$6000
*		MOVE.B	-(A5),$00003456
*		MOVE.B	-(A5),$00004020
*		MOVE.B	-(A5),$FFFFABDC
*
*		MOVE.B	-(A6),$00000000
*		MOVE.B	-(A6),$00007112
*		MOVE.B	-(A6),$FFFF8000
*		MOVE.B	-(A6),$FFFFF110
*		MOVE.B	-(A6),$5D22
*		MOVE.B	-(A6),$2222
*		MOVE.B	-(A6),$A
*		MOVE.B	-(A6),$BBC
*		MOVE.B	-(A6),$6000
*		MOVE.B	-(A6),$00003456
*		MOVE.B	-(A6),$00004020
*		MOVE.B	-(A6),$FFFFABDC
*
*		MOVE.B	-(A7),$00000000
*		MOVE.B	-(A7),$00007112
*		MOVE.B	-(A7),$FFFF8000
*		MOVE.B	-(A7),$FFFFF110
*		MOVE.B	-(A7),$5D22
*		MOVE.B	-(A7),$2222
*		MOVE.B	-(A7),$A
*		MOVE.B	-(A7),$BBC
*		MOVE.B	-(A7),$6000
*		MOVE.B	-(A7),$00003456
*		MOVE.B	-(A7),$00004020
*		MOVE.B	-(A7),$FFFFABDC	
************************************ End with MOVE.B -(An) to (xxxx).W
*		
************************************ Start with MOVE.B (xxxx).W to (xxxx).W
*		MOVE.B $00000000,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007F00,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,$00000000
*		MOVE.B $0,$00000000
*		MOVE.B $1234,$00000000
*		MOVE.B $56,$00000000
*		MOVE.B $210,$00000000
*		MOVE.B $7774,$00000000
*		MOVE.B $A,$00000000
*
*		MOVE.B $00,$00007F0A
*		MOVE.B $0,$00007F0A
*		MOVE.B $22,$00007F0A
*		MOVE.B $420,$00007F0A
*		MOVE.B $3876,$00007F0A
*		MOVE.B $1222,$00007F0A
*		MOVE.B $12,$00007F0A
*
*		MOVE.B $00,$FFFF8000
*		MOVE.B $0,$FFFF8000
*		MOVE.B $14,$FFFF8000
*		MOVE.B $106,$FFFF8000
*		MOVE.B $5556,$FFFF8000
*		MOVE.B $2468,$FFFF8000
*		MOVE.B $0FFA,$FFFF8000
*		MOVE.B $E8,$FFFF8000
*
*		MOVE.B $00000000,$5D22		
*		MOVE.B $00007F00,$5D22			
*		MOVE.B $FFFF8000,$5D22			
*		MOVE.B $FFFFFF00,$5D22		
*		MOVE.B $00,$5D22
*		MOVE.B $0,$5D22
*		MOVE.B $14,$5D22
*		MOVE.B $106,$5D22
*		MOVE.B $5556,$5D22
*		MOVE.B $2468,$5D22
*		MOVE.B $0FFA,$5D22
*		MOVE.B $E8,$5D22
*
*		MOVE.B $00000000,$2222		
*		MOVE.B $00007F00,$2222		
*		MOVE.B $FFFF8000,$2222		
*		MOVE.B $FFFFFF00,$2222		
*		MOVE.B $00,$2222
*		MOVE.B $0,$2222
*		MOVE.B $14,$2222
*		MOVE.B $106,$2222
*		MOVE.B $5556,$2222
*		MOVE.B $2468,$2222
*		MOVE.B $0FFA,$2222
*		MOVE.B $E8,$2222	
*
*		MOVE.B $00000000,$A		
*		MOVE.B $00007F00,$A		
*		MOVE.B $FFFF8000,$A		
*		MOVE.B $FFFFFF00,$A		
*		MOVE.B $00,$A
*		MOVE.B $0,$A
*		MOVE.B $14,$A
*		MOVE.B $106,$A
*		MOVE.B $5556,$A
*		MOVE.B $2468,$A
*		MOVE.B $0FFA,$A
*		MOVE.B $E8,$A
*
*		MOVE.B $00000000,$BBC		
*		MOVE.B $00007F00,$BBC		
*		MOVE.B $FFFF8000,$BBC		
*		MOVE.B $FFFFFF00,$BBC		
*		MOVE.B $00,$BBC
*		MOVE.B $0,$BBC
*		MOVE.B $14,$BBC
*		MOVE.B $106,$BBC
*		MOVE.B $5556,$BBC
*		MOVE.B $2468,$BBC
*		MOVE.B $0FFA,$BBC
*		MOVE.B $E8,$BBC
*
*		MOVE.B $00000000,$6000		
*		MOVE.B $00007F00,$6000		
*		MOVE.B $FFFF8000,$6000		
*		MOVE.B $FFFFFF00,$6000		
*		MOVE.B $00,$6000
*		MOVE.B $0,$6000
*		MOVE.B $14,$6000
*		MOVE.B $106,$6000
*		MOVE.B $5556,$6000
*		MOVE.B $2468,$6000
*		MOVE.B $0FFA,$6000
*		MOVE.B $E8,$6000
*
*		MOVE.B $00000000,$00003456		
*		MOVE.B $00007F00,$00003456		
*		MOVE.B $FFFF8000,$00003456		
*		MOVE.B $FFFFFF00,$00003456		
*		MOVE.B $00,$00003456
*		MOVE.B $0,$00003456
*		MOVE.B $14,$00003456
*		MOVE.B $106,$00003456
*		MOVE.B $5556,$00003456
*		MOVE.B $2468,$00003456
*		MOVE.B $0FFA,$00003456
*		MOVE.B $E8,$00003456
*
*		MOVE.B $00000000,$FFFFABDC		
*		MOVE.B $00007F00,$FFFFABDC		
*		MOVE.B $FFFF8000,$FFFFABDC		
*		MOVE.B $FFFFFF00,$FFFFABDC		
*		MOVE.B $00,$FFFFABDC
*		MOVE.B $0,$FFFFABDC
*		MOVE.B $14,$FFFFABDC
*		MOVE.B $106,$FFFFABDC
*		MOVE.B $5556,$FFFFABDC
*		MOVE.B $2468,$FFFFABDC
*		MOVE.B $0FFA,$FFFFABDC
*		MOVE.B $E8,$FFFFABDC	
************************************ End with MOVE.B (xxxx).W to (xxxx).W	
*
************************************ Start with MOVE.B (xxxx).L to (xxxx).W
*		MOVE.B $00008000,$00000000		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7F00,$00000000		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,$00000000
*		MOVE.B $00009876,$00000000		
*		MOVE.B $FFEE0202,$00000000		
*		MOVE.B $12345678,$00000000
*		MOVE.B $AAAAAAAA,$00000000
*		MOVE.B $B2C3A1E4,$00000000
*		MOVE.B $77777776,$00000000
*		MOVE.B $CCCCCCCC,$00000000
*		MOVE.B $C7C77AA8,$00000000
*		MOVE.B $10101010,$00000000
*		
*		MOVE.B $00008000,$00007FA0
*		MOVE.B $FFFF7F00,$00007FA0
*		MOVE.B $00009000,$00007FA0
*		MOVE.B $00009876,$00007FA0
*		MOVE.B $FFEE0202,$00007FA0
*		MOVE.B $12345678,$00007FA0
*		MOVE.B $AAAAAAAA,$00007FA0
*		MOVE.B $B2C3A1E4,$00007FA0
*		MOVE.B $77777776,$00007FA0
*		MOVE.B $CCCCCCCC,$00007FA0
*		MOVE.B $C7C77AA8,$00007FA0
*		MOVE.B $10101010,$00007FA0
*		
*		MOVE.B $00008000,$FFFF8000
*		MOVE.B $FFFF7F00,$FFFF8000
*		MOVE.B $00009000,$FFFF8000
*		MOVE.B $00009876,$FFFF8000
*		MOVE.B $FFEE0202,$FFFF8000
*		MOVE.B $12345678,$FFFF8000
*		MOVE.B $AAAAAAAA,$FFFF8000
*		MOVE.B $B2C3A1E4,$FFFF8000
*		MOVE.B $77777776,$FFFF8000
*		MOVE.B $CCCCCCCC,$FFFF8000
*		MOVE.B $C7C77AA8,$FFFF8000
*		MOVE.B $10101010,$FFFF8000
*		
*		MOVE.B $00008000,$FFFFFF00
*		MOVE.B $FFFF7F00,$FFFFFF00
*		MOVE.B $00009000,$FFFFFF00
*		MOVE.B $00009876,$FFFFFF00
*		MOVE.B $FFEE0202,$FFFFFF00
*		MOVE.B $12345678,$FFFFFF00
*		MOVE.B $AAAAAAAA,$FFFFFF00
*		MOVE.B $B2C3A1E4,$FFFFFF00
*		MOVE.B $77777776,$FFFFFF00
*		MOVE.B $CCCCCCCC,$FFFFFF00
*		MOVE.B $C7C77AA8,$FFFFFF00
*		MOVE.B $10101010,$FFFFFF00
*
*		MOVE.B $00008000,$5D28
*		MOVE.B $FFFF7F00,$5D28
*		MOVE.B $00009000,$5D28
*		MOVE.B $00009876,$5D28
*		MOVE.B $FFEE0202,$5D28
*		MOVE.B $12345678,$5D20
*		MOVE.B $AAAAAAAA,$5D20
*		MOVE.B $B2C3A1E4,$5D20
*		MOVE.B $77777776,$5D20
*		MOVE.B $CCCCCCCC,$5D20
*		MOVE.B $C7C77AA8,$5D20
*		MOVE.B $10101010,$5D20
*
*		MOVE.B $00008000,$2222
*		MOVE.B $FFFF7F00,$2222
*		MOVE.B $00009000,$2222
*		MOVE.B $00009876,$2222
*		MOVE.B $FFEE0202,$2222
*		MOVE.B $12345678,$2222
*		MOVE.B $AAAAAAAA,$2222
*		MOVE.B $B2C3A1E4,$2222
*		MOVE.B $77777776,$2222
*		MOVE.B $CCCCCCCC,$2222
*		MOVE.B $C7C77AA8,$2222
*		MOVE.B $10101010,$2222	
*
*		MOVE.B $00008000,$A
*		MOVE.B $FFFF7F00,$A
*		MOVE.B $00009000,$A
*		MOVE.B $00009876,$A
*		MOVE.B $FFEE0202,$A
*		MOVE.B $12345678,$A
*		MOVE.B $AAAAAAAA,$A
*		MOVE.B $B2C3A1E4,$A
*		MOVE.B $77777776,$A
*		MOVE.B $CCCCCCCC,$A
*		MOVE.B $C7C77AA8,$A
*		MOVE.B $10101010,$A
*
*		MOVE.B $00008000,$BBC
*		MOVE.B $FFFF7F00,$BBC
*		MOVE.B $00009000,$BBC
*		MOVE.B $00009876,$BBC
*		MOVE.B $FFEE0202,$BBC
*		MOVE.B $12345678,$BBC
*		MOVE.B $AAAAAAAA,$BBC
*		MOVE.B $B2C3A1E4,$BBC
*		MOVE.B $77777776,$BBC
*		MOVE.B $CCCCCCCC,$BBC
*		MOVE.B $C7C77AA8,$BBC
*		MOVE.B $10101010,$BBC
*		
*		MOVE.B $00008000,$6000
*		MOVE.B $FFFF7F00,$6000
*		MOVE.B $00009000,$6000
*		MOVE.B $00009876,$6000
*		MOVE.B $FFEE0202,$6000
*		MOVE.B $12345678,$6000
*		MOVE.B $AAAAAAAA,$6000
*		MOVE.B $B2C3A1E4,$6000
*		MOVE.B $77777776,$6000
*		MOVE.B $CCCCCCCC,$6000
*		MOVE.B $C7C77AA8,$6000
*		MOVE.B $10101010,$6000
*		
*		MOVE.B $00008000,$00003456
*		MOVE.B $FFFF7F00,$00003456
*		MOVE.B $00009000,$00003456
*		MOVE.B $00009876,$00003456
*		MOVE.B $FFEE0202,$00003456
*		MOVE.B $12345678,$00003456
*		MOVE.B $AAAAAAAA,$00003456
*		MOVE.B $B2C3A1E4,$00003456
*		MOVE.B $77777778,$00003456
*		MOVE.B $CCCCCCCC,$00003456
*		MOVE.B $C7C77AA8,$00003456
*		MOVE.B $10101010,$00003456
*
*		MOVE.B $00008000,$FFFFABDC	
*		MOVE.B $FFFF7F00,$FFFFABDC	
*		MOVE.B $00009000,$FFFFABDC
*		MOVE.B $00009876,$FFFFABDC	
*		MOVE.B $FFEE0202,$FFFFABDC	
*		MOVE.B $12345678,$FFFFABDC
*		MOVE.B $AAAAAAAA,$FFFFABDC
*		MOVE.B $B2C3A1E4,$FFFFABDC
*		MOVE.B $77777776,$FFFFABDC
*		MOVE.B $CCCCCCCC,$FFFFABDC
*		MOVE.B $C7C77AA8,$FFFFABDC
*		MOVE.B $10101010,$FFFFABDC
************************************ End with MOVE.B (xxxx).L to (xxxx).W	
*
************************************ Start with MOVE.B <data> to (xxxx).W
*		MOVE.B #$0080,$00000000		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to <xxxx>.W. 
*		MOVE.B #$80,$00000000
*		MOVE.B #$00FF,$00000000
*		MOVE.B #$11,$00000000
*		MOVE.B #$12,$00000000
*		MOVE.B #$AA,$00000000
*		MOVE.B #$B3,$00000000
*		MOVE.B #$C1,$00000000
*		MOVE.B #$CC,$00000000
*		MOVE.B #$98,$00000000
*		MOVE.B #$FA,$00000000
*		MOVE.B #$AF,$00000000
*		MOVE.B #$A2,$00000000
*		MOVE.B #$D8,$00000000
*		MOVE.B #$55,$00000000
*		MOVE.B #$3C,$00000000
*		MOVE.B #$EF,$00000000
*		MOVE.B #$0092,$00000000
*		MOVE.B #$00BB,$00000000
*
*		MOVE.B #$0080,$00007F00		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to <xxxx>.W. 
*		MOVE.B #$80,$00007F00
*		MOVE.B #$00FF,$00007F00
*		MOVE.B #$11,$00007F00
*		MOVE.B #$12,$00007F00
*		MOVE.B #$AA,$00007F00
*		MOVE.B #$B3,$00007F00
*		MOVE.B #$C1,$00007F00
*		MOVE.B #$CC,$00007F00
*		MOVE.B #$98,$00007F00
*		MOVE.B #$FA,$00007F00
*		MOVE.B #$AF,$00007F00
*		MOVE.B #$A2,$00007F00
*		MOVE.B #$D8,$00007F00
*		MOVE.B #$55,$00007F00
*		MOVE.B #$3C,$00007F00
*		MOVE.B #$EF,$00007F00
*		MOVE.B #$0092,$00007F00
*		MOVE.B #$00BB,$00007F00
*		
*		MOVE.B #$0080,$FFFF8000 
*		MOVE.B #$80,$FFFF8000 
*		MOVE.B #$00FF,$FFFF8000 
*		MOVE.B #$11,$FFFF8000 
*		MOVE.B #$12,$FFFF8000 
*		MOVE.B #$AA,$FFFF8000 
*		MOVE.B #$B3,$FFFF8000 
*		MOVE.B #$C1,$FFFF8000 
*		MOVE.B #$CC,$FFFF8000 
*		MOVE.B #$98,$FFFF8000 
*		MOVE.B #$FA,$FFFF8000 
*		MOVE.B #$AF,$FFFF8000 
*		MOVE.B #$A2,$FFFF8000 
*		MOVE.B #$D8,$FFFF8000 
*		MOVE.B #$55,$FFFF8000 
*		MOVE.B #$3C,$FFFF8000 
*		MOVE.B #$EF,$FFFF8000 
*		MOVE.B #$0092,$FFFF8000 
*		MOVE.B #$00BB,$FFFF8000
*
*		MOVE.B #$0080,$FFFFFF00
*		MOVE.B #$80,$FFFFFF00
*		MOVE.B #$00FF,$FFFFFF00
*		MOVE.B #$11,$FFFFFF00
*		MOVE.B #$12,$FFFFFF00
*		MOVE.B #$AA,$FFFFFF00
*		MOVE.B #$B3,$FFFFFF00
*		MOVE.B #$C1,$FFFFFF00
*		MOVE.B #$CC,$FFFFFF00
*		MOVE.B #$98,$FFFFFF00
*		MOVE.B #$FA,$FFFFFF00
*		MOVE.B #$AF,$FFFFFF00
*		MOVE.B #$A2,$FFFFFF00
*		MOVE.B #$D8,$FFFFFF00
*		MOVE.B #$55,$FFFFFF00
*		MOVE.B #$3C,$FFFFFF00
*		MOVE.B #$EF,$FFFFFF00
*		MOVE.B #$0092,$FFFFFF00
*		MOVE.B #$00BB,$FFFFFF00
*
*		MOVE.B #$0080,$12F4
*		MOVE.B #$80,$12F4
*		MOVE.B #$00FF,$12F4
*		MOVE.B #$11,$12F4
*		MOVE.B #$12,$12F4
*		MOVE.B #$AA,$12F4
*		MOVE.B #$B3,$12F4
*		MOVE.B #$C1,$12F4
*		MOVE.B #$CC,$12F4
*		MOVE.B #$98,$12F4
*		MOVE.B #$FA,$12F4
*		MOVE.B #$AF,$12F4
*		MOVE.B #$A2,$12F4
*		MOVE.B #$D8,$12F4
*		MOVE.B #$55,$12F4
*		MOVE.B #$3C,$12F4
*		MOVE.B #$EF,$12F4
*		MOVE.B #$0092,$12F4
*		MOVE.B #$00BB,$12F4
*		
*		MOVE.B #$0080,$772
*		MOVE.B #$80,$772
*		MOVE.B #$00FF,$772
*		MOVE.B #$11,$772
*		MOVE.B #$12,$772
*		MOVE.B #$AA,$772
*		MOVE.B #$B3,$772
*		MOVE.B #$C1,$772
*		MOVE.B #$CC,$772
*		MOVE.B #$98,$772
*		MOVE.B #$FA,$772
*		MOVE.B #$AF,$772
*		MOVE.B #$A2,$772
*		MOVE.B #$D8,$772
*		MOVE.B #$55,$772
*		MOVE.B #$3C,$772
*		MOVE.B #$EF,$772
*		MOVE.B #$0092,$772
*		MOVE.B #$00BB,$772
*
*		MOVE.B #$0080,$2AAA
*		MOVE.B #$80,$2AAA
*		MOVE.B #$00FF,$2AAA
*		MOVE.B #$11,$2AAA
*		MOVE.B #$12,$2AAA
*		MOVE.B #$AA,$2AAA
*		MOVE.B #$B3,$2AAA
*		MOVE.B #$C1,$2AAA
*		MOVE.B #$CC,$2AAA
*		MOVE.B #$98,$2AAA
*		MOVE.B #$FA,$2AAA
*		MOVE.B #$AF,$2AAA
*		MOVE.B #$A2,$2AAA
*		MOVE.B #$D8,$2AAA
*		MOVE.B #$55,$2AAA
*		MOVE.B #$3C,$2AAA
*		MOVE.B #$EF,$2AAA
*		MOVE.B #$0092,$2AAA
*		MOVE.B #$00BB,$2AAA
*
*		MOVE.B #$0080,$7000
*		MOVE.B #$80,$7000
*		MOVE.B #$00FF,$7000
*		MOVE.B #$11,$7000
*		MOVE.B #$12,$7000
*		MOVE.B #$AA,$7000
*		MOVE.B #$B3,$7000
*		MOVE.B #$C1,$7000
*		MOVE.B #$CC,$7000
*		MOVE.B #$98,$7000
*		MOVE.B #$FA,$7000
*		MOVE.B #$AF,$7000
*		MOVE.B #$A2,$7000
*		MOVE.B #$D8,$7000
*		MOVE.B #$55,$7000
*		MOVE.B #$3C,$7000
*		MOVE.B #$EF,$7000
*		MOVE.B #$0092,$7000
*		MOVE.B #$00BB,$7000
*
*		MOVE.B #$0080,$FFFF9000
*		MOVE.B #$80,$FFFF9000
*		MOVE.B #$00FF,$FFFF9000
*		MOVE.B #$11,$FFFF9000
*		MOVE.B #$12,$FFFF9000
*		MOVE.B #$AA,$FFFF9000
*		MOVE.B #$B3,$FFFF9000
*		MOVE.B #$C1,$FFFF9000
*		MOVE.B #$CC,$FFFF9000
*		MOVE.B #$98,$FFFF9000
*		MOVE.B #$FA,$FFFF9000
*		MOVE.B #$AF,$FFFF9000
*		MOVE.B #$A2,$FFFF9000
*		MOVE.B #$D8,$FFFF9000
*		MOVE.B #$55,$FFFF900
*		MOVE.B #$3C,$FFFF9000
*		MOVE.B #$EF,$FFFF9000
*		MOVE.B #$0092,$FFFF9000
*		MOVE.B #$00BB,$FFFF9000
*
*		MOVE.B #$0080,$FFFFABDC
*		MOVE.B #$80,$FFFFABDC
*		MOVE.B #$00FF,$FFFFABDC
*		MOVE.B #$11,$FFFFABDC
*		MOVE.B #$12,$FFFFABDC
*		MOVE.B #$AA,$FFFFABDC
*		MOVE.B #$B3,$FFFFABDC
*		MOVE.B #$C1,$FFFFABDC
*		MOVE.B #$CC,$FFFFABDC
*		MOVE.B #$98,$FFFFABDC
*		MOVE.B #$FA,$FFFFABDC
*		MOVE.B #$AF,$FFFFABDC
*		MOVE.B #$A2,$FFFFABDC
*		MOVE.B #$D8,$FFFFABDC
*		MOVE.B #$55,$FFFFABDC
*		MOVE.B #$3C,$FFFFABDC
*		MOVE.B #$EF,$FFFFABDC
*		MOVE.B #$0092,$FFFFABDC
*		MOVE.B #$00BB,$FFFFABDC
************************************ End with MOVE.B #<data> to (xxxx).W	
*		
*		*** Destination (xxxx).L
************************************ Start with MOVE.B Dn to (xxxx).L
*		MOVE.B	D0,$000A2948
*		MOVE.B	D0,$00557FFA
*		MOVE.B	D1,$00009920
*		MOVE.B	D1,$0000EF12
*		MOVE.B	D2,$00EE8000
*		MOVE.B	D2,$0001FFF2
*		MOVE.B	D3,$00DA5D24
*		MOVE.B	D3,$23002222
*		MOVE.B	D4,$AAAAAAA6
*		MOVE.B	D4,$12345678
*		MOVE.B	D5,$55678BBC
*		MOVE.B	D5,$FEDCBA98
*		MOVE.B	D6,$65433456
*		MOVE.B	D6,$0009ABDC
*		MOVE.B	D7,$FFFF3998
*		MOVE.B	D7,$0723BBAA
************************************ End with MOVE.B Dn to (xxxx).L
*		
************************************ Start with MOVE.B An to (xxxx).L
*		*MOVE.B An,<xxxx>.L is not possible. MOVE.W AND MOVE.L ONLY
************************************ End with MOVE.B An to (xxxx).L
*		
************************************ Start with MOVE.B (An) to (xxxx).L
*		MOVE.B	(A0),$000A2948
*		MOVE.B	(A0),$00557FFA
*		MOVE.B	(A1),$00009920
*		MOVE.B	(A1),$0000EF12
*		MOVE.B	(A2),$00EE8000
*		MOVE.B	(A2),$0001FFF2
*		MOVE.B	(A3),$00DA5D24
*		MOVE.B	(A3),$23002222
*		MOVE.B	(A4),$AAAAAAA6
*		MOVE.B	(A4),$12345678
*		MOVE.B	(A5),$55678BBC
*		MOVE.B	(A5),$FEDCBA98
*		MOVE.B	(A6),$65433456
*		MOVE.B	(A6),$0009ABDC
*		MOVE.B	(A7),$FFFF3998
*		MOVE.B	(A7),$0723BBAA
************************************ End with MOVE.B (An) to (xxxx).L
*		
************************************ Start with MOVE.B (An)+ to (xxxx).L
*		MOVE.B	(A0)+,$000A2948
*		MOVE.B	(A0)+,$00557FFA
*		MOVE.B	(A1)+,$00009920
*		MOVE.B	(A1)+,$0000EF12
*		MOVE.B	(A2)+,$00EE8000
*		MOVE.B	(A2)+,$0001FFF2
*		MOVE.B	(A3)+,$00DA5D24
*		MOVE.B	(A3)+,$23002222
*		MOVE.B	(A4)+,$AAAAAAA6
*		MOVE.B	(A4)+,$12345678
*		MOVE.B	(A5)+,$55678BBC
*		MOVE.B	(A5)+,$FEDCBA98
*		MOVE.B	(A6)+,$65433456
*		MOVE.B	(A6)+,$0009ABDC
*		MOVE.B	(A7)+,$FFFF3998
*		MOVE.B	(A7)+,$0723BBAA	
************************************ End with MOVE.B (An)+ to (xxxx).L
*
************************************ Start with MOVE.B -(An) to (xxxx).L
*		MOVE.B	-(A0),$000A2948
*		MOVE.B	-(A0),$00557FFA
*		MOVE.B	-(A1),$00009920
*		MOVE.B	-(A1),$0000EF12
*		MOVE.B	-(A2),$00EE8000
*		MOVE.B	-(A2),$0001FFF2
*		MOVE.B	-(A3),$00DA5D24
*		MOVE.B	-(A3),$23002222
*		MOVE.B	-(A4),$AAAAAAA6
*		MOVE.B	-(A4),$12345678
*		MOVE.B	-(A5),$55678BBC
*		MOVE.B	-(A5),$FEDCBA98
*		MOVE.B	-(A6),$65433456
*		MOVE.B	-(A6),$0009ABDC
*		MOVE.B	-(A7),$FFFF3998
*		MOVE.B	-(A7),$0723BBAA
************************************ End with MOVE.B -(An) to (xxxx).L
*		
************************************ Start with MOVE.B (xxxx).W to (xxxx).L
*		MOVE.B $00000000,$000A2940		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00007F00,$00557FFA		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFF8000,$00009928		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $FFFFFF00,$0000EF12		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,$00EE8000
*		MOVE.B $0,$0001FFF6
*		MOVE.B $1234,$00DA5D24
*		MOVE.B $56,$23002222
*		MOVE.B $218,$AAAAAAA2
*		MOVE.B $7776,$12345678
*		MOVE.B $A,$55678BBC
*		MOVE.B $00002344,$FEDCBA98
*		MOVE.B $00001112,$65433456
*		MOVE.B $FFFFA340,$0009ABDC
*		MOVE.B $500,$FFFF3990
*		MOVE.B $FFFFBBBA,$0723BBAA		
************************************ End with MOVE.B (xxxx).W to (xxxx).L	
*
************************************ Start with MOVE.B (xxxx).L to (xxxx).L
*		MOVE.B $00008000,$000A2940		*00008000 is lower bound for 32-bit address
*		MOVE.B $FFFF7F00,$00557FFA		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.B $00009000,$00009928
*		MOVE.B $00009876,$0000EF12		
*		MOVE.B $FFEE0202,$00EE8000		
*		MOVE.B $12345678,$0001FFF6
*		MOVE.B $AAAAAAAA,$00DA5D24
*		MOVE.B $B2C3A1E0,$23002222
*		MOVE.B $7777777A,$AAAAAAA2
*		MOVE.B $CCCCCCCC,$12345678
*		MOVE.B $C7C77AA8,$55678BBC
*		MOVE.B $10101010,$FEDCBA98
*		MOVE.B $00CA1116,$65433456
*		MOVE.B $FFFF2114,$0009ABDC
*		MOVE.B $05007654,$FFFF3990
*		MOVE.B $00EFEFE2,$0723BBAA
*		MOVE.B $0000ABC0,$01112222	
************************************ End with MOVE.B (xxxx).L to (xxxx).L	
*
************************************ Start with MOVE.B <data> to (xxxx).W
*		MOVE.B #$0080,$000A2960		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (xxxx).W. 
*		MOVE.B #$0077,$000A2970
*		MOVE.B #$80,$00557EE0
*		MOVE.B #$00FF,$00557EFA
*		MOVE.B #$11,$00009995
*		MOVE.B #$12,$00EE8010
*		MOVE.B #$AA,$00EE8020
*		MOVE.B #$B3,$00EE8000
*		MOVE.B #$C1,$01112232
*		MOVE.B #$CC,$01112242
*		MOVE.B #$98,$AAAAAAB8
*		MOVE.B #$FA,$AAAAAAC6
*		MOVE.B #$AF,$AAAAAAD4
*		MOVE.B #$A2,$AAAAAAE2
*		MOVE.B #$D8,$FFFF4000
*		MOVE.B #$55,$FFFF4010
*		MOVE.B #$3C,$FFFF4020
*		MOVE.B #$EF,$0723BBAA
*		MOVE.B #$0092,$0723BBBA
*		MOVE.B #$00BB,$0723BBCA
************************************ End with MOVE.B #<data> to (xxxx).L
*		
*		
*		*JSR CLEAR_REGISTER
*		
*		*** MOVE.W
*		
*		*** Destination Dn ***	
************************************ Start with MOVE.W Dn to Dn
*		MOVE.W	D0,D0
*		MOVE.W	D0,D1
*		MOVE.W	D0,D2
*		MOVE.W	D0,D3
*		MOVE.W	D0,D4
*		MOVE.W	D0,D5
*		MOVE.W	D0,D6
*		MOVE.W	D0,D7
*		
*		MOVE.W	D1,D0
*		MOVE.W	D1,D1
*		MOVE.W	D1,D2
*		MOVE.W	D1,D3
*		MOVE.W	D1,D4
*		MOVE.W	D1,D5
*		MOVE.W	D1,D6
*		MOVE.W	D1,D7
*		
*		MOVE.W	D2,D0
*		MOVE.W	D2,D1
*		MOVE.W	D2,D2
*		MOVE.W	D2,D3
*		MOVE.W	D2,D4
*		MOVE.W	D2,D5
*		MOVE.W	D2,D6
*		MOVE.W	D2,D7
*		
*		MOVE.W	D3,D0
*		MOVE.W	D3,D1
*		MOVE.W	D3,D2
*		MOVE.W	D3,D3
*		MOVE.W	D3,D4
*		MOVE.W	D3,D5
*		MOVE.W	D3,D6
*		MOVE.W	D3,D7
*		
*		MOVE.W	D4,D0
*		MOVE.W	D4,D1
*		MOVE.W	D4,D2
*		MOVE.W	D4,D3
*		MOVE.W	D4,D4
*		MOVE.W	D4,D5
*		MOVE.W	D4,D6
*		MOVE.W	D4,D7		
*
*		MOVE.W	D5,D0
*		MOVE.W	D5,D1
*		MOVE.W	D5,D2
*		MOVE.W	D5,D3
*		MOVE.W	D5,D4
*		MOVE.W	D5,D5
*		MOVE.W	D5,D6
*		MOVE.W	D5,D7		
*
*		MOVE.W	D6,D0
*		MOVE.W	D6,D1
*		MOVE.W	D6,D2
*		MOVE.W	D6,D3
*		MOVE.W	D6,D4
*		MOVE.W	D6,D5
*		MOVE.W	D6,D6
*		MOVE.W	D6,D7
*		
*		MOVE.W	D7,D0
*		MOVE.W	D7,D1
*		MOVE.W	D7,D2
*		MOVE.W	D7,D3
*		MOVE.W	D7,D4
*		MOVE.W	D7,D5
*		MOVE.W	D7,D6
*		MOVE.W	D7,D7
************************************ End with MOVE.W Dn to Dn
*		
************************************ Start with MOVE.W An to Dn
*		MOVE.W	A0,D0
*		MOVE.W	A0,D1
*		MOVE.W	A0,D2
*		MOVE.W	A0,D3
*		MOVE.W	A0,D4
*		MOVE.W	A0,D5
*		MOVE.W	A0,D6
*		MOVE.W	A0,D7
*		
*		MOVE.W	A1,D0
*		MOVE.W	A1,D1
*		MOVE.W	A1,D2
*		MOVE.W	A1,D3
*		MOVE.W	A1,D4
*		MOVE.W	A1,D5
*		MOVE.W	A1,D6
*		MOVE.W	A1,D7
*		
*		MOVE.W	A2,D0
*		MOVE.W	A2,D1
*		MOVE.W	A2,D2
*		MOVE.W	A2,D3
*		MOVE.W	A2,D4
*		MOVE.W	A2,D5
*		MOVE.W	A2,D6
*		MOVE.W	A2,D7
*		
*		MOVE.W	A3,D0
*		MOVE.W	A3,D1
*		MOVE.W	A3,D2
*		MOVE.W	A3,D3
*		MOVE.W	A3,D4
*		MOVE.W	A3,D5
*		MOVE.W	A3,D6
*		MOVE.W	A3,D7
*		
*		MOVE.W	A4,D0
*		MOVE.W	A4,D1
*		MOVE.W	A4,D2
*		MOVE.W	A4,D3
*		MOVE.W	A4,D4
*		MOVE.W	A4,D5
*		MOVE.W	A4,D6
*		MOVE.W	A4,D7		
*
*		MOVE.W	A5,D0
*		MOVE.W	A5,D1
*		MOVE.W	A5,D2
*		MOVE.W	A5,D3
*		MOVE.W	A5,D4
*		MOVE.W	A5,D5
*		MOVE.W	A5,D6
*		MOVE.W	A5,D7		
*
*		MOVE.W	A6,D0
*		MOVE.W	A6,D1
*		MOVE.W	A6,D2
*		MOVE.W	A6,D3
*		MOVE.W	A6,D4
*		MOVE.W	A6,D5
*		MOVE.W	A6,D6
*		MOVE.W	A6,D7
*		
*		MOVE.W	A7,D0
*		MOVE.W	A7,D1
*		MOVE.W	A7,D2
*		MOVE.W	A7,D3
*		MOVE.W	A7,D4
*		MOVE.W	A7,D5
*		MOVE.W	A7,D6
*		MOVE.W	A7,D7
************************************ End with MOVE.W An to Dn
*
************************************ Start with MOVE.W (An) to Dn
*		MOVE.W	(A0),D0
*		MOVE.W	(A0),D1
*		MOVE.W	(A0),D2
*		MOVE.W	(A0),D3
*		MOVE.W	(A0),D4
*		MOVE.W	(A0),D5
*		MOVE.W	(A0),D6
*		MOVE.W	(A0),D7
*		
*		MOVE.W	(A1),D0
*		MOVE.W	(A1),D1
*		MOVE.W	(A1),D2
*		MOVE.W	(A1),D3
*		MOVE.W	(A1),D4
*		MOVE.W	(A1),D5
*		MOVE.W	(A1),D6
*		MOVE.W	(A1),D7
*		
*		MOVE.W	(A2),D0
*		MOVE.W	(A2),D1
*		MOVE.W	(A2),D2
*		MOVE.W	(A2),D3
*		MOVE.W	(A2),D4
*		MOVE.W	(A2),D5
*		MOVE.W	(A2),D6
*		MOVE.W	(A2),D7
*		
*		MOVE.W	(A3),D0
*		MOVE.W	(A3),D1
*		MOVE.W	(A3),D2
*		MOVE.W	(A3),D3
*		MOVE.W	(A3),D4
*		MOVE.W	(A3),D5
*		MOVE.W	(A3),D6
*		MOVE.W	(A3),D7
*		
*		MOVE.W	(A4),D0
*		MOVE.W	(A4),D1
*		MOVE.W	(A4),D2
*		MOVE.W	(A4),D3
*		MOVE.W	(A4),D4
*		MOVE.W	(A4),D5
*		MOVE.W	(A4),D6
*		MOVE.W	(A4),D7		
*
*		MOVE.W	(A5),D0
*		MOVE.W	(A5),D1
*		MOVE.W	(A5),D2
*		MOVE.W	(A5),D3
*		MOVE.W	(A5),D4
*		MOVE.W	(A5),D5
*		MOVE.W	(A5),D6
*		MOVE.W	(A5),D7		
*
*		MOVE.W	(A6),D0
*		MOVE.W	(A6),D1
*		MOVE.W	(A6),D2
*		MOVE.W	(A6),D3
*		MOVE.W	(A6),D4
*		MOVE.W	(A6),D5
*		MOVE.W	(A6),D6
*		MOVE.W	(A6),D7
*		
*		MOVE.W	(A7),D0
*		MOVE.W	(A7),D1
*		MOVE.W	(A7),D2
*		MOVE.W	(A7),D3
*		MOVE.W	(A7),D4
*		MOVE.W	(A7),D5
*		MOVE.W	(A7),D6
*		MOVE.W	(A7),D7
************************************ End with MOVE.W (An) to Dn
*		
************************************ Start with MOVE.W (An)+ to Dn
*		MOVE.W	(A0)+,D0
*		MOVE.W	(A0)+,D1
*		MOVE.W	(A0)+,D2
*		MOVE.W	(A0)+,D3
*		MOVE.W	(A0)+,D4
*		MOVE.W	(A0)+,D5
*		MOVE.W	(A0)+,D6
*		MOVE.W	(A0)+,D7
*
*		MOVE.W	(A1)+,D0
*		MOVE.W	(A1)+,D1
*		MOVE.W	(A1)+,D2
*		MOVE.W	(A1)+,D3
*		MOVE.W	(A1)+,D4
*		MOVE.W	(A1)+,D5
*		MOVE.W	(A1)+,D6
*		MOVE.W	(A1)+,D7
*
*		MOVE.W	(A2)+,D0
*		MOVE.W	(A2)+,D1
*		MOVE.W	(A2)+,D2
*		MOVE.W	(A2)+,D3
*		MOVE.W	(A2)+,D4
*		MOVE.W	(A2)+,D5
*		MOVE.W	(A2)+,D6
*		MOVE.W	(A2)+,D7
*
*		MOVE.W	(A3)+,D0
*		MOVE.W	(A3)+,D1
*		MOVE.W	(A3)+,D2
*		MOVE.W	(A3)+,D3
*		MOVE.W	(A3)+,D4
*		MOVE.W	(A3)+,D5
*		MOVE.W	(A3)+,D6
*		MOVE.W	(A3)+,D7
*
*		MOVE.W	(A4)+,D0
*		MOVE.W	(A4)+,D1
*		MOVE.W	(A4)+,D2
*		MOVE.W	(A4)+,D3
*		MOVE.W	(A4)+,D4
*		MOVE.W	(A4)+,D5
*		MOVE.W	(A4)+,D6
*		MOVE.W	(A4)+,D7
*
*		MOVE.W	(A5)+,D0
*		MOVE.W	(A5)+,D1
*		MOVE.W	(A5)+,D2
*		MOVE.W	(A5)+,D3
*		MOVE.W	(A5)+,D4
*		MOVE.W	(A5)+,D5
*		MOVE.W	(A5)+,D6
*		MOVE.W	(A5)+,D7
*
*		MOVE.W	(A6)+,D0
*		MOVE.W	(A6)+,D1
*		MOVE.W	(A6)+,D2
*		MOVE.W	(A6)+,D3
*		MOVE.W	(A6)+,D4
*		MOVE.W	(A6)+,D5
*		MOVE.W	(A6)+,D6
*		MOVE.W	(A6)+,D7
*
*		MOVE.W	(A7)+,D0
*		MOVE.W	(A7)+,D1
*		MOVE.W	(A7)+,D2
*		MOVE.W	(A7)+,D3
*		MOVE.W	(A7)+,D4
*		MOVE.W	(A7)+,D5
*		MOVE.W	(A7)+,D6
*		MOVE.W	(A7)+,D7
************************************ End with MOVE.W (An)+ to Dn
*
************************************ Start with MOVE.W -(An) to Dn
*		MOVE.W	-(A0),D0
*		MOVE.W	-(A0),D1
*		MOVE.W	-(A0),D2
*		MOVE.W	-(A0),D3
*		MOVE.W	-(A0),D4
*		MOVE.W	-(A0),D5
*		MOVE.W	-(A0),D6
*		MOVE.W	-(A0),D7
*
*		MOVE.W	-(A1),D0
*		MOVE.W	-(A1),D1
*		MOVE.W	-(A1),D2
*		MOVE.W	-(A1),D3
*		MOVE.W	-(A1),D4
*		MOVE.W	-(A1),D5
*		MOVE.W	-(A1),D6
*		MOVE.W	-(A1),D7
*
*		MOVE.W	-(A2),D0
*		MOVE.W	-(A2),D1
*		MOVE.W	-(A2),D2
*		MOVE.W	-(A2),D3
*		MOVE.W	-(A2),D4
*		MOVE.W	-(A2),D5
*		MOVE.W	-(A2),D6
*		MOVE.W	-(A2),D7
*
*		MOVE.W	-(A3),D0
*		MOVE.W	-(A3),D1
*		MOVE.W	-(A3),D2
*		MOVE.W	-(A3),D3
*		MOVE.W	-(A3),D4
*		MOVE.W	-(A3),D5
*		MOVE.W	-(A3),D6
*		MOVE.W	-(A3),D7
*
*		MOVE.W	-(A4),D0
*		MOVE.W	-(A4),D1
*		MOVE.W	-(A4),D2
*		MOVE.W	-(A4),D3
*		MOVE.W	-(A4),D4
*		MOVE.W	-(A4),D5
*		MOVE.W	-(A4),D6
*		MOVE.W	-(A4),D7
*
*		MOVE.W	-(A5),D0
*		MOVE.W	-(A5),D1
*		MOVE.W	-(A5),D2
*		MOVE.W	-(A5),D3
*		MOVE.W	-(A5),D4
*		MOVE.W	-(A5),D5
*		MOVE.W	-(A5),D6
*		MOVE.W	-(A5),D7
*
*		MOVE.W	-(A6),D0
*		MOVE.W	-(A6),D1
*		MOVE.W	-(A6),D2
*		MOVE.W	-(A6),D3
*		MOVE.W	-(A6),D4
*		MOVE.W	-(A6),D5
*		MOVE.W	-(A6),D6
*		MOVE.W	-(A6),D7
*
*		MOVE.W	-(A7),D0
*		MOVE.W	-(A7),D1
*		MOVE.W	-(A7),D2
*		MOVE.W	-(A7),D3
*		MOVE.W	-(A7),D4
*		MOVE.W	-(A7),D5
*		MOVE.W	-(A7),D6
*		MOVE.W	-(A7),D7
************************************ End with MOVE.W -(An) to Dn
*
************************************ Start with MOVE.W (xxxx).W to Dn
*		MOVE.W	$00008000,D0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,D0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFF8000,D0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFFFF00,D0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00,D0
*		MOVE.W	$0,D0
*		MOVE.W	$1234,D0
*		MOVE.W	$56,D0
*		MOVE.W	$212,D0
*		MOVE.W	$7770,D0
*		MOVE.W	$A,D0
*
*		MOVE.W	$00000000,D4		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,D4		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFF8000,D4		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFFFF00,D4		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00,D4
*		MOVE.W	$0,D4
*		MOVE.W	$22,D4
*		MOVE.W	$420,D4
*		MOVE.W	$3876,D4
*		MOVE.W	$1222,D4
*		MOVE.W	$12,D4
*
*		MOVE.W	$00000000,D7		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,D7		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFF8000,D7		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFFFF00,D7		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00,D7
*		MOVE.W	$0,D7
*		MOVE.W	$12,D7
*		MOVE.W	$106,D7
*		MOVE.W	$5554,D7
*		MOVE.W	$2466,D7
*		MOVE.W	$0FF8,D7
*		MOVE.W	$E8,D7
************************************ End with MOVE.W (xxxx).W to Dn	
*
************************************ Start with MOVE.W (xxxx).L to Dn
*		MOVE.W $00008000,D0		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,D0		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,D0
*		MOVE.W $00009876,D0		
*		MOVE.W $FFEE0202,D0		
*		MOVE.W $12345678,D0
*		
*		MOVE.W $AAAAAAAA,D1
*		MOVE.W $B2C3A1E4,D1
*		MOVE.W $77777772,D1
*		MOVE.W $CCCCCCCC,D1
*		MOVE.W $C7C77AA0,D1
*		MOVE.W $10101010,D1
*
*		MOVE.W $00008000,D2		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,D2		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,D2
*		MOVE.W $00009876,D2		
*		MOVE.W $FFEE0202,D2		
*		MOVE.W $12345678,D2
*		
*		MOVE.W $AAAAAAAA,D3
*		MOVE.W $B2C3A1E4,D3
*		MOVE.W $77777772,D3
*		MOVE.W $CCCCCCCC,D3
*		MOVE.W $C7C77AA0,D3
*		MOVE.W $10101010,D3
*
*		MOVE.W $00008000,D4		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,D4		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,D4
*		MOVE.W $00009876,D4		
*		MOVE.W $FFEE0202,D4		
*		MOVE.W $12345678,D4
*		
*		MOVE.W $AAAAAAAA,D5
*		MOVE.W $B2C3A1E4,D5
*		MOVE.W $77777772,D5
*		MOVE.W $CCCCCCCC,D5
*		MOVE.W $C7C77AA0,D5
*		MOVE.W $10101010,D5
*
*		MOVE.W $00008000,D6		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,D6		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,D6
*		MOVE.W $00009876,D6		
*		MOVE.W $FFEE0202,D6		
*		MOVE.W $12345678,D6
*		
*		MOVE.W $AAAAAAAA,D7
*		MOVE.W $B2C3A1E4,D7
*		MOVE.W $77777772,D7
*		MOVE.W $CCCCCCCC,D7
*		MOVE.W $C7C77AA0,D7
*		MOVE.W $10101010,D7
************************************ End with MOVE.W (xxxx).L to Dn	
*
************************************ Start with MOVE.W #<data> to Dn
*		MOVE.W #$0080,D0	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn. 
*		MOVE.W #$00FF,D0
*		MOVE.W #$0111,D0
*		MOVE.W #$1111,D0
*		MOVE.W #$8000,D0
*		MOVE.W #$A111,D0
*		MOVE.W #$7F7F,D0
*		MOVE.W #$9000,D0
*		MOVE.W #$D7D6,D0
*		MOVE.W #$FFEE,D0
*		MOVE.W #$1234,D0
*		MOVE.W #$AAAA,D0
*		MOVE.W #$B2C3,D0
*		MOVE.W #$7777,D0
*		MOVE.W #$CCCC,D0
*		MOVE.W #$3AAC,D0
*		MOVE.W #$F3A2,D0
*		MOVE.W #$FFFF,D0
*		
*		MOVE.W #$0080,D2	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn. 
*		MOVE.W #$00FF,D2
*		MOVE.W #$0111,D2
*		MOVE.W #$1111,D2
*		MOVE.W #$8000,D2
*		MOVE.W #$A111,D2
*		MOVE.W #$7F7F,D2
*		MOVE.W #$9000,D2
*		MOVE.W #$D7D6,D2
*		MOVE.W #$FFEE,D2
*		MOVE.W #$1234,D2
*		MOVE.W #$AAAA,D2
*		MOVE.W #$B2C3,D2
*		MOVE.W #$7777,D2
*		MOVE.W #$CCCC,D2
*		MOVE.W #$3AAC,D2
*		MOVE.W #$F3A2,D2
*		MOVE.W #$FFFF,D2		
*
*		MOVE.W #$0080,D4	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn. 
*		MOVE.W #$00FF,D4
*		MOVE.W #$0111,D4
*		MOVE.W #$1111,D4
*		MOVE.W #$8000,D4
*		MOVE.W #$A111,D4
*		MOVE.W #$7F7F,D4
*		MOVE.W #$9000,D4
*		MOVE.W #$D7D6,D4
*		MOVE.W #$FFEE,D4
*		MOVE.W #$1234,D4
*		MOVE.W #$AAAA,D4
*		MOVE.W #$B2C3,D4
*		MOVE.W #$7777,D4
*		MOVE.W #$CCCC,D4
*		MOVE.W #$3AAC,D4
*		MOVE.W #$F3A2,D4
*		MOVE.W #$FFFF,D4
*
*		MOVE.W #$0080,D6	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn. 
*		MOVE.W #$00FF,D6
*		MOVE.W #$0111,D6
*		MOVE.W #$1111,D6
*		MOVE.W #$8000,D6
*		MOVE.W #$A111,D6
*		MOVE.W #$7F7F,D6
*		MOVE.W #$9000,D6
*		MOVE.W #$D7D6,D6
*		MOVE.W #$FFEE,D6
*		MOVE.W #$1234,D6
*		MOVE.W #$AAAA,D6
*		MOVE.W #$B2C3,D6
*		MOVE.W #$7777,D6
*		MOVE.W #$CCCC,D6
*		MOVE.W #$3AAC,D6
*		MOVE.W #$F3A2,D6
*		MOVE.W #$FFFF,D6
*
*		MOVE.W #$0080,D7	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn. 
*		MOVE.W #$00FF,D7
*		MOVE.W #$0111,D7
*		MOVE.W #$1111,D7
*		MOVE.W #$8000,D7
*		MOVE.W #$A111,D7
*		MOVE.W #$7F7F,D7
*		MOVE.W #$9000,D7
*		MOVE.W #$D7D6,D7
*		MOVE.W #$FFEE,D7
*		MOVE.W #$1234,D7
*		MOVE.W #$AAAA,D7
*		MOVE.W #$B2C3,D7
*		MOVE.W #$7777,D7
*		MOVE.W #$CCCC,D7
*		MOVE.W #$3AAC,D7
*		MOVE.W #$F3A2,D7
*		MOVE.W #$FFFF,D7
************************************ End with MOVE.W #<data> to Dn
*
*		*** Destination (An) ***		
************************************ Start with MOVE.W Dn to (An)
*		MOVE.W	D0,(A0)
*		MOVE.W	D0,(A1)
*		MOVE.W	D0,(A2)
*		MOVE.W	D0,(A3)
*		MOVE.W	D0,(A4)
*		MOVE.W	D0,(A5)
*		MOVE.W	D0,(A6)
*		MOVE.W	D0,(A7)
*		
*		MOVE.W	D1,(A0)
*		MOVE.W	D1,(A1)
*		MOVE.W	D1,(A2)
*		MOVE.W	D1,(A3)
*		MOVE.W	D1,(A4)
*		MOVE.W	D1,(A5)
*		MOVE.W	D1,(A6)
*		MOVE.W	D1,(A7)
*		
*		MOVE.W	D2,(A0)
*		MOVE.W	D2,(A1)
*		MOVE.W	D2,(A2)
*		MOVE.W	D2,(A3)
*		MOVE.W	D2,(A4)
*		MOVE.W	D2,(A5)
*		MOVE.W	D2,(A6)
*		MOVE.W	D2,(A7)
*		
*		MOVE.W	D3,(A0)
*		MOVE.W	D3,(A1)
*		MOVE.W	D3,(A2)
*		MOVE.W	D3,(A3)
*		MOVE.W	D3,(A4)
*		MOVE.W	D3,(A5)
*		MOVE.W	D3,(A6)
*		MOVE.W	D3,(A7)
*		
*		MOVE.W	D4,(A0)
*		MOVE.W	D4,(A1)
*		MOVE.W	D4,(A2)
*		MOVE.W	D4,(A3)
*		MOVE.W	D4,(A4)
*		MOVE.W	D4,(A5)
*		MOVE.W	D4,(A6)
*		MOVE.W	D4,(A7)	
*
*		MOVE.W	D5,(A0)
*		MOVE.W	D5,(A1)
*		MOVE.W	D5,(A2)
*		MOVE.W	D5,(A3)
*		MOVE.W	D5,(A4)
*		MOVE.W	D5,(A5)
*		MOVE.W	D5,(A6)
*		MOVE.W	D5,(A7)	
*
*		MOVE.W	D6,(A0)
*		MOVE.W	D6,(A1)
*		MOVE.W	D6,(A2)
*		MOVE.W	D6,(A3)
*		MOVE.W	D6,(A4)
*		MOVE.W	D6,(A5)
*		MOVE.W	D6,(A6)
*		MOVE.W	D6,(A7)
*		
*		MOVE.W	D7,(A0)
*		MOVE.W	D7,(A1)
*		MOVE.W	D7,(A2)
*		MOVE.W	D7,(A3)
*		MOVE.W	D7,(A4)
*		MOVE.W	D7,(A5)
*		MOVE.W	D7,(A6)
*		MOVE.W	D7,(A7)
************************************ End with MOVE.W Dn to (An)
*		
************************************ Start with MOVE.W An to (An)
*		MOVE.W	A0,(A0)
*		MOVE.W	A0,(A1)
*		MOVE.W	A0,(A2)
*		MOVE.W	A0,(A3)
*		MOVE.W	A0,(A4)
*		MOVE.W	A0,(A5)
*		MOVE.W	A0,(A6)
*		MOVE.W	A0,(A7)
*		
*		MOVE.W	A1,(A0)
*		MOVE.W	A1,(A1)
*		MOVE.W	A1,(A2)
*		MOVE.W	A1,(A3)
*		MOVE.W	A1,(A4)
*		MOVE.W	A1,(A5)
*		MOVE.W	A1,(A6)
*		MOVE.W	A1,(A7)
*		
*		MOVE.W	A2,(A0)
*		MOVE.W	A2,(A1)
*		MOVE.W	A2,(A2)
*		MOVE.W	A2,(A3)
*		MOVE.W	A2,(A4)
*		MOVE.W	A2,(A5)
*		MOVE.W	A2,(A6)
*		MOVE.W	A2,(A7)
*		
*		MOVE.W	A3,(A0)
*		MOVE.W	A3,(A1)
*		MOVE.W	A3,(A2)
*		MOVE.W	A3,(A3)
*		MOVE.W	A3,(A4)
*		MOVE.W	A3,(A5)
*		MOVE.W	A3,(A6)
*		MOVE.W	A3,(A7)
*		
*		MOVE.W	A4,(A0)
*		MOVE.W	A4,(A1)
*		MOVE.W	A4,(A2)
*		MOVE.W	A4,(A3)
*		MOVE.W	A4,(A4)
*		MOVE.W	A4,(A5)
*		MOVE.W	A4,(A6)
*		MOVE.W	A4,(A7)		
*
*		MOVE.W	A5,(A0)
*		MOVE.W	A5,(A1)
*		MOVE.W	A5,(A2)
*		MOVE.W	A5,(A3)
*		MOVE.W	A5,(A4)
*		MOVE.W	A5,(A5)
*		MOVE.W	A5,(A6)
*		MOVE.W	A5,(A7)
*
*		MOVE.W	A6,(A0)
*		MOVE.W	A6,(A1)
*		MOVE.W	A6,(A2)
*		MOVE.W	A6,(A3)
*		MOVE.W	A6,(A4)
*		MOVE.W	A6,(A5)
*		MOVE.W	A6,(A6)
*		MOVE.W	A6,(A7)
*		
*		MOVE.W	A7,(A0)
*		MOVE.W	A7,(A1)
*		MOVE.W	A7,(A2)
*		MOVE.W	A7,(A3)
*		MOVE.W	A7,(A4)
*		MOVE.W	A7,(A5)
*		MOVE.W	A7,(A6)
*		MOVE.W	A7,(A7)
************************************ End with MOVE.W An to (An)
*
************************************ Start with MOVE.W (An) to (An)
*		MOVE.W	(A0),(A0)
*		MOVE.W	(A0),(A1)
*		MOVE.W	(A0),(A2)
*		MOVE.W	(A0),(A3)
*		MOVE.W	(A0),(A4)
*		MOVE.W	(A0),(A5)
*		MOVE.W	(A0),(A6)
*		MOVE.W	(A0),(A7)
*		
*		MOVE.W	(A1),(A0)
*		MOVE.W	(A1),(A1)
*		MOVE.W	(A1),(A2)
*		MOVE.W	(A1),(A3)
*		MOVE.W	(A1),(A4)
*		MOVE.W	(A1),(A5)
*		MOVE.W	(A1),(A6)
*		MOVE.W	(A1),(A7)
*		
*		MOVE.W	(A2),(A0)
*		MOVE.W	(A2),(A1)
*		MOVE.W	(A2),(A2)
*		MOVE.W	(A2),(A3)
*		MOVE.W	(A2),(A4)
*		MOVE.W	(A2),(A5)
*		MOVE.W	(A2),(A6)
*		MOVE.W	(A2),(A7)
*		
*		MOVE.W	(A3),(A0)
*		MOVE.W	(A3),(A1)
*		MOVE.W	(A3),(A2)
*		MOVE.W	(A3),(A3)
*		MOVE.W	(A3),(A4)
*		MOVE.W	(A3),(A5)
*		MOVE.W	(A3),(A6)
*		MOVE.W	(A3),(A7)
*		
*		MOVE.W	(A4),(A0)
*		MOVE.W	(A4),(A1)
*		MOVE.W	(A4),(A2)
*		MOVE.W	(A4),(A3)
*		MOVE.W	(A4),(A4)
*		MOVE.W	(A4),(A5)
*		MOVE.W	(A4),(A6)
*		MOVE.W	(A4),(A7)	
*
*		MOVE.W	(A5),(A0)
*		MOVE.W	(A5),(A1)
*		MOVE.W	(A5),(A2)
*		MOVE.W	(A5),(A3)
*		MOVE.W	(A5),(A4)
*		MOVE.W	(A5),(A5)
*		MOVE.W	(A5),(A6)
*		MOVE.W	(A5),(A7)	
*
*		MOVE.W	(A6),(A0)
*		MOVE.W	(A6),(A1)
*		MOVE.W	(A6),(A2)
*		MOVE.W	(A6),(A3)
*		MOVE.W	(A6),(A4)
*		MOVE.W	(A6),(A5)
*		MOVE.W	(A6),(A6)
*		MOVE.W	(A6),(A7)
*		
*		MOVE.W	(A7),(A0)
*		MOVE.W	(A7),(A1)
*		MOVE.W	(A7),(A2)
*		MOVE.W	(A7),(A3)
*		MOVE.W	(A7),(A4)
*		MOVE.W	(A7),(A5)
*		MOVE.W	(A7),(A6)
*		MOVE.W	(A7),(A7)
************************************ End with MOVE.W (An) to (An)
*		
************************************ Start with MOVE.W (An)+ to (An)
*		MOVE.W	(A0)+,(A0)
*		MOVE.W	(A0)+,(A1)
*		MOVE.W	(A0)+,(A2)
*		MOVE.W	(A0)+,(A3)
*		MOVE.W	(A0)+,(A4)
*		MOVE.W	(A0)+,(A5)
*		MOVE.W	(A0)+,(A6)
*		MOVE.W	(A0)+,(A7)
*
*		MOVE.W	(A1)+,(A0)
*		MOVE.W	(A1)+,(A1)
*		MOVE.W	(A1)+,(A2)
*		MOVE.W	(A1)+,(A3)
*		MOVE.W	(A1)+,(A4)
*		MOVE.W	(A1)+,(A5)
*		MOVE.W	(A1)+,(A6)
*		MOVE.W	(A1)+,(A7)
*
*		MOVE.W	(A2)+,(A0)
*		MOVE.W	(A2)+,(A1)
*		MOVE.W	(A2)+,(A2)
*		MOVE.W	(A2)+,(A3)
*		MOVE.W	(A2)+,(A4)
*		MOVE.W	(A2)+,(A5)
*		MOVE.W	(A2)+,(A6)
*		MOVE.W	(A2)+,(A7)
*
*		MOVE.W	(A3)+,(A0)
*		MOVE.W	(A3)+,(A1)
*		MOVE.W	(A3)+,(A2)
*		MOVE.W	(A3)+,(A3)
*		MOVE.W	(A3)+,(A4)
*		MOVE.W	(A3)+,(A5)
*		MOVE.W	(A3)+,(A6)
*		MOVE.W	(A3)+,(A7)
*
*		MOVE.W	(A4)+,(A0)
*		MOVE.W	(A4)+,(A1)
*		MOVE.W	(A4)+,(A2)
*		MOVE.W	(A4)+,(A3)
*		MOVE.W	(A4)+,(A4)
*		MOVE.W	(A4)+,(A5)
*		MOVE.W	(A4)+,(A6)
*		MOVE.W	(A4)+,(A7)
*
*		MOVE.W	(A5)+,(A0)
*		MOVE.W	(A5)+,(A1)
*		MOVE.W	(A5)+,(A2)
*		MOVE.W	(A5)+,(A3)
*		MOVE.W	(A5)+,(A4)
*		MOVE.W	(A5)+,(A5)
*		MOVE.W	(A5)+,(A6)
*		MOVE.W	(A5)+,(A7)
*
*		MOVE.W	(A6)+,(A0)
*		MOVE.W	(A6)+,(A1)
*		MOVE.W	(A6)+,(A2)
*		MOVE.W	(A6)+,(A3)
*		MOVE.W	(A6)+,(A4)
*		MOVE.W	(A6)+,(A5)
*		MOVE.W	(A6)+,(A6)
*		MOVE.W	(A6)+,(A7)
*
*		MOVE.W	(A7)+,(A0)
*		MOVE.W	(A7)+,(A1)
*		MOVE.W	(A7)+,(A2)
*		MOVE.W	(A7)+,(A3)
*		MOVE.W	(A7)+,(A4)
*		MOVE.W	(A7)+,(A5)
*		MOVE.W	(A7)+,(A6)
*		MOVE.W	(A7)+,(A7)
************************************ End with MOVE.W (An)+ to (An)
*
************************************ Start with MOVE.W -(An) to (An)
*		MOVE.W	-(A0),(A0)
*		MOVE.W	-(A0),(A1)
*		MOVE.W	-(A0),(A2)
*		MOVE.W	-(A0),(A3)
*		MOVE.W	-(A0),(A4)
*		MOVE.W	-(A0),(A5)
*		MOVE.W	-(A0),(A6)
*		MOVE.W	-(A0),(A7)
*
*		MOVE.W	-(A1),(A0)
*		MOVE.W	-(A1),(A1)
*		MOVE.W	-(A1),(A2)
*		MOVE.W	-(A1),(A3)
*		MOVE.W	-(A1),(A4)
*		MOVE.W	-(A1),(A5)
*		MOVE.W	-(A1),(A6)
*		MOVE.W	-(A1),(A7)
*
*		MOVE.W	-(A2),(A0)
*		MOVE.W	-(A2),(A1)
*		MOVE.W	-(A2),(A2)
*		MOVE.W	-(A2),(A3)
*		MOVE.W	-(A2),(A4)
*		MOVE.W	-(A2),(A5)
*		MOVE.W	-(A2),(A6)
*		MOVE.W	-(A2),(A7)
*
*		MOVE.W	-(A3),(A0)
*		MOVE.W	-(A3),(A1)
*		MOVE.W	-(A3),(A2)
*		MOVE.W	-(A3),(A3)
*		MOVE.W	-(A3),(A4)
*		MOVE.W	-(A3),(A5)
*		MOVE.W	-(A3),(A6)
*		MOVE.W	-(A3),(A7)
*
*		MOVE.W	-(A4),(A0)
*		MOVE.W	-(A4),(A1)
*		MOVE.W	-(A4),(A2)
*		MOVE.W	-(A4),(A3)
*		MOVE.W	-(A4),(A4)
*		MOVE.W	-(A4),(A5)
*		MOVE.W	-(A4),(A6)
*		MOVE.W	-(A4),(A7)
*
*		MOVE.W	-(A5),(A0)
*		MOVE.W	-(A5),(A1)
*		MOVE.W	-(A5),(A2)
*		MOVE.W	-(A5),(A3)
*		MOVE.W	-(A5),(A4)
*		MOVE.W	-(A5),(A5)
*		MOVE.W	-(A5),(A6)
*		MOVE.W	-(A5),(A7)
*
*		MOVE.W	-(A6),(A0)
*		MOVE.W	-(A6),(A1)
*		MOVE.W	-(A6),(A2)
*		MOVE.W	-(A6),(A3)
*		MOVE.W	-(A6),(A4)
*		MOVE.W	-(A6),(A5)
*		MOVE.W	-(A6),(A6)
*		MOVE.W	-(A6),(A7)
*
*		MOVE.W	-(A7),(A0)
*		MOVE.W	-(A7),(A1)
*		MOVE.W	-(A7),(A2)
*		MOVE.W	-(A7),(A3)
*		MOVE.W	-(A7),(A4)
*		MOVE.W	-(A7),(A5)
*		MOVE.W	-(A7),(A6)
*		MOVE.W	-(A7),(A7)
************************************ End with MOVE.W -(An) to (An)
*
************************************ Start with MOVE.W (xxxx).W to (An)
*		MOVE.W	$00000000,(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFF8000,(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFFFF00,(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00,(A0)
*		MOVE.W	$0,(A0)
*		MOVE.W	$1234,(A0)
*		MOVE.W	$56,(A0)
*		MOVE.W	$212,(A0)
*		MOVE.W	$7770,(A0)
*		MOVE.W	$A,(A0)
*
*		MOVE.W	$00000000,(A3)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,(A3)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFF8000,(A3)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFFFF00,(A3)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00,(A3)
*		MOVE.W	$0,(A3)
*		MOVE.W	$22,(A3)
*		MOVE.W	$420,(A3)
*		MOVE.W	$3876,(A3)
*		MOVE.W	$1222,(A3)
*		MOVE.W	$12,(A3)
*
*		MOVE.W	$00000000,(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFF8000,(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFFFF00,(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00,(A6)
*		MOVE.W	$0,(A6)
*		MOVE.W	$1A,(A6)
*		MOVE.W	$106,(A6)
*		MOVE.W	$5554,(A6)
*		MOVE.W	$2462,(A6)
*		MOVE.W	$0FF0,(A6)
*		MOVE.W	$E8,(A6)
*
*		MOVE.W	$00000000,(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFF8000,(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFFFF00,(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00,(A7)
*		MOVE.W	$0,(A7)
*		MOVE.W	$1A,(A7)
*		MOVE.W	$106,(A7)
*		MOVE.W	$5554,(A7)
*		MOVE.W	$2462,(A7)
*		MOVE.W	$0FF0,(A7)
*		MOVE.W	$E8,(A7)
************************************ End with MOVE.W (xxxx).W to (An)	
*
************************************ Start with MOVE.W (xxxx).L to (An)
*		MOVE.W $00008000,(A0)		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,(A0)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,(A0)
*		MOVE.W $00009876,(A0)		
*		MOVE.W $FFEE0202,(A0)		
*		MOVE.W $12345678,(A0)
*		
*		MOVE.W $AAAAAAAA,(A1)
*		MOVE.W $B2C3A1E4,(A1)
*		MOVE.W $77777772,(A1)
*		MOVE.W $CCCCCCCC,(A1)
*		MOVE.W $C7C77AA0,(A1)
*		MOVE.W $10101010,(A1)
*
*		MOVE.W $00008000,(A2)		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,(A2)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,(A2)
*		MOVE.W $00009876,(A2)		
*		MOVE.W $FFEE0202,(A2)		
*		MOVE.W $12345678,(A2)
*		
*		MOVE.W $AAAAAAAA,(A3)
*		MOVE.W $B2C3A1E4,(A3)
*		MOVE.W $77777772,(A3)
*		MOVE.W $CCCCCCCC,(A3)
*		MOVE.W $C7C77AA0,(A3)
*		MOVE.W $10101010,(A3)
*
*		MOVE.W $00008000,(A4)		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,(A4)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,(A4)
*		MOVE.W $00009876,(A4)		
*		MOVE.W $FFEE0202,(A4)		
*		MOVE.W $12345678,(A4)
*		
*		MOVE.W $AAAAAAAA,(A5)
*		MOVE.W $B2C3A1E4,(A5)
*		MOVE.W $77777772,(A5)
*		MOVE.W $CCCCCCCC,(A5)
*		MOVE.W $C7C77AA0,(A5)
*		MOVE.W $10101010,(A5)
*
*		MOVE.W $00008000,(A6)		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,(A6)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,(A6)
*		MOVE.W $00009876,(A6)		
*		MOVE.W $FFEE0202,(A6)		
*		MOVE.W $12345678,(A6)
*		
*		MOVE.W $AAAAAAAA,(A7)
*		MOVE.W $B2C3A1E4,(A7)
*		MOVE.W $77777772,(A7)
*		MOVE.W $CCCCCCCC,(A7)
*		MOVE.W $C7C77AA0,(A7)
*		MOVE.W $10101010,(A7)
************************************ End with MOVE.W (xxxx).L to (An)	
*
************************************ Start with MOVE.W #<data> to (An)
*		MOVE.W #$0080,(A0)	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An). 
*		MOVE.W #$00F0,(A0)
*		MOVE.W #$01C0,(A0)
*		MOVE.W #$11AA,(A0)
*		MOVE.W #$8000,(A0)
*		MOVE.W #$A188,(A0)
*		MOVE.W #$7F66,(A0)
*		MOVE.W #$9000,(A0)
*		MOVE.W #$D7D6,(A0)
*		MOVE.W #$FFEE,(A0)
*		MOVE.W #$1234,(A0)
*		MOVE.W #$AAAA,(A0)
*		MOVE.W #$B244,(A0)
*		MOVE.W #$7722,(A0)
*		MOVE.W #$CCCC,(A0)
*		MOVE.W #$3AAC,(A0)
*		MOVE.W #$F3A2,(A0)
*		MOVE.W #$FF00,(A0)
*		
*		MOVE.W #$0080,(A1)	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An). 
*		MOVE.W #$00F0,(A1)
*		MOVE.W #$01C0,(A1)
*		MOVE.W #$11AA,(A1)
*		MOVE.W #$8000,(A1)
*		MOVE.W #$A188,(A1)
*		MOVE.W #$7F66,(A1)
*		MOVE.W #$9000,(A1)
*		MOVE.W #$D7D6,(A1)
*		MOVE.W #$FFEE,(A1)
*		MOVE.W #$1234,(A1)
*		MOVE.W #$AAAA,(A1)
*		MOVE.W #$B244,(A1)
*		MOVE.W #$7722,(A1)
*		MOVE.W #$CCCC,(A1)
*		MOVE.W #$3AAC,(A1)
*		MOVE.W #$F3A2,(A1)
*		MOVE.W #$FF00,(A1)		
*
*		MOVE.W #$0080,(A2)	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An). 
*		MOVE.W #$00F0,(A2)
*		MOVE.W #$01C0,(A2)
*		MOVE.W #$11AA,(A2)
*		MOVE.W #$8000,(A2)
*		MOVE.W #$A188,(A2)
*		MOVE.W #$7F66,(A2)
*		MOVE.W #$9000,(A2)
*		MOVE.W #$D7D6,(A2)
*		
*		MOVE.W #$FFEE,(A3)
*		MOVE.W #$1234,(A3)
*		MOVE.W #$AAAA,(A3)
*		MOVE.W #$B244,(A3)
*		MOVE.W #$7722,(A3)
*		MOVE.W #$CCCC,(A3)
*		MOVE.W #$3AAC,(A3)
*		MOVE.W #$F3A2,(A3)
*		MOVE.W #$FF00,(A3)
*
*		MOVE.W #$0080,(A4)	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An).
*		MOVE.W #$00F0,(A4)
*		MOVE.W #$01C0,(A4)
*		MOVE.W #$11AA,(A4)
*		MOVE.W #$8000,(A4)
*		MOVE.W #$A188,(A4)
*		
*		MOVE.W #$7F66,(A5)
*		MOVE.W #$9000,(A5)
*		MOVE.W #$D7D6,(A5)
*		MOVE.W #$FFEE,(A5)
*		MOVE.W #$1234,(A5)
*		MOVE.W #$AAAA,(A5)
*		
*		MOVE.W #$B244,(A6)
*		MOVE.W #$7722,(A6)
*		MOVE.W #$CCCC,(A6)
*		MOVE.W #$3AAC,(A6)
*		MOVE.W #$F3A2,(A6)
*		MOVE.W #$FF00,(A6)
*
*		MOVE.W #$0080,(A7)	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An). 
*		MOVE.W #$00F0,(A7)
*		MOVE.W #$01C0,(A7)
*		MOVE.W #$11AA,(A7)
*		MOVE.W #$8000,(A7)
*		MOVE.W #$A188,(A7)
*		MOVE.W #$7F66,(A7)
*		MOVE.W #$9000,(A7)
*		MOVE.W #$D7D6,(A7)
*		MOVE.W #$FFEE,(A7)
*		MOVE.W #$1234,(A7)
*		MOVE.W #$AAAA,(A7)
*		MOVE.W #$B244,(A7)
*		MOVE.W #$7722,(A7)
*		MOVE.W #$CCCC,(A7)
*		MOVE.W #$3AAC,(A7)
*		MOVE.W #$F3A2,(A7)
*		MOVE.W #$FF00,(A7)
************************************ End with MOVE.W #<data> to (An)
*
*		*** Destination (An)+
************************************ Start with MOVE.W Dn to (An)+
*		MOVE.W	D0,(A0)+
*		MOVE.W	D0,(A1)+
*		MOVE.W	D0,(A2)+
*		MOVE.W	D0,(A3)+
*		MOVE.W	D0,(A4)+
*		MOVE.W	D0,(A5)+
*		MOVE.W	D0,(A6)+
*		MOVE.W	D0,(A7)+
*		
*		MOVE.W	D1,(A0)+
*		MOVE.W	D1,(A1)+
*		MOVE.W	D1,(A2)+
*		MOVE.W	D1,(A3)+
*		MOVE.W	D1,(A4)+
*		MOVE.W	D1,(A5)+
*		MOVE.W	D1,(A6)+
*		MOVE.W	D1,(A7)+
*		
*		MOVE.W	D2,(A0)+
*		MOVE.W	D2,(A1)+
*		MOVE.W	D2,(A2)+
*		MOVE.W	D2,(A3)+
*		MOVE.W	D2,(A4)+
*		MOVE.W	D2,(A5)+
*		MOVE.W	D2,(A6)+
*		MOVE.W	D2,(A7)+
*		
*		MOVE.W	D3,(A0)+
*		MOVE.W	D3,(A1)+
*		MOVE.W	D3,(A2)+
*		MOVE.W	D3,(A3)+
*		MOVE.W	D3,(A4)+
*		MOVE.W	D3,(A5)+
*		MOVE.W	D3,(A6)+
*		MOVE.W	D3,(A7)+
*		
*		MOVE.W	D4,(A0)+
*		MOVE.W	D4,(A1)+
*		MOVE.W	D4,(A2)+
*		MOVE.W	D4,(A3)+
*		MOVE.W	D4,(A4)+
*		MOVE.W	D4,(A5)+
*		MOVE.W	D4,(A6)+
*		MOVE.W	D4,(A7)+
*
*		MOVE.W	D5,(A0)+
*		MOVE.W	D5,(A1)+
*		MOVE.W	D5,(A2)+
*		MOVE.W	D5,(A3)+
*		MOVE.W	D5,(A4)+
*		MOVE.W	D5,(A5)+
*		MOVE.W	D5,(A6)+
*		MOVE.W	D5,(A7)+
*
*		MOVE.W	D6,(A0)+
*		MOVE.W	D6,(A1)+
*		MOVE.W	D6,(A2)+
*		MOVE.W	D6,(A3)+
*		MOVE.W	D6,(A4)+
*		MOVE.W	D6,(A5)+
*		MOVE.W	D6,(A6)+
*		MOVE.W	D6,(A7)+
*		
*		MOVE.W	D7,(A0)+
*		MOVE.W	D7,(A1)+
*		MOVE.W	D7,(A2)+
*		MOVE.W	D7,(A3)+
*		MOVE.W	D7,(A4)+
*		MOVE.W	D7,(A5)+
*		MOVE.W	D7,(A6)+
*		MOVE.W	D7,(A7)+
************************************ End with MOVE.W Dn to (An)+
*		
************************************ Start with MOVE.W An to (An)+
*		MOVE.W	A0,(A0)+
*		MOVE.W	A0,(A1)+
*		MOVE.W	A0,(A2)+
*		MOVE.W	A0,(A3)+
*		MOVE.W	A0,(A4)+
*		MOVE.W	A0,(A5)+
*		MOVE.W	A0,(A6)+
*		MOVE.W	A0,(A7)+
*		
*		MOVE.W	A1,(A0)+
*		MOVE.W	A1,(A1)+
*		MOVE.W	A1,(A2)+
*		MOVE.W	A1,(A3)+
*		MOVE.W	A1,(A4)+
*		MOVE.W	A1,(A5)+
*		MOVE.W	A1,(A6)+
*		MOVE.W	A1,(A7)+
*		
*		MOVE.W	A2,(A0)+
*		MOVE.W	A2,(A1)+
*		MOVE.W	A2,(A2)+
*		MOVE.W	A2,(A3)+
*		MOVE.W	A2,(A4)+
*		MOVE.W	A2,(A5)+
*		MOVE.W	A2,(A6)+
*		MOVE.W	A2,(A7)+
*		
*		MOVE.W	A3,(A0)+
*		MOVE.W	A3,(A1)+
*		MOVE.W	A3,(A2)+
*		MOVE.W	A3,(A3)+
*		MOVE.W	A3,(A4)+
*		MOVE.W	A3,(A5)+
*		MOVE.W	A3,(A6)+
*		MOVE.W	A3,(A7)+
*		
*		MOVE.W	A4,(A0)+
*		MOVE.W	A4,(A1)+
*		MOVE.W	A4,(A2)+
*		MOVE.W	A4,(A3)+
*		MOVE.W	A4,(A4)+
*		MOVE.W	A4,(A5)+
*		MOVE.W	A4,(A6)+
*		MOVE.W	A4,(A7)+	
*
*		MOVE.W	A5,(A0)+
*		MOVE.W	A5,(A1)+
*		MOVE.W	A5,(A2)+
*		MOVE.W	A5,(A3)+
*		MOVE.W	A5,(A4)+
*		MOVE.W	A5,(A5)+
*		MOVE.W	A5,(A6)+
*		MOVE.W	A5,(A7)+
*
*		MOVE.W	A6,(A0)+
*		MOVE.W	A6,(A1)+
*		MOVE.W	A6,(A2)+
*		MOVE.W	A6,(A3)+
*		MOVE.W	A6,(A4)+
*		MOVE.W	A6,(A5)+
*		MOVE.W	A6,(A6)+
*		MOVE.W	A6,(A7)+
*		
*		MOVE.W	A7,(A0)+
*		MOVE.W	A7,(A1)+
*		MOVE.W	A7,(A2)+
*		MOVE.W	A7,(A3)+
*		MOVE.W	A7,(A4)+
*		MOVE.W	A7,(A5)+
*		MOVE.W	A7,(A6)+
*		MOVE.W	A7,(A7)+
************************************ End with MOVE.W An to (An)+
*
************************************ Start with MOVE.W (An) to (An)+
*		MOVE.W	(A0),(A0)+
*		MOVE.W	(A0),(A1)+
*		MOVE.W	(A0),(A2)+
*		MOVE.W	(A0),(A3)+
*		MOVE.W	(A0),(A4)+
*		MOVE.W	(A0),(A5)+
*		MOVE.W	(A0),(A6)+
*		MOVE.W	(A0),(A7)+
*		
*		MOVE.W	(A1),(A0)+
*		MOVE.W	(A1),(A1)+
*		MOVE.W	(A1),(A2)+
*		MOVE.W	(A1),(A3)+
*		MOVE.W	(A1),(A4)+
*		MOVE.W	(A1),(A5)+
*		MOVE.W	(A1),(A6)+
*		MOVE.W	(A1),(A7)+
*		
*		MOVE.W	(A2),(A0)+
*		MOVE.W	(A2),(A1)+
*		MOVE.W	(A2),(A2)+
*		MOVE.W	(A2),(A3)+
*		MOVE.W	(A2),(A4)+
*		MOVE.W	(A2),(A5)+
*		MOVE.W	(A2),(A6)+
*		MOVE.W	(A2),(A7)+
*		
*		MOVE.W	(A3),(A0)+
*		MOVE.W	(A3),(A1)+
*		MOVE.W	(A3),(A2)+
*		MOVE.W	(A3),(A3)+
*		MOVE.W	(A3),(A4)+
*		MOVE.W	(A3),(A5)+
*		MOVE.W	(A3),(A6)+
*		MOVE.W	(A3),(A7)+
*		
*		MOVE.W	(A4),(A0)+
*		MOVE.W	(A4),(A1)+
*		MOVE.W	(A4),(A2)+
*		MOVE.W	(A4),(A3)+
*		MOVE.W	(A4),(A4)+
*		MOVE.W	(A4),(A5)+
*		MOVE.W	(A4),(A6)+
*		MOVE.W	(A4),(A7)+	
*
*		MOVE.W	(A5),(A0)+
*		MOVE.W	(A5),(A1)+
*		MOVE.W	(A5),(A2)+
*		MOVE.W	(A5),(A3)+
*		MOVE.W	(A5),(A4)+
*		MOVE.W	(A5),(A5)+
*		MOVE.W	(A5),(A6)+
*		MOVE.W	(A5),(A7)+	
*
*		MOVE.W	(A6),(A0)+
*		MOVE.W	(A6),(A1)+
*		MOVE.W	(A6),(A2)+
*		MOVE.W	(A6),(A3)+
*		MOVE.W	(A6),(A4)+
*		MOVE.W	(A6),(A5)+
*		MOVE.W	(A6),(A6)+
*		MOVE.W	(A6),(A7)+
*		
*		MOVE.W	(A7),(A0)+
*		MOVE.W	(A7),(A1)+
*		MOVE.W	(A7),(A2)+
*		MOVE.W	(A7),(A3)+
*		MOVE.W	(A7),(A4)+
*		MOVE.W	(A7),(A5)+
*		MOVE.W	(A7),(A6)+
*		MOVE.W	(A7),(A7)+
************************************ End with MOVE.W (An) to (An)+
*		
************************************ Start with MOVE.W (An)+ to (An)+
*		MOVE.W	(A0)+,(A0)+
*		MOVE.W	(A0)+,(A1)+
*		MOVE.W	(A0)+,(A2)+
*		MOVE.W	(A0)+,(A3)+
*		MOVE.W	(A0)+,(A4)+
*		MOVE.W	(A0)+,(A5)+
*		MOVE.W	(A0)+,(A6)+
*		MOVE.W	(A0)+,(A7)+
*
*		MOVE.W	(A1)+,(A0)+
*		MOVE.W	(A1)+,(A1)+
*		MOVE.W	(A1)+,(A2)+
*		MOVE.W	(A1)+,(A3)+
*		MOVE.W	(A1)+,(A4)+
*		MOVE.W	(A1)+,(A5)+
*		MOVE.W	(A1)+,(A6)+
*		MOVE.W	(A1)+,(A7)+
*
*		MOVE.W	(A2)+,(A0)+
*		MOVE.W	(A2)+,(A1)+
*		MOVE.W	(A2)+,(A2)+
*		MOVE.W	(A2)+,(A3)+
*		MOVE.W	(A2)+,(A4)+
*		MOVE.W	(A2)+,(A5)+
*		MOVE.W	(A2)+,(A6)+
*		MOVE.W	(A2)+,(A7)+
*
*		MOVE.W	(A3)+,(A0)+
*		MOVE.W	(A3)+,(A1)+
*		MOVE.W	(A3)+,(A2)+
*		MOVE.W	(A3)+,(A3)+
*		MOVE.W	(A3)+,(A4)+
*		MOVE.W	(A3)+,(A5)+
*		MOVE.W	(A3)+,(A6)+
*		MOVE.W	(A3)+,(A7)+
*
*		MOVE.W	(A4)+,(A0)+
*		MOVE.W	(A4)+,(A1)+
*		MOVE.W	(A4)+,(A2)+
*		MOVE.W	(A4)+,(A3)+
*		MOVE.W	(A4)+,(A4)+
*		MOVE.W	(A4)+,(A5)+
*		MOVE.W	(A4)+,(A6)+
*		MOVE.W	(A4)+,(A7)+
*
*		MOVE.W	(A5)+,(A0)+
*		MOVE.W	(A5)+,(A1)+
*		MOVE.W	(A5)+,(A2)+
*		MOVE.W	(A5)+,(A3)+
*		MOVE.W	(A5)+,(A4)+
*		MOVE.W	(A5)+,(A5)+
*		MOVE.W	(A5)+,(A6)+
*		MOVE.W	(A5)+,(A7)+
*
*		MOVE.W	(A6)+,(A0)+
*		MOVE.W	(A6)+,(A1)+
*		MOVE.W	(A6)+,(A2)+
*		MOVE.W	(A6)+,(A3)+
*		MOVE.W	(A6)+,(A4)+
*		MOVE.W	(A6)+,(A5)+
*		MOVE.W	(A6)+,(A6)+
*		MOVE.W	(A6)+,(A7)+
*
*		MOVE.W	(A7)+,(A0)+
*		MOVE.W	(A7)+,(A1)+
*		MOVE.W	(A7)+,(A2)+
*		MOVE.W	(A7)+,(A3)+
*		MOVE.W	(A7)+,(A4)+
*		MOVE.W	(A7)+,(A5)+
*		MOVE.W	(A7)+,(A6)+
*		MOVE.W	(A7)+,(A7)+
************************************ End with MOVE.W (An)+ to (An)+
*
************************************ Start with MOVE.W -(An) to (An)+
*		MOVE.W	-(A0),(A0)+
*		MOVE.W	-(A0),(A1)+
*		MOVE.W	-(A0),(A2)+
*		MOVE.W	-(A0),(A3)+
*		MOVE.W	-(A0),(A4)+
*		MOVE.W	-(A0),(A5)+
*		MOVE.W	-(A0),(A6)+
*		MOVE.W	-(A0),(A7)+
*
*		MOVE.W	-(A1),(A0)+
*		MOVE.W	-(A1),(A1)+
*		MOVE.W	-(A1),(A2)+
*		MOVE.W	-(A1),(A3)+
*		MOVE.W	-(A1),(A4)+
*		MOVE.W	-(A1),(A5)+
*		MOVE.W	-(A1),(A6)+
*		MOVE.W	-(A1),(A7)+
*
*		MOVE.W	-(A2),(A0)+
*		MOVE.W	-(A2),(A1)+
*		MOVE.W	-(A2),(A2)+
*		MOVE.W	-(A2),(A3)+
*		MOVE.W	-(A2),(A4)+
*		MOVE.W	-(A2),(A5)+
*		MOVE.W	-(A2),(A6)+
*		MOVE.W	-(A2),(A7)+
*
*		MOVE.W	-(A3),(A0)+
*		MOVE.W	-(A3),(A1)+
*		MOVE.W	-(A3),(A2)+
*		MOVE.W	-(A3),(A3)+
*		MOVE.W	-(A3),(A4)+
*		MOVE.W	-(A3),(A5)+
*		MOVE.W	-(A3),(A6)+
*		MOVE.W	-(A3),(A7)+
*
*		MOVE.W	-(A4),(A0)+
*		MOVE.W	-(A4),(A1)+
*		MOVE.W	-(A4),(A2)+
*		MOVE.W	-(A4),(A3)+
*		MOVE.W	-(A4),(A4)+
*		MOVE.W	-(A4),(A5)+
*		MOVE.W	-(A4),(A6)+
*		MOVE.W	-(A4),(A7)+
*
*		MOVE.W	-(A5),(A0)+
*		MOVE.W	-(A5),(A1)+
*		MOVE.W	-(A5),(A2)+
*		MOVE.W	-(A5),(A3)+
*		MOVE.W	-(A5),(A4)+
*		MOVE.W	-(A5),(A5)+
*		MOVE.W	-(A5),(A6)+
*		MOVE.W	-(A5),(A7)+
*
*		MOVE.W	-(A6),(A0)+
*		MOVE.W	-(A6),(A1)+
*		MOVE.W	-(A6),(A2)+
*		MOVE.W	-(A6),(A3)+
*		MOVE.W	-(A6),(A4)+
*		MOVE.W	-(A6),(A5)+
*		MOVE.W	-(A6),(A6)+
*		MOVE.W	-(A6),(A7)+
*
*		MOVE.W	-(A7),(A0)+
*		MOVE.W	-(A7),(A1)+
*		MOVE.W	-(A7),(A2)+
*		MOVE.W	-(A7),(A3)+
*		MOVE.W	-(A7),(A4)+
*		MOVE.W	-(A7),(A5)+
*		MOVE.W	-(A7),(A6)+
*		MOVE.W	-(A7),(A7)+
************************************ End with MOVE.W -(An) to (An)+
*
************************************ Start with MOVE.W (xxxx).W to (An)+
*		MOVE.W	$00000000,(A0)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,(A0)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$0,(A0)+
*		MOVE.W	$1234,(A0)+
*		MOVE.W	$56,(A0)+
*		MOVE.W	$212,(A0)+
*		MOVE.W	$7770,(A0)+
*		MOVE.W	$A,(A0)+
*
*		MOVE.W	$00000000,(A1)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,(A1)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$0,(A1)+
*		MOVE.W	$22,(A1)+
*		MOVE.W	$420,(A1)+
*		MOVE.W	$3876,(A1)+
*		MOVE.W	$1222,(A1)+
*		MOVE.W	$12,(A1)+
*
*		MOVE.W	$00000000,(A3)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,(A3)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$0,(A3)+
*		MOVE.W	$106,(A3)+
*		MOVE.W	$5554,(A3)+
*		MOVE.W	$2462,(A3)+
*		MOVE.W	$0FF0,(A3)+
*		MOVE.W	$E8,(A3)+
*		
*		MOVE.W	$00000000,(A5)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,(A5)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$0,(A5)+
*		MOVE.W	$106,(A5)+
*		MOVE.W	$5554,(A5)+
*		MOVE.W	$2462,(A5)+
*		MOVE.W	$0FF0,(A5)+
*		MOVE.W	$E8,(A5)+		
*
*		MOVE.W	$00000000,(A7)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,(A7)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$FFFF8000,(A7)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$106,(A7)+
*		MOVE.W	$5554,(A7)+
*		MOVE.W	$2462,(A7)+
*		MOVE.W	$0FF0,(A7)+
*		MOVE.W	$E8,(A7)+
************************************ End with MOVE.W (xxxx).W to (An)+
*
************************************ Start with MOVE.W (xxxx).L to (An)+	
*		MOVE.W $FFEE0202,(A0)+		
*		MOVE.W $12345678,(A0)+
*		MOVE.W $AAAAAAAA,(A0)+
*		MOVE.W $B2C3A1E4,(A0)+
*		MOVE.W $77777776,(A0)+
*		MOVE.W $CCCCCCCC,(A0)+
*		MOVE.W $C7C77AA8,(A0)+
*		MOVE.W $10101010,(A0)+
*
*		MOVE.W $FFEE0202,(A1)+		
*		MOVE.W $12345678,(A1)+
*		MOVE.W $AAAAAAAA,(A1)+
*		MOVE.W $B2C3A1E4,(A1)+
*		MOVE.W $77777776,(A1)+
*		MOVE.W $CCCCCCCC,(A1)+
*		MOVE.W $C7C77AA8,(A1)+
*		MOVE.W $10101010,(A1)+
*
*
*		MOVE.W $FFEE0202,(A2)+		
*		MOVE.W $12345678,(A2)+
*		MOVE.W $AAAAAAAA,(A2)+
*		MOVE.W $B2C3A1E4,(A2)+
*		MOVE.W $77777776,(A2)+
*		MOVE.W $CCCCCCCC,(A2)+
*		MOVE.W $C7C77AA8,(A2)+
*		MOVE.W $10101010,(A2)+
*
*		MOVE.W $FFEE0202,(A4)+		
*		MOVE.W $12345678,(A4)+
*		MOVE.W $AAAAAAAA,(A4)+
*		MOVE.W $B2C3A1E4,(A4)+
*		MOVE.W $77777776,(A4)+
*		MOVE.W $CCCCCCCC,(A4)+
*		MOVE.W $C7C77AA8,(A4)+
*		MOVE.W $10101010,(A4)+
*		
*		MOVE.W $FFEE0202,(A6)+		
*		MOVE.W $12345678,(A6)+
*		MOVE.W $AAAAAAAA,(A6)+
*		MOVE.W $B2C3A1E4,(A6)+
*		MOVE.W $77777776,(A6)+
*		MOVE.W $CCCCCCCC,(A6)+
*		MOVE.W $C7C77AA8,(A6)+
*		MOVE.W $10101010,(A6)+		
*
*		MOVE.W $FFEE0202,(A7)+		
*		MOVE.W $12345678,(A7)+
*		MOVE.W $AAAAAAAA,(A7)+
*		MOVE.W $B2C3A1E4,(A7)+
*		MOVE.W $77777776,(A7)+
*		MOVE.W $CCCCCCCC,(A7)+
*		MOVE.W $C7C77AA8,(A7)+
*		MOVE.W $10101010,(A7)+
************************************ End with MOVE.W (xxxx).L to (An)+
*
************************************ Start with MOVE.W #<data> to (An)+
*		MOVE.W #$0080,(A0)+		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+. 
*		MOVE.W #$00F0,(A0)+
*		MOVE.W #$0100,(A0)+
*		MOVE.W #$11AA,(A0)+
*		MOVE.W #$8000,(A0)+
*		MOVE.W #$A188,(A0)+
*		MOVE.W #$7F66,(A0)+
*		MOVE.W #$9000,(A0)+
*		MOVE.W #$D7D6,(A0)+
*		MOVE.W #$FFEE,(A0)+
*		MOVE.W #$1234,(A0)+
*		MOVE.W #$AAAA,(A0)+
*		MOVE.W #$B244,(A0)+
*		MOVE.W #$7722,(A0)+
*		MOVE.W #$CCCC,(A0)+
*		MOVE.W #$3AAC,(A0)+
*		MOVE.W #$F3A2,(A0)+
*		MOVE.W #$FF00,(A0)+
*		
*		MOVE.W #$0080,(A1)+		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+. 
*		MOVE.W #$00F0,(A1)+
*		MOVE.W #$0100,(A1)+
*		MOVE.W #$11AA,(A1)+
*		MOVE.W #$8000,(A1)+
*		MOVE.W #$A188,(A1)+
*		MOVE.W #$7F66,(A1)+
*		MOVE.W #$9000,(A1)+
*		MOVE.W #$D7D6,(A1)+
*		MOVE.W #$FFEE,(A1)+
*		MOVE.W #$1234,(A1)+
*		MOVE.W #$AAAA,(A1)+
*		MOVE.W #$B244,(A1)+
*		MOVE.W #$7722,(A1)+
*		MOVE.W #$CCCC,(A1)+
*		MOVE.W #$3AAC,(A1)+
*		MOVE.W #$F3A2,(A1)+
*		MOVE.W #$FF00,(A1)+
*		
*		MOVE.W #$0080,(A3)+		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+. 
*		MOVE.W #$00F0,(A3)+
*		MOVE.W #$0100,(A3)+
*		MOVE.W #$11AA,(A3)+
*		MOVE.W #$8000,(A3)+
*		MOVE.W #$A188,(A3)+
*		MOVE.W #$7F66,(A3)+
*		MOVE.W #$9000,(A3)+
*		MOVE.W #$D7D6,(A3)+
*		MOVE.W #$FFEE,(A3)+
*		MOVE.W #$1234,(A3)+
*		MOVE.W #$AAAA,(A3)+
*		MOVE.W #$B244,(A3)+
*		MOVE.W #$7722,(A3)+
*		MOVE.W #$CCCC,(A3)+
*		MOVE.W #$3AAC,(A3)+
*		MOVE.W #$F3A2,(A3)+
*		MOVE.W #$FF00,(A3)+
*
*		MOVE.W #$0080,(A5)+		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+. 
*		MOVE.W #$00F0,(A5)+
*		MOVE.W #$0100,(A5)+
*		MOVE.W #$11AA,(A5)+
*		MOVE.W #$8000,(A5)+
*		MOVE.W #$A188,(A5)+
*		MOVE.W #$7F66,(A5)+
*		MOVE.W #$9000,(A5)+
*		MOVE.W #$D7D6,(A5)+
*		MOVE.W #$FFEE,(A5)+
*		MOVE.W #$1234,(A5)+
*		MOVE.W #$AAAA,(A5)+
*		MOVE.W #$B244,(A5)+
*		MOVE.W #$7722,(A5)+
*		MOVE.W #$CCCC,(A5)+
*		MOVE.W #$3AAC,(A5)+
*		MOVE.W #$F3A2,(A5)+
*		MOVE.W #$FF00,(A5)+
*
*		MOVE.W #$0080,(A7)+		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+. 
*		MOVE.W #$00F0,(A7)+
*		MOVE.W #$0100,(A7)+
*		MOVE.W #$11AA,(A7)+
*		MOVE.W #$8000,(A7)+
*		MOVE.W #$A188,(A7)+
*		MOVE.W #$7F66,(A7)+
*		MOVE.W #$9000,(A7)+
*		MOVE.W #$D7D6,(A7)+
*		MOVE.W #$FFEE,(A7)+
*		MOVE.W #$1234,(A7)+
*		MOVE.W #$AAAA,(A7)+
*		MOVE.W #$B244,(A7)+
*		MOVE.W #$7722,(A7)+
*		MOVE.W #$CCCC,(A7)+
*		MOVE.W #$3AAC,(A7)+
*		MOVE.W #$F3A2,(A7)+
*		MOVE.W #$FF00,(A7)+
************************************ End with MOVE.W #<data> to (An)+
*
*		*** Destination -(An)
************************************ Start with MOVE.W Dn to -(An)
*		MOVE.W	D0,-(A0)
*		MOVE.W	D0,-(A1)
*		MOVE.W	D0,-(A2)
*		MOVE.W	D0,-(A3)
*		MOVE.W	D0,-(A4)
*		MOVE.W	D0,-(A5)
*		MOVE.W	D0,-(A6)
*		MOVE.W	D0,-(A7)
*		
*		MOVE.W	D1,-(A0)
*		MOVE.W	D1,-(A1)
*		MOVE.W	D1,-(A2)
*		MOVE.W	D1,-(A3)
*		MOVE.W	D1,-(A4)
*		MOVE.W	D1,-(A5)
*		MOVE.W	D1,-(A6)
*		MOVE.W	D1,-(A7)
*		
*		MOVE.W	D2,-(A0)
*		MOVE.W	D2,-(A1)
*		MOVE.W	D2,-(A2)
*		MOVE.W	D2,-(A3)
*		MOVE.W	D2,-(A4)
*		MOVE.W	D2,-(A5)
*		MOVE.W	D2,-(A6)
*		MOVE.W	D2,-(A7)
*		
*		MOVE.W	D3,-(A0)
*		MOVE.W	D3,-(A1)
*		MOVE.W	D3,-(A2)
*		MOVE.W	D3,-(A3)
*		MOVE.W	D3,-(A4)
*		MOVE.W	D3,-(A5)
*		MOVE.W	D3,-(A6)
*		MOVE.W	D3,-(A7)
*		
*		MOVE.W	D4,-(A0)
*		MOVE.W	D4,-(A1)
*		MOVE.W	D4,-(A2)
*		MOVE.W	D4,-(A3)
*		MOVE.W	D4,-(A4)
*		MOVE.W	D4,-(A5)
*		MOVE.W	D4,-(A6)
*		MOVE.W	D4,-(A7)	
*
*		MOVE.W	D5,-(A0)
*		MOVE.W	D5,-(A1)
*		MOVE.W	D5,-(A2)
*		MOVE.W	D5,-(A3)
*		MOVE.W	D5,-(A4)
*		MOVE.W	D5,-(A5)
*		MOVE.W	D5,-(A6)
*		MOVE.W	D5,-(A7)	
*
*		MOVE.W	D6,-(A0)
*		MOVE.W	D6,-(A1)
*		MOVE.W	D6,-(A2)
*		MOVE.W	D6,-(A3)
*		MOVE.W	D6,-(A4)
*		MOVE.W	D6,-(A5)
*		MOVE.W	D6,-(A6)
*		MOVE.W	D6,-(A7)
*		
*		MOVE.W	D7,-(A0)
*		MOVE.W	D7,-(A1)
*		MOVE.W	D7,-(A2)
*		MOVE.W	D7,-(A3)
*		MOVE.W	D7,-(A4)
*		MOVE.W	D7,-(A5)
*		MOVE.W	D7,-(A6)
*		MOVE.W	D7,-(A7)
************************************ End with MOVE.W Dn to -(An)
*		
************************************ Start with MOVE.W An to -(An)
*		MOVE.W	A0,-(A0)
*		MOVE.W	A0,-(A1)
*		MOVE.W	A0,-(A2)
*		MOVE.W	A0,-(A3)
*		MOVE.W	A0,-(A4)
*		MOVE.W	A0,-(A5)
*		MOVE.W	A0,-(A6)
*		MOVE.W	A0,-(A7)
*		
*		MOVE.W	A1,-(A0)
*		MOVE.W	A1,-(A1)
*		MOVE.W	A1,-(A2)
*		MOVE.W	A1,-(A3)
*		MOVE.W	A1,-(A4)
*		MOVE.W	A1,-(A5)
*		MOVE.W	A1,-(A6)
*		MOVE.W	A1,-(A7)
*		
*		MOVE.W	A2,-(A0)
*		MOVE.W	A2,-(A1)
*		MOVE.W	A2,-(A2)
*		MOVE.W	A2,-(A3)
*		MOVE.W	A2,-(A4)
*		MOVE.W	A2,-(A5)
*		MOVE.W	A2,-(A6)
*		MOVE.W	A2,-(A7)
*		
*		MOVE.W	A3,-(A0)
*		MOVE.W	A3,-(A1)
*		MOVE.W	A3,-(A2)
*		MOVE.W	A3,-(A3)
*		MOVE.W	A3,-(A4)
*		MOVE.W	A3,-(A5)
*		MOVE.W	A3,-(A6)
*		MOVE.W	A3,-(A7)
*		
*		MOVE.W	A4,-(A0)
*		MOVE.W	A4,-(A1)
*		MOVE.W	A4,-(A2)
*		MOVE.W	A4,-(A3)
*		MOVE.W	A4,-(A4)
*		MOVE.W	A4,-(A5)
*		MOVE.W	A4,-(A6)
*		MOVE.W	A4,-(A7)		
*
*		MOVE.W	A5,-(A0)
*		MOVE.W	A5,-(A1)
*		MOVE.W	A5,-(A2)
*		MOVE.W	A5,-(A3)
*		MOVE.W	A5,-(A4)
*		MOVE.W	A5,-(A5)
*		MOVE.W	A5,-(A6)
*		MOVE.W	A5,-(A7)
*
*		MOVE.W	A6,-(A0)
*		MOVE.W	A6,-(A1)
*		MOVE.W	A6,-(A2)
*		MOVE.W	A6,-(A3)
*		MOVE.W	A6,-(A4)
*		MOVE.W	A6,-(A5)
*		MOVE.W	A6,-(A6)
*		MOVE.W	A6,-(A7)
*		
*		MOVE.W	A7,-(A0)
*		MOVE.W	A7,-(A1)
*		MOVE.W	A7,-(A2)
*		MOVE.W	A7,-(A3)
*		MOVE.W	A7,-(A4)
*		MOVE.W	A7,-(A5)
*		MOVE.W	A7,-(A6)
*		MOVE.W	A7,-(A7)
************************************ End with MOVE.W An to -(An)
*
************************************ Start with MOVE.W (An) to -(An)
*		MOVE.W	(A0),-(A0)
*		MOVE.W	(A0),-(A1)
*		MOVE.W	(A0),-(A2)
*		MOVE.W	(A0),-(A3)
*		MOVE.W	(A0),-(A4)
*		MOVE.W	(A0),-(A5)
*		MOVE.W	(A0),-(A6)
*		MOVE.W	(A0),-(A7)
*		
*		MOVE.W	(A1),-(A0)
*		MOVE.W	(A1),-(A1)
*		MOVE.W	(A1),-(A2)
*		MOVE.W	(A1),-(A3)
*		MOVE.W	(A1),-(A4)
*		MOVE.W	(A1),-(A5)
*		MOVE.W	(A1),-(A6)
*		MOVE.W	(A1),-(A7)
*		
*		MOVE.W	(A2),-(A0)
*		MOVE.W	(A2),-(A1)
*		MOVE.W	(A2),-(A2)
*		MOVE.W	(A2),-(A3)
*		MOVE.W	(A2),-(A4)
*		MOVE.W	(A2),-(A5)
*		MOVE.W	(A2),-(A6)
*		MOVE.W	(A2),-(A7)
*		
*		MOVE.W	(A3),-(A0)
*		MOVE.W	(A3),-(A1)
*		MOVE.W	(A3),-(A2)
*		MOVE.W	(A3),-(A3)
*		MOVE.W	(A3),-(A4)
*		MOVE.W	(A3),-(A5)
*		MOVE.W	(A3),-(A6)
*		MOVE.W	(A3),-(A7)
*		
*		MOVE.W	(A4),-(A0)
*		MOVE.W	(A4),-(A1)
*		MOVE.W	(A4),-(A2)
*		MOVE.W	(A4),-(A3)
*		MOVE.W	(A4),-(A4)
*		MOVE.W	(A4),-(A5)
*		MOVE.W	(A4),-(A6)
*		MOVE.W	(A4),-(A7)	
*
*		MOVE.W	(A5),-(A0)
*		MOVE.W	(A5),-(A1)
*		MOVE.W	(A5),-(A2)
*		MOVE.W	(A5),-(A3)
*		MOVE.W	(A5),-(A4)
*		MOVE.W	(A5),-(A5)
*		MOVE.W	(A5),-(A6)
*		MOVE.W	(A5),-(A7)	
*
*		MOVE.W	(A6),-(A0)
*		MOVE.W	(A6),-(A1)
*		MOVE.W	(A6),-(A2)
*		MOVE.W	(A6),-(A3)
*		MOVE.W	(A6),-(A4)
*		MOVE.W	(A6),-(A5)
*		MOVE.W	(A6),-(A6)
*		MOVE.W	(A6),-(A7)
*		
*		MOVE.W	(A7),-(A0)
*		MOVE.W	(A7),-(A1)
*		MOVE.W	(A7),-(A2)
*		MOVE.W	(A7),-(A3)
*		MOVE.W	(A7),-(A4)
*		MOVE.W	(A7),-(A5)
*		MOVE.W	(A7),-(A6)
*		MOVE.W	(A7),-(A7)
************************************ End with MOVE.W (An) to -(An)
*		
************************************ Start with MOVE.W (An)+ to -(An)
*		MOVE.W	(A0)+,-(A0)
*		MOVE.W	(A0)+,-(A1)
*		MOVE.W	(A0)+,-(A2)
*		MOVE.W	(A0)+,-(A3)
*		MOVE.W	(A0)+,-(A4)
*		MOVE.W	(A0)+,-(A5)
*		MOVE.W	(A0)+,-(A6)
*		MOVE.W	(A0)+,-(A7)
*
*		MOVE.W	(A1)+,-(A0)
*		MOVE.W	(A1)+,-(A1)
*		MOVE.W	(A1)+,-(A2)
*		MOVE.W	(A1)+,-(A3)
*		MOVE.W	(A1)+,-(A4)
*		MOVE.W	(A1)+,-(A5)
*		MOVE.W	(A1)+,-(A6)
*		MOVE.W	(A1)+,-(A7)
*
*		MOVE.W	(A2)+,-(A0)
*		MOVE.W	(A2)+,-(A1)
*		MOVE.W	(A2)+,-(A2)
*		MOVE.W	(A2)+,-(A3)
*		MOVE.W	(A2)+,-(A4)
*		MOVE.W	(A2)+,-(A5)
*		MOVE.W	(A2)+,-(A6)
*		MOVE.W	(A2)+,-(A7)
*
*		MOVE.W	(A3)+,-(A0)
*		MOVE.W	(A3)+,-(A1)
*		MOVE.W	(A3)+,-(A2)
*		MOVE.W	(A3)+,-(A3)
*		MOVE.W	(A3)+,-(A4)
*		MOVE.W	(A3)+,-(A5)
*		MOVE.W	(A3)+,-(A6)
*		MOVE.W	(A3)+,-(A7)
*
*		MOVE.W	(A4)+,-(A0)
*		MOVE.W	(A4)+,-(A1)
*		MOVE.W	(A4)+,-(A2)
*		MOVE.W	(A4)+,-(A3)
*		MOVE.W	(A4)+,-(A4)
*		MOVE.W	(A4)+,-(A5)
*		MOVE.W	(A4)+,-(A6)
*		MOVE.W	(A4)+,-(A7)
*
*		MOVE.W	(A5)+,-(A0)
*		MOVE.W	(A5)+,-(A1)
*		MOVE.W	(A5)+,-(A2)
*		MOVE.W	(A5)+,-(A3)
*		MOVE.W	(A5)+,-(A4)
*		MOVE.W	(A5)+,-(A5)
*		MOVE.W	(A5)+,-(A6)
*		MOVE.W	(A5)+,-(A7)
*
*		MOVE.W	(A6)+,-(A0)
*		MOVE.W	(A6)+,-(A1)
*		MOVE.W	(A6)+,-(A2)
*		MOVE.W	(A6)+,-(A3)
*		MOVE.W	(A6)+,-(A4)
*		MOVE.W	(A6)+,-(A5)
*		MOVE.W	(A6)+,-(A6)
*		MOVE.W	(A6)+,-(A7)
*
*		MOVE.W	(A7)+,-(A0)
*		MOVE.W	(A7)+,-(A1)
*		MOVE.W	(A7)+,-(A2)
*		MOVE.W	(A7)+,-(A3)
*		MOVE.W	(A7)+,-(A4)
*		MOVE.W	(A7)+,-(A5)
*		MOVE.W	(A7)+,-(A6)
*		MOVE.W	(A7)+,-(A7)
************************************ End with MOVE.W (An)+ to -(An)
*
************************************ Start with MOVE.W -(An) to -(An)
*		MOVE.W	-(A0),-(A0)
*		MOVE.W	-(A0),-(A1)
*		MOVE.W	-(A0),-(A2)
*		MOVE.W	-(A0),-(A3)
*		MOVE.W	-(A0),-(A4)
*		MOVE.W	-(A0),-(A5)
*		MOVE.W	-(A0),-(A6)
*		MOVE.W	-(A0),-(A7)
*
*		MOVE.W	-(A1),-(A0)
*		MOVE.W	-(A1),-(A1)
*		MOVE.W	-(A1),-(A2)
*		MOVE.W	-(A1),-(A3)
*		MOVE.W	-(A1),-(A4)
*		MOVE.W	-(A1),-(A5)
*		MOVE.W	-(A1),-(A6)
*		MOVE.W	-(A1),-(A7)
*
*		MOVE.W	-(A2),-(A0)
*		MOVE.W	-(A2),-(A1)
*		MOVE.W	-(A2),-(A2)
*		MOVE.W	-(A2),-(A3)
*		MOVE.W	-(A2),-(A4)
*		MOVE.W	-(A2),-(A5)
*		MOVE.W	-(A2),-(A6)
*		MOVE.W	-(A2),-(A7)
*
*		MOVE.W	-(A3),-(A0)
*		MOVE.W	-(A3),-(A1)
*		MOVE.W	-(A3),-(A2)
*		MOVE.W	-(A3),-(A3)
*		MOVE.W	-(A3),-(A4)
*		MOVE.W	-(A3),-(A5)
*		MOVE.W	-(A3),-(A6)
*		MOVE.W	-(A3),-(A7)
*
*		MOVE.W	-(A4),-(A0)
*		MOVE.W	-(A4),-(A1)
*		MOVE.W	-(A4),-(A2)
*		MOVE.W	-(A4),-(A3)
*		MOVE.W	-(A4),-(A4)
*		MOVE.W	-(A4),-(A5)
*		MOVE.W	-(A4),-(A6)
*		MOVE.W	-(A4),-(A7)
*
*		MOVE.W	-(A5),-(A0)
*		MOVE.W	-(A5),-(A1)
*		MOVE.W	-(A5),-(A2)
*		MOVE.W	-(A5),-(A3)
*		MOVE.W	-(A5),-(A4)
*		MOVE.W	-(A5),-(A5)
*		MOVE.W	-(A5),-(A6)
*		MOVE.W	-(A5),-(A7)
*
*		MOVE.W	-(A6),-(A0)
*		MOVE.W	-(A6),-(A1)
*		MOVE.W	-(A6),-(A2)
*		MOVE.W	-(A6),-(A3)
*		MOVE.W	-(A6),-(A4)
*		MOVE.W	-(A6),-(A5)
*		MOVE.W	-(A6),-(A6)
*		MOVE.W	-(A6),-(A7)
*
*		MOVE.W	-(A7),-(A0)
*		MOVE.W	-(A7),-(A1)
*		MOVE.W	-(A7),-(A2)
*		MOVE.W	-(A7),-(A3)
*		MOVE.W	-(A7),-(A4)
*		MOVE.W	-(A7),-(A5)
*		MOVE.W	-(A7),-(A6)
*		MOVE.W	-(A7),-(A7)
************************************ End with MOVE.W -(An) to -(An)
*
************************************ Start with MOVE.W (xxxx).W to -(An)
*		MOVE.W	$00008000,-(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,-(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00,-(A0)
*		MOVE.W	$0,-(A0)
*		MOVE.W	$1234,-(A0)
*		MOVE.W	$56,-(A0)
*		MOVE.W	$216,-(A0)
*		MOVE.W	$A,-(A0)
*
*		MOVE.W	$00000000,-(A3)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,-(A3)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00,-(A3)
*		MOVE.W	$0,-(A3)
*		MOVE.W	$22,-(A3)
*		MOVE.W	$420,-(A3)
*		MOVE.W	$1222,-(A3)
*		MOVE.W	$12,-(A3)
*
*		MOVE.W	$00000000,-(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,-(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00,-(A6)
*		MOVE.W	$0,-(A6)
*		MOVE.W	$12,-(A6)
*		MOVE.W	$106,-(A6)
*		MOVE.W	$5554,-(A6)
*		MOVE.W	$E8,-(A6)
*
*		MOVE.W	$00000000,-(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$00007F00,-(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	$12,-(A7)
*		MOVE.W	$106,-(A7)
*		MOVE.W	$5554,-(A7)
*		MOVE.W	$2466,-(A7)
*		MOVE.W	$0FF8,-(A7)
*		MOVE.W	$E8,-(A7)
************************************ End with MOVE.W (xxxx).W to -(An)	
*
************************************ Start with MOVE.W (xxxx).L to -(An)
*		MOVE.W $00008000,-(A0)		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,-(A0)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,-(A0)
*		MOVE.W $00009876,-(A0)		
*		MOVE.W $FFEE0202,-(A0)		
*		MOVE.W $12345678,-(A0)
*		MOVE.W $AAAAAAAA,-(A0)
*		MOVE.W $B2C3A1E4,-(A0)
*
*		MOVE.W $00008000,-(A3)		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,-(A3)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,-(A3)
*		MOVE.W $00009876,-(A3)		
*		MOVE.W $FFEE0202,-(A3)		
*		MOVE.W $12345678,-(A3)
*		MOVE.W $AAAAAAAA,-(A3)
*		MOVE.W $B2C3A1E4,-(A3)
*
*		MOVE.W $00008000,-(A5)		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,-(A5)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,-(A5)
*		MOVE.W $00009876,-(A5)		
*		MOVE.W $FFEE0202,-(A5)		
*		MOVE.W $12345678,-(A5)
*		MOVE.W $AAAAAAAA,-(A5)
*		MOVE.W $B2C3A1E4,-(A5)
*		
*		MOVE.W $00008000,-(A7)		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,-(A7)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,-(A7)
*		MOVE.W $00009876,-(A7)		
*		MOVE.W $FFEE0202,-(A7)		
*		MOVE.W $12345678,-(A7)
*		MOVE.W $AAAAAAAA,-(A7)
*		MOVE.W $B2C3A1E4,-(A7)
************************************ End with MOVE.W (xxxx).L to -(An)	
*
************************************ Start with MOVE.W #<data> to -(An)
*		MOVE.W #$0080,-(A0)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An). 
*		MOVE.W #$00F2,-(A0)
*		MOVE.W #$0112,-(A0)
*		MOVE.W #$1112,-(A0)
*		MOVE.W #$8000,-(A0)
*		MOVE.W #$A112,-(A0)
*		MOVE.W #$7F72,-(A0)
*		MOVE.W #$9000,-(A0)
*		
*		MOVE.W #$0080,-(A2)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An). 
*		MOVE.W #$00F2,-(A2)
*		MOVE.W #$0112,-(A2)
*		MOVE.W #$1110,-(A2)
*		MOVE.W #$8000,-(A2)
*		MOVE.W #$A110,-(A2)
*		MOVE.W #$7F72,-(A2)
*		MOVE.W #$9000,-(A2)	
*
*		MOVE.W #$0080,-(A4)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An). 
*		MOVE.W #$00F2,-(A4)
*		MOVE.W #$0110,-(A4)
*		MOVE.W #$1110,-(A4)
*		MOVE.W #$8000,-(A4)
*		MOVE.W #$A110,-(A4)
*		MOVE.W #$7F72,-(A4)
*		MOVE.W #$9000,-(A4)
*
*		MOVE.W #$0080,-(A6)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An). 
*		MOVE.W #$00F0,-(A6)
*		MOVE.W #$011A,-(A6)
*		MOVE.W #$111A,-(A6)
*		MOVE.W #$8000,-(A6)
*		MOVE.W #$A110,-(A6)
*		MOVE.W #$7F72,-(A6)
*		MOVE.W #$9000,-(A6)
*
*		MOVE.W #$0080,-(A7)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An). 
*		MOVE.W #$00F2,-(A7)
*		MOVE.W #$0112,-(A7)
*		MOVE.W #$1112,-(A7)
*		MOVE.W #$8000,-(A7)
*		MOVE.W #$A110,-(A7)
*		MOVE.W #$7F70,-(A7)
*		MOVE.W #$9000,-(A7)
************************************ End with MOVE.W #<data> to -(An)		
*
*		*** Destination (xxxx).W
************************************ Start with MOVE.W Dn to (xxxx).W
*		MOVE.W	D0,$00000000
*		MOVE.W	D0,$00007FF0
*		MOVE.W	D0,$FFFF8000
*		MOVE.W	D0,$FFFFFFF0
*		MOVE.W	D0,$5D24
*		MOVE.W	D0,$2222
*		MOVE.W	D0,$A
*		MOVE.W	D0,$12
*		MOVE.W	D0,$BBC
*		MOVE.W	D0,$6000
*		MOVE.W	D0,$00003456
*		MOVE.W	D0,$FFFFABDC
*
*		MOVE.W	D1,$00000000
*		MOVE.W	D1,$00007FF0
*		MOVE.W	D1,$FFFF8000
*		MOVE.W	D1,$FFFFFFF0
*		MOVE.W	D1,$5D24
*		MOVE.W	D1,$2222
*		MOVE.W	D1,$A
*		MOVE.W	D1,$12
*		MOVE.W	D1,$BBC
*		MOVE.W	D1,$6000
*		MOVE.W	D1,$00003456
*		MOVE.W	D1,$FFFFABDC
*
*		MOVE.W	D2,$00000000
*		MOVE.W	D2,$00007FF0
*		MOVE.W	D2,$FFFF8000
*		MOVE.W	D2,$FFFFFFF0
*		MOVE.W	D2,$5D24
*		MOVE.W	D2,$2222
*		MOVE.W	D2,$A
*		MOVE.W	D2,$12
*		MOVE.W	D2,$BBC
*		MOVE.W	D2,$6000
*		MOVE.W	D2,$00003456
*		MOVE.W	D2,$FFFFABDC
*
*		MOVE.W	D3,$00000000
*		MOVE.W	D3,$00007FF0
*		MOVE.W	D3,$FFFF8000
*		MOVE.W	D3,$FFFFFFF0
*		MOVE.W	D3,$5D24
*		MOVE.W	D3,$2222
*		MOVE.W	D3,$A
*		MOVE.W	D3,$12
*		MOVE.W	D3,$BBC
*		MOVE.W	D3,$6000
*		MOVE.W	D3,$00003456
*		MOVE.W	D3,$FFFFABDC
*
*		MOVE.W	D4,$00000000
*		MOVE.W	D4,$00007FF0
*		MOVE.W	D4,$FFFF8000
*		MOVE.W	D4,$FFFFFFF0
*		MOVE.W	D4,$5D24
*		MOVE.W	D4,$2222
*		MOVE.W	D4,$A
*		MOVE.W	D4,$12
*		MOVE.W	D4,$BBC
*		MOVE.W	D4,$6000
*		MOVE.W	D4,$00003456
*		MOVE.W	D4,$FFFFABDC
*
*		MOVE.W	D5,$00000000
*		MOVE.W	D5,$00007FF0
*		MOVE.W	D5,$FFFF8000
*		MOVE.W	D5,$FFFFFFF0
*		MOVE.W	D5,$5D24
*		MOVE.W	D5,$2222
*		MOVE.W	D5,$A
*		MOVE.W	D5,$12
*		MOVE.W	D5,$BBC
*		MOVE.W	D5,$6000
*		MOVE.W	D5,$00003456
*		MOVE.W	D5,$FFFFABDC
*
*		MOVE.W	D6,$00000000
*		MOVE.W	D6,$00007FF0
*		MOVE.W	D6,$FFFF8000
*		MOVE.W	D6,$FFFFFFF0
*		MOVE.W	D6,$5D24
*		MOVE.W	D6,$2222
*		MOVE.W	D6,$A
*		MOVE.W	D6,$12
*		MOVE.W	D6,$BBC
*		MOVE.W	D6,$6000
*		MOVE.W	D6,$00003456
*		MOVE.W	D6,$FFFFABDC
*
*		MOVE.W	D7,$00000000
*		MOVE.W	D7,$00007FF0
*		MOVE.W	D7,$FFFF8000
*		MOVE.W	D7,$FFFFFFF0
*		MOVE.W	D7,$5D24
*		MOVE.W	D7,$2222
*		MOVE.W	D7,$A
*		MOVE.W	D7,$12
*		MOVE.W	D7,$BBC
*		MOVE.W	D7,$6000
*		MOVE.W	D7,$00003456
*		MOVE.W	D7,$FFFFABDC		
************************************ End with MOVE.W Dn to (xxxx).W
*		
************************************ Start with MOVE.W An to (xxxx).W
*		MOVE.W	A0,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	A0,$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	A0,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	A0,$FFFFFFF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	A0,$5D24
*		MOVE.W	A0,$2222
*		MOVE.W	A0,$A
*		MOVE.W	A0,$12
*		MOVE.W	A0,$BBC
*		MOVE.W	A0,$6000
*		MOVE.W	A0,$00003456
*		MOVE.W	A0,$FFFFABDC
*		
*		MOVE.W	A1,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	A1,$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	A1,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	A1,$FFFFFFF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W	A1,$5D24
*		MOVE.W	A1,$2222
*		MOVE.W	A1,$A
*		MOVE.W	A1,$12
*		MOVE.W	A1,$BBC
*		MOVE.W	A1,$6000
*		MOVE.W	A1,$00003456
*		MOVE.W	A1,$FFFFABDC		
*
*		MOVE.W	A2,$00000000
*		MOVE.W	A2,$00007FF0
*		MOVE.W	A2,$FFFF8000
*		MOVE.W	A2,$FFFFFFF0
*		MOVE.W	A2,$5D24
*		MOVE.W	A2,$2222
*		MOVE.W	A2,$A
*		MOVE.W	A2,$12
*		MOVE.W	A2,$BBC
*		MOVE.W	A2,$6000
*		MOVE.W	A2,$00003456
*		MOVE.W	A2,$FFFFABDC
*
*		MOVE.W	A3,$00000000
*		MOVE.W	A3,$00007FF0
*		MOVE.W	A3,$FFFF8000
*		MOVE.W	A3,$FFFFFFF0
*		MOVE.W	A3,$5D24
*		MOVE.W	A3,$2222
*		MOVE.W	A3,$A
*		MOVE.W	A3,$12
*		MOVE.W	A3,$BBC
*		MOVE.W	A3,$6000
*		MOVE.W	A3,$00003456
*		MOVE.W	A3,$FFFFABDC
*		
*		MOVE.W	A4,$00000000
*		MOVE.W	A4,$00007FF0
*		MOVE.W	A4,$FFFF8000
*		MOVE.W	A4,$FFFFFFF0
*		MOVE.W	A4,$5D24
*		MOVE.W	A4,$2222
*		MOVE.W	A4,$A
*		MOVE.W	A4,$12
*		MOVE.W	A4,$BBC
*		MOVE.W	A4,$6000
*		MOVE.W	A4,$00003456
*		MOVE.W	A4,$FFFFABDC
*		
*		MOVE.W	A5,$00000000
*		MOVE.W	A5,$00007FF0
*		MOVE.W	A5,$FFFF8000
*		MOVE.W	A5,$FFFFFFF0
*		MOVE.W	A5,$5D24
*		MOVE.W	A5,$2222
*		MOVE.W	A5,$A
*		MOVE.W	A5,$12
*		MOVE.W	A5,$BBC
*		MOVE.W	A5,$6000
*		MOVE.W	A5,$00003456
*		MOVE.W	A5,$FFFFABDC
*		
*		MOVE.W	A6,$00000000
*		MOVE.W	A6,$00007FF0
*		MOVE.W	A6,$FFFF8000
*		MOVE.W	A6,$FFFFFFF0
*		MOVE.W	A6,$5D24
*		MOVE.W	A6,$2222
*		MOVE.W	A6,$A
*		MOVE.W	A6,$12
*		MOVE.W	A6,$BBC
*		MOVE.W	A6,$6000
*		MOVE.W	A6,$00003456
*		MOVE.W	A6,$FFFFABDC
*		
*		MOVE.W	A7,$00000000
*		MOVE.W	A7,$00007FF0
*		MOVE.W	A7,$FFFF8000
*		MOVE.W	A7,$FFFFFFF0
*		MOVE.W	A7,$5D24
*		MOVE.W	A7,$2222
*		MOVE.W	A7,$A
*		MOVE.W	A7,$12
*		MOVE.W	A7,$BBC
*		MOVE.W	A7,$6000
*		MOVE.W	A7,$00003456
*		MOVE.W	A7,$FFFFABDC
************************************ End with MOVE.W An to (xxxx).W
*		
************************************ Start with MOVE.W (An) to (xxxx).W
*		MOVE.W	(A0),$00000000
*		MOVE.W	(A0),$00007FF0
*		MOVE.W	(A1),$FFFF8000
*		MOVE.W	(A1),$FFFFFFF0
*		MOVE.W	(A2),$5D20
*		MOVE.W	(A2),$2222
*		MOVE.W	(A3),$A
*		MOVE.W	(A3),$BBC
*		MOVE.W	(A4),$6000
*		MOVE.W	(A4),$1456
*		MOVE.W	(A5),$00006540
*		MOVE.W	(A5),$00002456
*		MOVE.W	(A6),$00004456
*		MOVE.W	(A6),$FFFFA000
*		MOVE.W	(A7),$FFFFB456
*		MOVE.W	(A7),$FFFFABDC	
************************************ End with MOVE.W (An) to (xxxx).W
*		
************************************ Start with MOVE.W (An)+ to (xxxx).W
*		MOVE.W	(A0)+,$00000000
*		MOVE.W	(A0)+,$00007FF0
*		MOVE.W	(A1)+,$FFFF8000
*		MOVE.W	(A1)+,$FFFFFFF0
*		MOVE.W	(A2)+,$5D20
*		MOVE.W	(A2)+,$2222
*		MOVE.W	(A3)+,$A
*		MOVE.W	(A3)+,$BBC
*		MOVE.W	(A4)+,$6000
*		MOVE.W	(A4)+,$1456
*		MOVE.W	(A5)+,$00006540
*		MOVE.W	(A5)+,$00002456
*		MOVE.W	(A6)+,$00004456
*		MOVE.W	(A6)+,$FFFFA000
*		MOVE.W	(A7)+,$FFFFB456
*		MOVE.W	(A7)+,$FFFFABDC
************************************ End with MOVE.W (An)+ to (xxxx).W
*
************************************ Start with MOVE.W -(An) to (xxxx).W
*		MOVE.W	-(A0),$00000000
*		MOVE.W	-(A0),$00007FF0
*		MOVE.W	-(A1),$FFFF8000
*		MOVE.W	-(A1),$FFFFFFF0
*		MOVE.W	-(A2),$5D20
*		MOVE.W	-(A2),$2222
*		MOVE.W	-(A3),$A
*		MOVE.W	-(A3),$BBC
*		MOVE.W	-(A4),$6000
*		MOVE.W	-(A4),$1456
*		MOVE.W	-(A5),$00006540
*		MOVE.W	-(A5),$00002456
*		MOVE.W	-(A6),$00004456
*		MOVE.W	-(A6),$FFFFA000
*		MOVE.W	-(A7),$FFFFB456
*		MOVE.W	-(A7),$FFFFABDC	
************************************ End with MOVE.W -(An) to (xxxx).W
*		
************************************ Start with MOVE.W (xxxx).W to (xxxx).W
*		MOVE.W $00000000,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $00007F00,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $FFFF8000,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $FFFFFF00,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $00,$00000000
*		MOVE.W $0,$00000000
*		MOVE.W $1234,$00000000
*		MOVE.W $56,$00000000
*		MOVE.W $216,$00000000
*		MOVE.W $7778,$00000000
*		MOVE.W $A,$00000000
*
*		MOVE.W $00000000,$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $00007F00,$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $FFFF8000,$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $FFFFFF00,$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $00,$00007FF0
*		MOVE.W $0,$00007FF0
*		MOVE.W $22,$00007FF0
*		MOVE.W $428,$00007FF0
*		MOVE.W $3876,$00007FF0
*		MOVE.W $1222,$00007FF0
*		MOVE.W $12,$00007FF0
*
*		MOVE.W $00000000,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $00007F00,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $FFFF8000,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $FFFFFF00,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $00,$FFFF8000
*		MOVE.W $0,$FFFF8000
*		MOVE.W $12,$FFFF8000
*		MOVE.W $106,$FFFF8000
*		MOVE.W $5554,$FFFF8000
*		MOVE.W $2466,$FFFF8000
*		MOVE.W $0FF8,$FFFF8000
*		MOVE.W $E8,$FFFF8000
*		
*		MOVE.W $00000000,$FFFFFFF0		
*		MOVE.W $00007F00,$FFFFFFF0		
*		MOVE.W $FFFF8000,$FFFFFFF0		
*		MOVE.W $FFFFFF00,$FFFFFFF0		
*		MOVE.W $00,$FFFFFFF0
*		MOVE.W $0,$FFFFFFF0
*		MOVE.W $12,$FFFFFFF0
*		MOVE.W $106,$FFFFFFF0
*		MOVE.W $5554,$FFFFFFF0
*		MOVE.W $2466,$FFFFFFF0
*		MOVE.W $0FF8,$FFFFFFF0
*		MOVE.W $E8,$FFFFFFF0
*
*		MOVE.W $00000000,$5D20		
*		MOVE.W $00007F00,$5D20			
*		MOVE.W $FFFF8000,$5D20			
*		MOVE.W $FFFFFF00,$5D20		
*		MOVE.W $00,$5D20
*		MOVE.W $0,$5D20
*		MOVE.W $12,$5D20
*		MOVE.W $106,$5D20
*		MOVE.W $5554,$5D20
*		MOVE.W $2466,$5D20
*		MOVE.W $0FF8,$5D20
*		MOVE.W $E8,$5D20
*
*		MOVE.W $00000000,$2222		
*		MOVE.W $00007F00,$2222		
*		MOVE.W $FFFF8000,$2222		
*		MOVE.W $FFFFFF00,$2222		
*		MOVE.W $00,$2222
*		MOVE.W $0,$2222
*		MOVE.W $12,$2222
*		MOVE.W $106,$2222
*		MOVE.W $5554,$2222
*		MOVE.W $2466,$2222
*		MOVE.W $0FF8,$2222
*		MOVE.W $E8,$2222	
*
*		MOVE.W $00000000,$A	
*		MOVE.W $00007F00,$A	
*		MOVE.W $FFFF8000,$A	
*		MOVE.W $FFFFFF00,$A	
*		MOVE.W $00,$A
*		MOVE.W $0,$A
*		MOVE.W $12,$A
*		MOVE.W $106,$A
*		MOVE.W $5554,$A
*		MOVE.W $2466,$A
*		MOVE.W $0FF8,$A
*		MOVE.W $E8,$A
*
*		MOVE.W $00000000,$BBC		
*		MOVE.W $00007F00,$BBC		
*		MOVE.W $FFFF8000,$BBC		
*		MOVE.W $FFFFFF00,$BBC		
*		MOVE.W $00,$BBC
*		MOVE.W $0,$BBC
*		MOVE.W $12,$BBC
*		MOVE.W $106,$BBC
*		MOVE.W $5554,$BBC
*		MOVE.W $2466,$BBC
*		MOVE.W $0FF8,$BBC
*		MOVE.W $E8,$BBC
*
*		MOVE.W $00000000,$6000		
*		MOVE.W $00007F00,$6000		
*		MOVE.W $FFFF8000,$6000		
*		MOVE.W $FFFFFF00,$6000		
*		MOVE.W $00,$6000
*		MOVE.W $0,$6000
*		MOVE.W $12,$6000
*		MOVE.W $106,$6000
*		MOVE.W $5554,$6000
*		MOVE.W $2466,$6000
*		MOVE.W $0FF8,$6000
*		MOVE.W $E8,$6000
*
*		MOVE.W $00000000,$00003456		
*		MOVE.W $00007F00,$00003456		
*		MOVE.W $FFFF8000,$00003456		
*		MOVE.W $FFFFFF00,$00003456		
*		MOVE.W $00,$00003456
*		MOVE.W $0,$00003456
*		MOVE.W $12,$00003456
*		MOVE.W $106,$00003456
*		MOVE.W $5554,$00003456
*		MOVE.W $2468,$00003456
*		MOVE.W $0FF8,$00003456
*		MOVE.W $E8,$00003456
*
*		MOVE.W $00000000,$FFFFABDC		
*		MOVE.W $00007F00,$FFFFABDC		
*		MOVE.W $FFFF8000,$FFFFABDC		
*		MOVE.W $FFFFFF00,$FFFFABDC		
*		MOVE.W $00,$FFFFABDC
*		MOVE.W $0,$FFFFABDC
*		MOVE.W $12,$FFFFABDC
*		MOVE.W $106,$FFFFABDC
*		MOVE.W $5554,$FFFFABDC
*		MOVE.W $2466,$FFFFABDC
*		MOVE.W $0FF8,$FFFFABDC
*		MOVE.W $E8,$FFFFABDC	
************************************ End with MOVE.W (xxxx).W to (xxxx).W	
*
************************************ Start with MOVE.W (xxxx).L to (xxxx).W
*		MOVE.W $00008000,$00000000		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7F00,$00000000		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,$00000000
*		MOVE.W $00009876,$00000000		
*		MOVE.W $FFEE0202,$00000000		
*		MOVE.W $12345678,$00000000
*		MOVE.W $AAAAAAAA,$00000000
*		MOVE.W $B2C3A1E2,$00000000
*		MOVE.W $77777774,$00000000
*		MOVE.W $CCCCCCCC,$00000000
*		MOVE.W $C7C77AA6,$00000000
*		MOVE.W $10101010,$00000000
*		
*		MOVE.W $00008000,$00007FF0
*		MOVE.W $FFFF7F00,$00007FF0
*		MOVE.W $00009000,$00007FF0
*		MOVE.W $00009876,$00007FF0
*		MOVE.W $FFEE0202,$00007FF0
*		MOVE.W $12345678,$00007FF0
*		MOVE.W $AAAAAAAA,$00007FF0
*		MOVE.W $B2C3A1E2,$00007FF0
*		MOVE.W $77777774,$00007FF0
*		MOVE.W $CCCCCCCC,$00007FF0
*		MOVE.W $C7C77AA6,$00007FF0
*		MOVE.W $10101010,$00007FF0
*
*		MOVE.W $00008000,$FFFF8000
*		MOVE.W $FFFF7F00,$FFFF8000
*		MOVE.W $00009000,$FFFF8000
*		MOVE.W $00009876,$FFFF8000
*		MOVE.W $FFEE0202,$FFFF8000
*		MOVE.W $12345678,$FFFF8000
*		MOVE.W $AAAAAAAA,$FFFF8000
*		MOVE.W $B2C3A1E2,$FFFF8000
*		MOVE.W $77777774,$FFFF8000
*		MOVE.W $CCCCCCCC,$FFFF8000
*		MOVE.W $C7C77AA6,$FFFF8000
*		MOVE.W $10101010,$FFFF8000
*		
*		MOVE.W $00008000,$FFFFFFF0
*		MOVE.W $FFFF7F00,$FFFFFFF0
*		MOVE.W $00009000,$FFFFFFF0
*		MOVE.W $00009876,$FFFFFFF0
*		MOVE.W $FFEE0202,$FFFFFFF0
*		MOVE.W $12345678,$FFFFFFF0
*		MOVE.W $AAAAAAAA,$FFFFFFF0
*		MOVE.W $B2C3A1E2,$FFFFFFF0
*		MOVE.W $77777774,$FFFFFFF0
*		MOVE.W $CCCCCCCC,$FFFFFFF0
*		MOVE.W $C7C77AA6,$FFFFFFF0
*		MOVE.W $10101010,$FFFFFFF0
*
*		MOVE.W $00008000,$5D20
*		MOVE.W $FFFF7F00,$5D20
*		MOVE.W $00009000,$5D20
*		MOVE.W $00009876,$5D20
*		MOVE.W $FFEE0202,$5D20
*		MOVE.W $12345678,$5D20
*		MOVE.W $AAAAAAAA,$5D20
*		MOVE.W $B2C3A1E2,$5D20
*		MOVE.W $77777774,$5D20
*		MOVE.W $CCCCCCCC,$5D20
*		MOVE.W $C7C77AA6,$5D20
*		MOVE.W $10101010,$5D20
*
*		MOVE.W $00008000,$2222
*		MOVE.W $FFFF7F00,$2222
*		MOVE.W $00009000,$2222
*		MOVE.W $00009876,$2222
*		MOVE.W $FFEE0202,$2222
*		MOVE.W $12345678,$2222
*		MOVE.W $AAAAAAAA,$2222
*		MOVE.W $B2C3A1E2,$2222
*		MOVE.W $77777774,$2222
*		MOVE.W $CCCCCCCC,$2222
*		MOVE.W $C7C77AA6,$2222
*		MOVE.W $10101010,$2222	
*
*		MOVE.W $00008000,$A
*		MOVE.W $FFFF7F00,$A
*		MOVE.W $00009000,$A
*		MOVE.W $00009876,$A
*		MOVE.W $FFEE0202,$A
*		MOVE.W $12345678,$A
*		MOVE.W $AAAAAAAA,$A
*		MOVE.W $B2C3A1E2,$A
*		MOVE.W $77777774,$A
*		MOVE.W $CCCCCCCC,$A
*		MOVE.W $C7C77AA6,$A
*		MOVE.W $10101010,$A
*
*		MOVE.W $00008000,$BBC
*		MOVE.W $FFFF7F00,$BBC
*		MOVE.W $00009000,$BBC
*		MOVE.W $00009876,$BBC
*		MOVE.W $FFEE0202,$BBC
*		MOVE.W $12345678,$BBC
*		MOVE.W $AAAAAAAA,$BBC
*		MOVE.W $B2C3A1E2,$BBC
*		MOVE.W $77777774,$BBC
*		MOVE.W $CCCCCCCC,$BBC
*		MOVE.W $C7C77AA6,$BBC
*		MOVE.W $10101010,$BBC
*		
*		MOVE.W $00008000,$6000
*		MOVE.W $FFFF7F00,$6000
*		MOVE.W $00009000,$6000
*		MOVE.W $00009876,$6000
*		MOVE.W $FFEE0202,$6000
*		MOVE.W $12345678,$6000
*		MOVE.W $AAAAAAAA,$6000
*		MOVE.W $B2C3A1E2,$6000
*		MOVE.W $77777774,$6000
*		MOVE.W $CCCCCCCC,$6000
*		MOVE.W $C7C77AA6,$6000
*		MOVE.W $10101010,$6000
*		
*		MOVE.W $00008000,$00003456
*		MOVE.W $FFFF7F00,$00003456
*		MOVE.W $00009000,$00003456
*		MOVE.W $00009876,$00003456
*		MOVE.W $FFEE0202,$00003456
*		MOVE.W $12345678,$00003456
*		MOVE.W $AAAAAAAA,$00003456
*		MOVE.W $B2C3A1E2,$00003456
*		MOVE.W $77777774,$00003456
*		MOVE.W $CCCCCCCC,$00003456
*		MOVE.W $C7C77AA6,$00003456
*		MOVE.W $10101010,$00003456
*
*		MOVE.W $00008000,$FFFFABDC	
*		MOVE.W $FFFF7F00,$FFFFABDC	
*		MOVE.W $00009000,$FFFFABDC
*		MOVE.W $00009876,$FFFFABDC	
*		MOVE.W $FFEE0202,$FFFFABDC	
*		MOVE.W $12345678,$FFFFABDC
*		MOVE.W $AAAAAAAA,$FFFFABDC
*		MOVE.W $B2C3A1E2,$FFFFABDC
*		MOVE.W $77777774,$FFFFABDC
*		MOVE.W $CCCCCCCC,$FFFFABDC
*		MOVE.W $C7C77AA6,$FFFFABDC
*		MOVE.W $10101010,$FFFFABDC
************************************ End with MOVE.W (xxxx).L to (xxxx).W	
*
************************************ Start with MOVE.W <data> to (xxxx).W
*		MOVE.W #$0080,$00000000		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (xxxx).W. 
*		MOVE.W #$80,$00000000
*		MOVE.W #$00FF,$00000000
*		MOVE.W #$11,$00000000
*		MOVE.W #$12,$00000000
*		MOVE.W #$AA,$00000000
*		MOVE.W #$B3,$00000000
*		MOVE.W #$C1,$00000000
*		MOVE.W #$CC,$00000000
*		MOVE.W #$98,$00000000
*		MOVE.W #$FA,$00000000
*		MOVE.W #$AF,$00000000
*		MOVE.W #$A2,$00000000
*		MOVE.W #$D8,$00000000
*		MOVE.W #$55,$00000000
*		MOVE.W #$3C,$00000000
*		MOVE.W #$EF,$00000000
*		MOVE.W #$0092,$00000000
*		MOVE.W #$00BB,$00000000
*
*		MOVE.W #$0080,$00007FFA		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (xxxx).W. 
*		MOVE.W #$80,$00007FFA
*		MOVE.W #$00FF,$00007FFA
*		MOVE.W #$11,$00007FFA
*		MOVE.W #$12,$00007FFA
*		MOVE.W #$AA,$00007FFA
*		MOVE.W #$B3,$00007FFA
*		MOVE.W #$C1,$00007FFA
*		MOVE.W #$CC,$00007FFA
*		MOVE.W #$98,$00007FFA
*		MOVE.W #$FA,$00007FFA
*		MOVE.W #$AF,$00007FFA
*		MOVE.W #$A2,$00007FFA
*		MOVE.W #$D8,$00007FFA
*		MOVE.W #$55,$00007FFA
*		MOVE.W #$3C,$00007FFA
*		MOVE.W #$EF,$00007FFA
*		MOVE.W #$0092,$00007FFA
*		MOVE.W #$00BB,$00007FFA
*		
*		MOVE.W #$0080,$FFFF8000 
*		MOVE.W #$80,$FFFF8000 
*		MOVE.W #$00FF,$FFFF8000 
*		MOVE.W #$11,$FFFF8000 
*		MOVE.W #$12,$FFFF8000 
*		MOVE.W #$AA,$FFFF8000 
*		MOVE.W #$B3,$FFFF8000 
*		MOVE.W #$C1,$FFFF8000 
*		MOVE.W #$CC,$FFFF8000 
*		MOVE.W #$98,$FFFF8000 
*		MOVE.W #$FA,$FFFF8000 
*		MOVE.W #$AF,$FFFF8000 
*		MOVE.W #$A2,$FFFF8000 
*		MOVE.W #$D8,$FFFF8000 
*		MOVE.W #$55,$FFFF8000 
*		MOVE.W #$3C,$FFFF8000 
*		MOVE.W #$EF,$FFFF8000 
*		MOVE.W #$0092,$FFFF8000 
*		MOVE.W #$00BB,$FFFF8000
*
*		MOVE.W #$0080,$FFFFFFFA
*		MOVE.W #$80,$FFFFFFFA
*		MOVE.W #$00FF,$FFFFFFFA
*		MOVE.W #$11,$FFFFFFFA
*		MOVE.W #$12,$FFFFFFFA
*		MOVE.W #$AA,$FFFFFFFA
*		MOVE.W #$B3,$FFFFFFFA
*		MOVE.W #$C1,$FFFFFFFA
*		MOVE.W #$CC,$FFFFFFFA
*		MOVE.W #$98,$FFFFFFFA
*		MOVE.W #$FA,$FFFFFFFA
*		MOVE.W #$AF,$FFFFFFFA
*		MOVE.W #$A2,$FFFFFFFA
*		MOVE.W #$D8,$FFFFFFFA
*		MOVE.W #$55,$FFFFFFFA
*		MOVE.W #$3C,$FFFFFFFA
*		MOVE.W #$EF,$FFFFFFFA
*		MOVE.W #$0092,$FFFFFFFA
*		MOVE.W #$00BB,$FFFFFFFA
*
*		MOVE.W #$0080,$12F0
*		MOVE.W #$80,$12F0
*		MOVE.W #$00FF,$12F0
*		MOVE.W #$11,$12F0
*		MOVE.W #$12,$12F0
*		MOVE.W #$AA,$12F0
*		MOVE.W #$B3,$12F0
*		MOVE.W #$C1,$12F0
*		MOVE.W #$CC,$12F0
*		MOVE.W #$98,$12F0
*		MOVE.W #$FA,$12F0
*		MOVE.W #$AF,$12F0
*		MOVE.W #$A2,$12F0
*		MOVE.W #$D8,$12F0
*		MOVE.W #$55,$12F0
*		MOVE.W #$3C,$12F0
*		MOVE.W #$EF,$12F0
*		MOVE.W #$0092,$12F0
*		MOVE.W #$00BB,$12F0
*		
*		MOVE.W #$0080,$778
*		MOVE.W #$80,$778
*		MOVE.W #$00FF,$778
*		MOVE.W #$11,$778
*		MOVE.W #$12,$778
*		MOVE.W #$AA,$778
*		MOVE.W #$B3,$778
*		MOVE.W #$C1,$778
*		MOVE.W #$CC,$778
*		MOVE.W #$98,$778
*		MOVE.W #$FA,$778
*		MOVE.W #$AF,$778
*		MOVE.W #$A2,$778
*		MOVE.W #$D8,$778
*		MOVE.W #$55,$778
*		MOVE.W #$3C,$778
*		MOVE.W #$EF,$778
*		MOVE.W #$0092,$778
*		MOVE.W #$00BB,$778
*
*		MOVE.W #$0080,$2AAA
*		MOVE.W #$80,$2AAA
*		MOVE.W #$00FF,$2AAA
*		MOVE.W #$11,$2AAA
*		MOVE.W #$12,$2AAA
*		MOVE.W #$AA,$2AAA
*		MOVE.W #$B3,$2AAA
*		MOVE.W #$C1,$2AAA
*		MOVE.W #$CC,$2AAA
*		MOVE.W #$98,$2AAA
*		MOVE.W #$FA,$2AAA
*		MOVE.W #$AF,$2AAA
*		MOVE.W #$A2,$2AAA
*		MOVE.W #$D8,$2AAA
*		MOVE.W #$55,$2AAA
*		MOVE.W #$3C,$2AAA
*		MOVE.W #$EF,$2AAA
*		MOVE.W #$0092,$2AAA
*		MOVE.W #$00BB,$2AAA
*
*		MOVE.W #$0080,$7000
*		MOVE.W #$80,$7000
*		MOVE.W #$00FF,$7000
*		MOVE.W #$11,$7000
*		MOVE.W #$12,$7000
*		MOVE.W #$AA,$7000
*		MOVE.W #$B3,$7000
*		MOVE.W #$C1,$7000
*		MOVE.W #$CC,$7000
*		MOVE.W #$98,$7000
*		MOVE.W #$FA,$7000
*		MOVE.W #$AF,$7000
*		MOVE.W #$A2,$7000
*		MOVE.W #$D8,$7000
*		MOVE.W #$55,$7000
*		MOVE.W #$3C,$7000
*		MOVE.W #$EF,$7000
*		MOVE.W #$0092,$7000
*		MOVE.W #$00BB,$7000
*
*		MOVE.W #$0080,$FFFF9002
*		MOVE.W #$80,$FFFF9002
*		MOVE.W #$00FF,$FFFF9002
*		MOVE.W #$11,$FFFF9002
*		MOVE.W #$12,$FFFF9002
*		MOVE.W #$AA,$FFFF9002
*		MOVE.W #$B3,$FFFF9002
*		MOVE.W #$C1,$FFFF9002
*		MOVE.W #$CC,$FFFF9002
*		MOVE.W #$98,$FFFF9002
*		MOVE.W #$FA,$FFFF9002
*		MOVE.W #$AF,$FFFF9002
*		MOVE.W #$A2,$FFFF9002
*		MOVE.W #$D8,$FFFF9002
*		MOVE.W #$55,$FFFF9002
*		MOVE.W #$3C,$FFFF9002
*		MOVE.W #$EF,$FFFF9002
*		MOVE.W #$0092,$FFFF9002
*		MOVE.W #$00BB,$FFFF9002
*
*		MOVE.W #$0080,$FFFFABDC
*		MOVE.W #$80,$FFFFABDC
*		MOVE.W #$00FF,$FFFFABDC
*		MOVE.W #$11,$FFFFABDC
*		MOVE.W #$12,$FFFFABDC
*		MOVE.W #$AA,$FFFFABDC
*		MOVE.W #$B3,$FFFFABDC
*		MOVE.W #$C1,$FFFFABDC
*		MOVE.W #$CC,$FFFFABDC
*		MOVE.W #$98,$FFFFABDC
*		MOVE.W #$FA,$FFFFABDC
*		MOVE.W #$AF,$FFFFABDC
*		MOVE.W #$A2,$FFFFABDC
*		MOVE.W #$D8,$FFFFABDC
*		MOVE.W #$55,$FFFFABDC
*		MOVE.W #$3C,$FFFFABDC
*		MOVE.W #$EF,$FFFFABDC
*		MOVE.W #$0092,$FFFFABDC
*		MOVE.W #$00BB,$FFFFABDC
************************************ End with MOVE.W #<data> to (xxxx).W
*
*		*** Destination (xxxx).L
************************************ Start with MOVE.W Dn to (xxxx).L
*		MOVE.W	D0,$000A2946
*		MOVE.W	D0,$00557FF2
*		MOVE.W	D1,$00009926
*		MOVE.W	D1,$0000EF12
*		MOVE.W	D2,$00EE8000
*		MOVE.W	D2,$0001FFFE
*		MOVE.W	D3,$00DA5D24
*		MOVE.W	D3,$23002222
*		MOVE.W	D4,$AAAAAAAE
*		MOVE.W	D4,$12345678
*		MOVE.W	D5,$55678BBC
*		MOVE.W	D5,$FEDCBA98
*		MOVE.W	D6,$65433456
*		MOVE.W	D6,$0009ABDC
*		MOVE.W	D7,$FFFF3990
*		MOVE.W	D7,$0723BBAA
************************************ End with MOVE.W Dn to (xxxx).L
*	
************************************ Start with MOVE.W An to (xxxx).L
*		MOVE.W	A0,$000A2945
*		MOVE.W	A0,$00557FFE
*		MOVE.W	A1,$00009920
*		MOVE.W	A1,$0000EF12
*		MOVE.W	A2,$00EE8000
*		MOVE.W	A2,$0001FFFA
*		MOVE.W	A3,$00DA5D24
*		MOVE.W	A3,$23002222
*		MOVE.W	A4,$AAAAAAAE
*		MOVE.W	A4,$12345678
*		MOVE.W	A5,$55678BBC
*		MOVE.W	A5,$FEDCBA98
*		MOVE.W	A6,$65433456
*		MOVE.W	A6,$0009ABDC
*		MOVE.W	A7,$FFFF3990
*		MOVE.W	A7,$0723BBAA	
************************************ End with MOVE.W An to (xxxx).L
*		
************************************ Start with MOVE.W (An) to (xxxx).L
*		MOVE.W	(A0),$000A2946
*		MOVE.W	(A0),$00557FFE
*		MOVE.W	(A1),$00009920
*		MOVE.W	(A1),$0000EF12
*		MOVE.W	(A2),$00EE8000
*		MOVE.W	(A2),$0001FFFE
*		MOVE.W	(A3),$00DA5D24
*		MOVE.W	(A3),$23002222
*		MOVE.W	(A4),$AAAAAAAE
*		MOVE.W	(A4),$12345678
*		MOVE.W	(A5),$55678BBC
*		MOVE.W	(A5),$FEDCBA98
*		MOVE.W	(A6),$65433456
*		MOVE.W	(A6),$0009ABDC
*		MOVE.W	(A7),$FFFF3990
*		MOVE.W	(A7),$0723BBAA
************************************ End with MOVE.W (An) to (xxxx).L
*		
************************************ Start with MOVE.B (An)+ to (xxxx).L
*		MOVE.W	(A0)+,$000A2940
*		MOVE.W	(A0)+,$00557FFE
*		MOVE.W	(A1)+,$00009920
*		MOVE.W	(A1)+,$0000EF12
*		MOVE.W	(A2)+,$00EE8000
*		MOVE.W	(A2)+,$0001FFFE
*		MOVE.W	(A3)+,$00DA5D24
*		MOVE.W	(A3)+,$23002222
*		MOVE.W	(A4)+,$AAAAAAAE
*		MOVE.W	(A4)+,$12345678
*		MOVE.W	(A5)+,$55678BBC
*		MOVE.W	(A5)+,$FEDCBA98
*		MOVE.W	(A6)+,$65433456
*		MOVE.W	(A6)+,$0009ABDC
*		MOVE.W	(A7)+,$FFFF3990
*		MOVE.W	(A7)+,$0723BBAA	
************************************ End with MOVE.W (An)+ to (xxxx).L
*
************************************ Start with MOVE.W -(An) to (xxxx).L
*		MOVE.W	-(A0),$000A2946
*		MOVE.W	-(A0),$00557FFE
*		MOVE.W	-(A1),$00009920
*		MOVE.W	-(A1),$0000EF12
*		MOVE.W	-(A2),$00EE8000
*		MOVE.W	-(A2),$0001FFFE
*		MOVE.W	-(A3),$00DA5D24
*		MOVE.W	-(A3),$23002222
*		MOVE.W	-(A4),$AAAAAAAE
*		MOVE.W	-(A4),$12345678
*		MOVE.W	-(A5),$55678BBC
*		MOVE.W	-(A5),$FEDCBA98
*		MOVE.W	-(A6),$65433456
*		MOVE.W	-(A6),$0009ABDC
*		MOVE.W	-(A7),$FFFF3990
*		MOVE.W	-(A7),$0723BBAA
************************************ End with MOVE.W -(An) to (xxxx).L
*		
************************************ Start with MOVE.W (xxxx).W to (xxxx).L
*		MOVE.W $00000000,$000A2946		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $00007FFE,$00557FFE		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $FFFF8000,$00009920		*32 Kbytes accesible by a 16-bit short address
*		MOVE.W $FFFFFFFE,$0000EF12		*32 Kbytes accesible by a 16-bit short address
*		MOVE.B $00,$00EE8000
*		MOVE.W $0,$0001FFFE
*		MOVE.W $1234,$00DA5D24
*		MOVE.W $56,$23002222
*		MOVE.W $214,$AAAAAAAE
*		MOVE.W $7778,$12345678
*		MOVE.W $E,$55678BBC
*		MOVE.W $00002345,$FEDCBA98
*		MOVE.W $00001110,$65433456
*		MOVE.W $FFFFA346,$0009ABDC
*		MOVE.W $500,$FFFF3990
*		MOVE.W $FFFFBBBA,$0723BBAA		
************************************ End with MOVE.W (xxxx).W to (xxxx).L	
*
************************************ Start with MOVE.W (xxxx).L to (xxxx).L
*		MOVE.W $00008000,$000A2946		*00008000 is lower bound for 32-bit address
*		MOVE.W $FFFF7FFE,$00557FFE		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.W $00009000,$00009920
*		MOVE.W $00009876,$0000EF12		
*		MOVE.W $FFEE0202,$00EE8000		
*		MOVE.W $12345678,$0001FFFE
*		MOVE.W $AAAAAAAB,$00DA5D24
*		MOVE.W $B2C3A1E8,$23002222
*		MOVE.W $77777778,$AAAAAAAF
*		MOVE.W $CCCCCCC0,$12345678
*		MOVE.W $C7C77AA8,$55678BBC
*		MOVE.W $10101010,$FEDCBA98
*		MOVE.W $00CA1112,$65433456
*		MOVE.W $FFFF2116,$0009ABDC
*		MOVE.W $05007654,$FFFF3990
*		MOVE.W $00EFEFEE,$0723BBAA
*		MOVE.W $0000ABCE,$01112222	
************************************ End with MOVE.W (xxxx).L to (xxxx).L	
*
************************************ Start with MOVE.W <data> to (xxxx).W
*		MOVE.W #$0080,$000A2960		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (xxxx).W. 
*		MOVE.W #$0078,$000A2970
*		MOVE.W #$80,$00557EEE
*		MOVE.W #$00FF,$00557EFA
*		MOVE.W #$11,$00009980
*		MOVE.W #$12,$00EE8030
*		MOVE.W #$AA,$00EE8040
*		MOVE.W #$B3,$00EE8050
*		MOVE.W #$C1,$01112272
*		MOVE.W #$CC,$01112282
*		MOVE.W #$98,$AAAAAAA0
*		MOVE.W #$FA,$AAAAAAB0
*		MOVE.W #$AF,$AAAAAAC0
*		MOVE.W #$A2,$AAAAAAE0
*		MOVE.W #$D8,$FFFF4000
*		MOVE.W #$55,$FFFF4010
*		MOVE.W #$3C,$FFFF4020
*		MOVE.W #$EF,$0723BBAA
*		MOVE.W #$0092,$0723BBBA
*		MOVE.W #$00BC,$0723BBCA
************************************ End with MOVE.W #<data> to (xxxx).L	
*
*
*
*		
*		*** MOVE.L
*		
*		*** Destination Dn ***	
************************************ Start with MOVE.L Dn to Dn
*		MOVE.L	D0,D0
*		MOVE.L	D0,D1
*		MOVE.L	D0,D2
*		MOVE.L	D0,D3
*		MOVE.L	D0,D4
*		MOVE.L	D0,D5
*		MOVE.L	D0,D6
*		MOVE.L	D0,D7
*		
*		MOVE.L	D1,D0
*		MOVE.L	D1,D1
*		MOVE.L	D1,D2
*		MOVE.L	D1,D3
*		MOVE.L	D1,D4
*		MOVE.L	D1,D5
*		MOVE.L	D1,D6
*		MOVE.L	D1,D7
*		
*		MOVE.L	D2,D0
*		MOVE.L	D2,D1
*		MOVE.L	D2,D2
*		MOVE.L	D2,D3
*		MOVE.L	D2,D4
*		MOVE.L	D2,D5
*		MOVE.L	D2,D6
*		MOVE.L	D2,D7
*		
*		MOVE.L	D3,D0
*		MOVE.L	D3,D1
*		MOVE.L	D3,D2
*		MOVE.L	D3,D3
*		MOVE.L	D3,D4
*		MOVE.L	D3,D5
*		MOVE.L	D3,D6
*		MOVE.L	D3,D7
*		
*		MOVE.L	D4,D0
*		MOVE.L	D4,D1
*		MOVE.L	D4,D2
*		MOVE.L	D4,D3
*		MOVE.L	D4,D4
*		MOVE.L	D4,D5
*		MOVE.L	D4,D6
*		MOVE.L	D4,D7		
*
*		MOVE.L	D5,D0
*		MOVE.L	D5,D1
*		MOVE.L	D5,D2
*		MOVE.L	D5,D3
*		MOVE.L	D5,D4
*		MOVE.L	D5,D5
*		MOVE.L	D5,D6
*		MOVE.L	D5,D7		
*
*		MOVE.L	D6,D0
*		MOVE.L	D6,D1
*		MOVE.L	D6,D2
*		MOVE.L	D6,D3
*		MOVE.L	D6,D4
*		MOVE.L	D6,D5
*		MOVE.L	D6,D6
*		MOVE.L	D6,D7
*		
*		MOVE.L	D7,D0
*		MOVE.L	D7,D1
*		MOVE.L	D7,D2
*		MOVE.L	D7,D3
*		MOVE.L	D7,D4
*		MOVE.L	D7,D5
*		MOVE.L	D7,D6
*		MOVE.L	D7,D7
************************************ End with MOVE.L Dn to Dn
*		
************************************ Start with MOVE.L An to Dn
*		MOVE.L	A0,D0
*		MOVE.L	A0,D1
*		MOVE.L	A0,D2
*		MOVE.L	A0,D3
*		MOVE.L	A0,D4
*		MOVE.L	A0,D5
*		MOVE.L	A0,D6
*		MOVE.L	A0,D7
*		
*		MOVE.L	A1,D0
*		MOVE.L	A1,D1
*		MOVE.L	A1,D2
*		MOVE.L	A1,D3
*		MOVE.L	A1,D4
*		MOVE.L	A1,D5
*		MOVE.L	A1,D6
*		MOVE.L	A1,D7
*		
*		MOVE.L	A2,D0
*		MOVE.L	A2,D1
*		MOVE.L	A2,D2
*		MOVE.L	A2,D3
*		MOVE.L	A2,D4
*		MOVE.L	A2,D5
*		MOVE.L	A2,D6
*		MOVE.L	A2,D7
*		
*		MOVE.L	A3,D0
*		MOVE.L	A3,D1
*		MOVE.L	A3,D2
*		MOVE.L	A3,D3
*		MOVE.L	A3,D4
*		MOVE.L	A3,D5
*		MOVE.L	A3,D6
*		MOVE.L	A3,D7
*		
*		MOVE.L	A4,D0
*		MOVE.L	A4,D1
*		MOVE.L	A4,D2
*		MOVE.L	A4,D3
*		MOVE.L	A4,D4
*		MOVE.L	A4,D5
*		MOVE.L	A4,D6
*		MOVE.L	A4,D7		
*
*		MOVE.L	A5,D0
*		MOVE.L	A5,D1
*		MOVE.L	A5,D2
*		MOVE.L	A5,D3
*		MOVE.L	A5,D4
*		MOVE.L	A5,D5
*		MOVE.L	A5,D6
*		MOVE.L	A5,D7		
*
*		MOVE.L	A6,D0
*		MOVE.L	A6,D1
*		MOVE.L	A6,D2
*		MOVE.L	A6,D3
*		MOVE.L	A6,D4
*		MOVE.L	A6,D5
*		MOVE.L	A6,D6
*		MOVE.L	A6,D7
*		
*		MOVE.L	A7,D0
*		MOVE.L	A7,D1
*		MOVE.L	A7,D2
*		MOVE.L	A7,D3
*		MOVE.L	A7,D4
*		MOVE.L	A7,D5
*		MOVE.L	A7,D6
*		MOVE.L	A7,D7
************************************ End with MOVE.L An to Dn
*		
************************************ Start with MOVE.L (An) to Dn
*		MOVE.L	(A0),D0
*		MOVE.L	(A0),D1
*		MOVE.L	(A0),D2
*		MOVE.L	(A0),D3
*		MOVE.L	(A0),D4
*		MOVE.L	(A0),D5
*		MOVE.L	(A0),D6
*		MOVE.L	(A0),D7
*		
*		MOVE.L	(A1),D0
*		MOVE.L	(A1),D1
*		MOVE.L	(A1),D2
*		MOVE.L	(A1),D3
*		MOVE.L	(A1),D4
*		MOVE.L	(A1),D5
*		MOVE.L	(A1),D6
*		MOVE.L	(A1),D7
*		
*		MOVE.L	(A2),D0
*		MOVE.L	(A2),D1
*		MOVE.L	(A2),D2
*		MOVE.L	(A2),D3
*		MOVE.L	(A2),D4
*		MOVE.L	(A2),D5
*		MOVE.L	(A2),D6
*		MOVE.L	(A2),D7
*		
*		MOVE.L	(A3),D0
*		MOVE.L	(A3),D1
*		MOVE.L	(A3),D2
*		MOVE.L	(A3),D3
*		MOVE.L	(A3),D4
*		MOVE.L	(A3),D5
*		MOVE.L	(A3),D6
*		MOVE.L	(A3),D7
*		
*		MOVE.L	(A4),D0
*		MOVE.L	(A4),D1
*		MOVE.L	(A4),D2
*		MOVE.L	(A4),D3
*		MOVE.L	(A4),D4
*		MOVE.L	(A4),D5
*		MOVE.L	(A4),D6
*		MOVE.L	(A4),D7		
*
*		MOVE.L	(A5),D0
*		MOVE.L	(A5),D1
*		MOVE.L	(A5),D2
*		MOVE.L	(A5),D3
*		MOVE.L	(A5),D4
*		MOVE.L	(A5),D5
*		MOVE.L	(A5),D6
*		MOVE.L	(A5),D7		
*
*		MOVE.L	(A6),D0
*		MOVE.L	(A6),D1
*		MOVE.L	(A6),D2
*		MOVE.L	(A6),D3
*		MOVE.L	(A6),D4
*		MOVE.L	(A6),D5
*		MOVE.L	(A6),D6
*		MOVE.L	(A6),D7
*		
*		MOVE.L	(A7),D0
*		MOVE.L	(A7),D1
*		MOVE.L	(A7),D2
*		MOVE.L	(A7),D3
*		MOVE.L	(A7),D4
*		MOVE.L	(A7),D5
*		MOVE.L	(A7),D6
*		MOVE.L	(A7),D7
************************************ End with MOVE.L (An) to Dn
*		
************************************ Start with MOVE.L (An)+ to Dn
*		MOVE.L	(A0)+,D0
*		MOVE.L	(A0)+,D1
*		MOVE.L	(A0)+,D2
*		MOVE.L	(A0)+,D3
*		MOVE.L	(A0)+,D4
*		MOVE.L	(A0)+,D5
*		MOVE.L	(A0)+,D6
*		MOVE.L	(A0)+,D7
*
*		MOVE.L	(A1)+,D0
*		MOVE.L	(A1)+,D1
*		MOVE.L	(A1)+,D2
*		MOVE.L	(A1)+,D3
*		MOVE.L	(A1)+,D4
*		MOVE.L	(A1)+,D5
*		MOVE.L	(A1)+,D6
*		MOVE.L	(A1)+,D7
*
*		MOVE.L	(A2)+,D0
*		MOVE.L	(A2)+,D1
*		MOVE.L	(A2)+,D2
*		MOVE.L	(A2)+,D3
*		MOVE.L	(A2)+,D4
*		MOVE.L	(A2)+,D5
*		MOVE.L	(A2)+,D6
*		MOVE.L	(A2)+,D7
*
*		MOVE.L	(A3)+,D0
*		MOVE.L	(A3)+,D1
*		MOVE.L	(A3)+,D2
*		MOVE.L	(A3)+,D3
*		MOVE.L	(A3)+,D4
*		MOVE.L	(A3)+,D5
*		MOVE.L	(A3)+,D6
*		MOVE.L	(A3)+,D7
*
*		MOVE.L	(A4)+,D0
*		MOVE.L	(A4)+,D1
*		MOVE.L	(A4)+,D2
*		MOVE.L	(A4)+,D3
*		MOVE.L	(A4)+,D4
*		MOVE.L	(A4)+,D5
*		MOVE.L	(A4)+,D6
*		MOVE.L	(A4)+,D7
*
*		MOVE.L	(A5)+,D0
*		MOVE.L	(A5)+,D1
*		MOVE.L	(A5)+,D2
*		MOVE.L	(A5)+,D3
*		MOVE.L	(A5)+,D4
*		MOVE.L	(A5)+,D5
*		MOVE.L	(A5)+,D6
*		MOVE.L	(A5)+,D7
*
*		MOVE.L	(A6)+,D0
*		MOVE.L	(A6)+,D1
*		MOVE.L	(A6)+,D2
*		MOVE.L	(A6)+,D3
*		MOVE.L	(A6)+,D4
*		MOVE.L	(A6)+,D5
*		MOVE.L	(A6)+,D6
*		MOVE.L	(A6)+,D7
*
*		MOVE.L	(A7)+,D0
*		MOVE.L	(A7)+,D1
*		MOVE.L	(A7)+,D2
*		MOVE.L	(A7)+,D3
*		MOVE.L	(A7)+,D4
*		MOVE.L	(A7)+,D5
*		MOVE.L	(A7)+,D6
*		MOVE.L	(A7)+,D7
************************************ End with MOVE.L (An)+ to Dn
*
************************************ Start with MOVE.L -(An) to Dn
*		MOVE.L	-(A0),D0
*		MOVE.L	-(A0),D1
*		MOVE.L	-(A0),D2
*		MOVE.L	-(A0),D3
*		MOVE.L	-(A0),D4
*		MOVE.L	-(A0),D5
*		MOVE.L	-(A0),D6
*		MOVE.L	-(A0),D7
*
*		MOVE.L	-(A1),D0
*		MOVE.L	-(A1),D1
*		MOVE.L	-(A1),D2
*		MOVE.L	-(A1),D3
*		MOVE.L	-(A1),D4
*		MOVE.L	-(A1),D5
*		MOVE.L	-(A1),D6
*		MOVE.L	-(A1),D7
*
*		MOVE.L	-(A2),D0
*		MOVE.L	-(A2),D1
*		MOVE.L	-(A2),D2
*		MOVE.L	-(A2),D3
*		MOVE.L	-(A2),D4
*		MOVE.L	-(A2),D5
*		MOVE.L	-(A2),D6
*		MOVE.L	-(A2),D7
*
*		MOVE.L	-(A3),D0
*		MOVE.L	-(A3),D1
*		MOVE.L	-(A3),D2
*		MOVE.L	-(A3),D3
*		MOVE.L	-(A3),D4
*		MOVE.L	-(A3),D5
*		MOVE.L	-(A3),D6
*		MOVE.L	-(A3),D7
*
*		MOVE.L	-(A4),D0
*		MOVE.L	-(A4),D1
*		MOVE.L	-(A4),D2
*		MOVE.L	-(A4),D3
*		MOVE.L	-(A4),D4
*		MOVE.L	-(A4),D5
*		MOVE.L	-(A4),D6
*		MOVE.L	-(A4),D7
*
*		MOVE.L	-(A5),D0
*		MOVE.L	-(A5),D1
*		MOVE.L	-(A5),D2
*		MOVE.L	-(A5),D3
*		MOVE.L	-(A5),D4
*		MOVE.L	-(A5),D5
*		MOVE.L	-(A5),D6
*		MOVE.L	-(A5),D7
*
*		MOVE.L	-(A6),D0
*		MOVE.L	-(A6),D1
*		MOVE.L	-(A6),D2
*		MOVE.L	-(A6),D3
*		MOVE.L	-(A6),D4
*		MOVE.L	-(A6),D5
*		MOVE.L	-(A6),D6
*		MOVE.L	-(A6),D7
*
*		MOVE.L	-(A7),D0
*		MOVE.L	-(A7),D1
*		MOVE.L	-(A7),D2
*		MOVE.L	-(A7),D3
*		MOVE.L	-(A7),D4
*		MOVE.L	-(A7),D5
*		MOVE.L	-(A7),D6
*		MOVE.L	-(A7),D7
************************************ End with MOVE.L -(An) to Dn
*
************************************ Start with MOVE.L (xxxx).W to Dn
*		MOVE.L	$00000000,D0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007F00,D0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,D0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFF00,D0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,D0
*		MOVE.L	$0,D0
*		MOVE.L	$1234,D0
*		MOVE.L	$56,D0
*		MOVE.L	$210,D0
*		MOVE.L	$7770,D0
*		MOVE.L	$A,D0
*
*		MOVE.L	$00000000,D4		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007F00,D4		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,D4		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFF00,D4		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,D4
*		MOVE.L	$0,D4
*		MOVE.L	$22,D4
*		MOVE.L	$420,D4
*		MOVE.L	$3876,D4
*		MOVE.L	$1222,D4
*		MOVE.L	$12,D4
*
*		MOVE.L	$00000000,D7		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007F00,D7		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,D7		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFF00,D7		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,D7
*		MOVE.L	$0,D7
*		MOVE.L	$14,D7
*		MOVE.L	$106,D7
*		MOVE.L	$5550,D7
*		MOVE.L	$2460,D7
*		MOVE.L	$0FF0,D7
*		MOVE.L	$E8,D7
************************************ End with MOVE.L (xxxx).W to Dn	
*
************************************ Start with MOVE.L (xxxx).L to Dn
*		MOVE.L $00008000,D0		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7F00,D0		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,D0
*		MOVE.L $00009876,D0		
*		MOVE.L $FFEE0202,D0		
*		MOVE.L $12345678,D0
*		MOVE.L $AAAAAAAA,D0
*		MOVE.L $B2C3A1E0,D0
*		MOVE.L $77777770,D0
*		MOVE.L $CCCCCCCC,D0
*		MOVE.L $C7C77AA0,D0
*		MOVE.L $10101010,D0
*
*		MOVE.L $00008000,D3		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7F00,D3		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,D3
*		MOVE.L $00009876,D3		
*		MOVE.L $FFEE0202,D3		
*		MOVE.L $12345678,D3
*		MOVE.L $AAAAAAAA,D3
*		MOVE.L $B2C3A1E0,D3
*		MOVE.L $77777770,D3
*		MOVE.L $CCCCCCCC,D3
*		MOVE.L $C7C77AA0,D3
*		MOVE.L $10101010,D3
*
*		MOVE.L $00008000,D5		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7F00,D5		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,D5
*		MOVE.L $00009876,D5		
*		MOVE.L $FFEE0202,D5		
*		MOVE.L $12345678,D5
*		MOVE.L $AAAAAAAA,D5
*		MOVE.L $B2C3A1E0,D5
*		MOVE.L $77777770,D5
*		MOVE.L $CCCCCCCC,D5
*		MOVE.L $C7C77AA0,D5
*		MOVE.L $10101010,D5
*
*		MOVE.L $00008000,D7		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7F00,D7		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,D7
*		MOVE.L $00009876,D7		
*		MOVE.L $FFEE0202,D7		
*		MOVE.L $12345678,D7
*		MOVE.L $AAAAAAAA,D7
*		MOVE.L $B2C3A1E0,D7
*		MOVE.L $77777770,D7
*		MOVE.L $CCCCCCCC,D7
*		MOVE.L $C7C77AA0,D7
*		MOVE.L $10101010,D7
************************************ End with MOVE.L (xxxx).L to Dn	
*
************************************ Start with MOVE.L <data> to Dn
*		MOVE.L #$00000080,D0	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn. 
*		MOVE.L #$000000F0,D0
*		MOVE.L #$00000110,D0
*		MOVE.L #$00001110,D0
*		MOVE.L #$00008000,D0
*		MOVE.L #$FFFF8110,D0		
*		MOVE.L #$FFFF7F00,D0		
*		MOVE.L #$00009000,D0
*		MOVE.L #$A0009876,D0		
*		MOVE.L #$FFEE0202,D0		
*		MOVE.L #$12345678,D0
*		MOVE.L #$AAAAAAAA,D0
*		MOVE.L #$B2C3A1E0,D0
*		MOVE.L #$77777770,D0
*		MOVE.L #$CCCCCCCC,D0
*		MOVE.L #$C7C77AA0,D0
*		MOVE.L #$12312312,D0
*
*		MOVE.L #$00000080,D3	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn.
*		MOVE.L #$000000F0,D3
*		MOVE.L #$00000110,D3
*		MOVE.L #$00001110,D3
*		MOVE.L #$00008000,D3
*		MOVE.L #$FFFF8110,D3		
*		MOVE.L #$FFFF7F00,D3		
*		MOVE.L #$00009000,D3
*		MOVE.L #$A0009876,D3		
*		MOVE.L #$FFEE0202,D3		
*		MOVE.L #$12345678,D3
*		MOVE.L #$AAAAAAAA,D3
*		MOVE.L #$B2C3A1E0,D3
*		MOVE.L #$77777770,D3
*		MOVE.L #$CCCCCCCC,D3
*		MOVE.L #$C7C77AA0,D3
*		MOVE.L #$12312312,D3
*
*		MOVE.L #$00000080,D5	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn.
*		MOVE.L #$000000F0,D5
*		MOVE.L #$00000110,D5
*		MOVE.L #$00001110,D5
*		MOVE.L #$00008000,D5		
*		MOVE.L #$FFFF8110,D5
*		MOVE.L #$FFFF7F00,D5		
*		MOVE.L #$00009000,D5
*		MOVE.L #$A0009876,D5		
*		MOVE.L #$FFEE0202,D5		
*		MOVE.L #$12345678,D5
*		MOVE.L #$AAAAAAAA,D5
*		MOVE.L #$B2C3A1E0,D5
*		MOVE.L #$77777770,D5
*		MOVE.L #$CCCCCCCC,D5
*		MOVE.L #$C7C77AA0,D5
*		MOVE.L #$12312312,D5
*
*		MOVE.L #$00000080,D7	*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to Dn.
*		MOVE.L #$000000F0,D7
*		MOVE.L #$00000110,D7
*		MOVE.L #$00001110,D7
*		MOVE.L #$00008000,D7
*		MOVE.L #$FFFF8100,D7		
*		MOVE.L #$FFFF7F00,D7		
*		MOVE.L #$A0009000,D7
*		MOVE.L #$00009876,D7		
*		MOVE.L #$FFEE0202,D7		
*		MOVE.L #$12345678,D7
*		MOVE.L #$AAAAAAAA,D7
*		MOVE.L #$B2C3A1E0,D7
*		MOVE.L #$77777770,D7
*		MOVE.L #$CCCCCCCC,D7
*		MOVE.L #$C7C77AA0,D7
*		MOVE.L #$12312312,D7
************************************ End with MOVE.L #<data> to Dn	
*
*		*** Destination (An) ***	
************************************ Start with MOVE.L Dn to (An)
*		MOVE.L	D0,(A0)
*		MOVE.L	D0,(A1)
*		MOVE.L	D0,(A2)
*		MOVE.L	D0,(A3)
*		MOVE.L	D0,(A4)
*		MOVE.L	D0,(A5)
*		MOVE.L	D0,(A6)
*		MOVE.L	D0,(A7)
*		
*		MOVE.L	D1,(A0)
*		MOVE.L	D1,(A1)
*		MOVE.L	D1,(A2)
*		MOVE.L	D1,(A3)
*		MOVE.L	D1,(A4)
*		MOVE.L	D1,(A5)
*		MOVE.L	D1,(A6)
*		MOVE.L	D1,(A7)
*		
*		MOVE.L	D2,(A0)
*		MOVE.L	D2,(A1)
*		MOVE.L	D2,(A2)
*		MOVE.L	D2,(A3)
*		MOVE.L	D2,(A4)
*		MOVE.L	D2,(A5)
*		MOVE.L	D2,(A6)
*		MOVE.L	D2,(A7)
*		
*		MOVE.L	D3,(A0)
*		MOVE.L	D3,(A1)
*		MOVE.L	D3,(A2)
*		MOVE.L	D3,(A3)
*		MOVE.L	D3,(A4)
*		MOVE.L	D3,(A5)
*		MOVE.L	D3,(A6)
*		MOVE.L	D3,(A7)
*		
*		MOVE.L	D4,(A0)
*		MOVE.L	D4,(A1)
*		MOVE.L	D4,(A2)
*		MOVE.L	D4,(A3)
*		MOVE.L	D4,(A4)
*		MOVE.L	D4,(A5)
*		MOVE.L	D4,(A6)
*		MOVE.L	D4,(A7)		
*
*		MOVE.L	D5,(A0)
*		MOVE.L	D5,(A1)
*		MOVE.L	D5,(A2)
*		MOVE.L	D5,(A3)
*		MOVE.L	D5,(A4)
*		MOVE.L	D5,(A5)
*		MOVE.L	D5,(A6)
*		MOVE.L	D5,(A7)	
*
*		MOVE.L	D6,(A0)
*		MOVE.L	D6,(A1)
*		MOVE.L	D6,(A2)
*		MOVE.L	D6,(A3)
*		MOVE.L	D6,(A4)
*		MOVE.L	D6,(A5)
*		MOVE.L	D6,(A6)
*		MOVE.L	D6,(A7)
*		
*		MOVE.L	D7,(A0)
*		MOVE.L	D7,(A1)
*		MOVE.L	D7,(A2)
*		MOVE.L	D7,(A3)
*		MOVE.L	D7,(A4)
*		MOVE.L	D7,(A5)
*		MOVE.L	D7,(A6)
*		MOVE.L	D7,(A7)
************************************ End with MOVE.L Dn to (An)
*		
************************************ Start with MOVE.L An to (An)
*		MOVE.L	A0,(A0)
*		MOVE.L	A0,(A1)
*		MOVE.L	A0,(A2)
*		MOVE.L	A0,(A3)
*		MOVE.L	A0,(A4)
*		MOVE.L	A0,(A5)
*		MOVE.L	A0,(A6)
*		MOVE.L	A0,(A7)
*		
*		MOVE.L	A1,(A0)
*		MOVE.L	A1,(A1)
*		MOVE.L	A1,(A2)
*		MOVE.L	A1,(A3)
*		MOVE.L	A1,(A4)
*		MOVE.L	A1,(A5)
*		MOVE.L	A1,(A6)
*		MOVE.L	A1,(A7)
*		
*		MOVE.L	A2,(A0)
*		MOVE.L	A2,(A1)
*		MOVE.L	A2,(A2)
*		MOVE.L	A2,(A3)
*		MOVE.L	A2,(A4)
*		MOVE.L	A2,(A5)
*		MOVE.L	A2,(A6)
*		MOVE.L	A2,(A7)
*		
*		MOVE.L	A3,(A0)
*		MOVE.L	A3,(A1)
*		MOVE.L	A3,(A2)
*		MOVE.L	A3,(A3)
*		MOVE.L	A3,(A4)
*		MOVE.L	A3,(A5)
*		MOVE.L	A3,(A6)
*		MOVE.L	A3,(A7)
*		
*		MOVE.L	A4,(A0)
*		MOVE.L	A4,(A1)
*		MOVE.L	A4,(A2)
*		MOVE.L	A4,(A3)
*		MOVE.L	A4,(A4)
*		MOVE.L	A4,(A5)
*		MOVE.L	A4,(A6)
*		MOVE.L	A4,(A7)		
*
*		MOVE.L	A5,(A0)
*		MOVE.L	A5,(A1)
*		MOVE.L	A5,(A2)
*		MOVE.L	A5,(A3)
*		MOVE.L	A5,(A4)
*		MOVE.L	A5,(A5)
*		MOVE.L	A5,(A6)
*		MOVE.L	A5,(A7)		
*
*		MOVE.L	A6,(A0)
*		MOVE.L	A6,(A1)
*		MOVE.L	A6,(A2)
*		MOVE.L	A6,(A3)
*		MOVE.L	A6,(A4)
*		MOVE.L	A6,(A5)
*		MOVE.L	A6,(A6)
*		MOVE.L	A6,(A7)
*		
*		MOVE.L	A7,(A0)
*		MOVE.L	A7,(A1)
*		MOVE.L	A7,(A2)
*		MOVE.L	A7,(A3)
*		MOVE.L	A7,(A4)
*		MOVE.L	A7,(A5)
*		MOVE.L	A7,(A6)
*		MOVE.L	A7,(A7)
************************************ End with MOVE.L An to (An)
*		
************************************ Start with MOVE.L (An) to (An)
*		MOVE.L	(A0),(A0)
*		MOVE.L	(A0),(A1)
*		MOVE.L	(A0),(A2)
*		MOVE.L	(A0),(A3)
*		MOVE.L	(A0),(A4)
*		MOVE.L	(A0),(A5)
*		MOVE.L	(A0),(A6)
*		MOVE.L	(A0),(A7)
*		
*		MOVE.L	(A1),(A0)
*		MOVE.L	(A1),(A1)
*		MOVE.L	(A1),(A2)
*		MOVE.L	(A1),(A3)
*		MOVE.L	(A1),(A4)
*		MOVE.L	(A1),(A5)
*		MOVE.L	(A1),(A6)
*		MOVE.L	(A1),(A7)
*		
*		MOVE.L	(A2),(A0)
*		MOVE.L	(A2),(A1)
*		MOVE.L	(A2),(A2)
*		MOVE.L	(A2),(A3)
*		MOVE.L	(A2),(A4)
*		MOVE.L	(A2),(A5)
*		MOVE.L	(A2),(A6)
*		MOVE.L	(A2),(A7)
*		
*		MOVE.L	(A3),(A0)
*		MOVE.L	(A3),(A1)
*		MOVE.L	(A3),(A2)
*		MOVE.L	(A3),(A3)
*		MOVE.L	(A3),(A4)
*		MOVE.L	(A3),(A5)
*		MOVE.L	(A3),(A6)
*		MOVE.L	(A3),(A7)
*		
*		MOVE.L	(A4),(A0)
*		MOVE.L	(A4),(A1)
*		MOVE.L	(A4),(A2)
*		MOVE.L	(A4),(A3)
*		MOVE.L	(A4),(A4)
*		MOVE.L	(A4),(A5)
*		MOVE.L	(A4),(A6)
*		MOVE.L	(A4),(A7)		
*
*		MOVE.L	(A5),(A0)
*		MOVE.L	(A5),(A1)
*		MOVE.L	(A5),(A2)
*		MOVE.L	(A5),(A3)
*		MOVE.L	(A5),(A4)
*		MOVE.L	(A5),(A5)
*		MOVE.L	(A5),(A6)
*		MOVE.L	(A5),(A7)		
*
*		MOVE.L	(A6),(A0)
*		MOVE.L	(A6),(A1)
*		MOVE.L	(A6),(A2)
*		MOVE.L	(A6),(A3)
*		MOVE.L	(A6),(A4)
*		MOVE.L	(A6),(A5)
*		MOVE.L	(A6),(A6)
*		MOVE.L	(A6),(A7)
*		
*		MOVE.L	(A7),(A0)
*		MOVE.L	(A7),(A1)
*		MOVE.L	(A7),(A2)
*		MOVE.L	(A7),(A3)
*		MOVE.L	(A7),(A4)
*		MOVE.L	(A7),(A5)
*		MOVE.L	(A7),(A6)
*		MOVE.L	(A7),(A7)
************************************ End with MOVE.L (An) to (An)
*		
************************************ Start with MOVE.L (An)+ to (An)
*		MOVE.L	(A0)+,(A0)
*		MOVE.L	(A0)+,(A1)
*		MOVE.L	(A0)+,(A2)
*		MOVE.L	(A0)+,(A3)
*		MOVE.L	(A0)+,(A4)
*		MOVE.L	(A0)+,(A5)
*		MOVE.L	(A0)+,(A6)
*		MOVE.L	(A0)+,(A7)
*
*		MOVE.L	(A1)+,(A0)
*		MOVE.L	(A1)+,(A1)
*		MOVE.L	(A1)+,(A2)
*		MOVE.L	(A1)+,(A3)
*		MOVE.L	(A1)+,(A4)
*		MOVE.L	(A1)+,(A5)
*		MOVE.L	(A1)+,(A6)
*		MOVE.L	(A1)+,(A7)
*
*		MOVE.L	(A2)+,(A0)
*		MOVE.L	(A2)+,(A1)
*		MOVE.L	(A2)+,(A2)
*		MOVE.L	(A2)+,(A3)
*		MOVE.L	(A2)+,(A4)
*		MOVE.L	(A2)+,(A5)
*		MOVE.L	(A2)+,(A6)
*		MOVE.L	(A2)+,(A7)
*
*		MOVE.L	(A3)+,(A0)
*		MOVE.L	(A3)+,(A1)
*		MOVE.L	(A3)+,(A2)
*		MOVE.L	(A3)+,(A3)
*		MOVE.L	(A3)+,(A4)
*		MOVE.L	(A3)+,(A5)
*		MOVE.L	(A3)+,(A6)
*		MOVE.L	(A3)+,(A7)
*
*		MOVE.L	(A4)+,(A0)
*		MOVE.L	(A4)+,(A1)
*		MOVE.L	(A4)+,(A2)
*		MOVE.L	(A4)+,(A3)
*		MOVE.L	(A4)+,(A4)
*		MOVE.L	(A4)+,(A5)
*		MOVE.L	(A4)+,(A6)
*		MOVE.L	(A4)+,(A7)
*
*		MOVE.L	(A5)+,(A0)
*		MOVE.L	(A5)+,(A1)
*		MOVE.L	(A5)+,(A2)
*		MOVE.L	(A5)+,(A3)
*		MOVE.L	(A5)+,(A4)
*		MOVE.L	(A5)+,(A5)
*		MOVE.L	(A5)+,(A6)
*		MOVE.L	(A5)+,(A7)
*
*		MOVE.L	(A6)+,(A0)
*		MOVE.L	(A6)+,(A1)
*		MOVE.L	(A6)+,(A2)
*		MOVE.L	(A6)+,(A3)
*		MOVE.L	(A6)+,(A4)
*		MOVE.L	(A6)+,(A5)
*		MOVE.L	(A6)+,(A6)
*		MOVE.L	(A6)+,(A7)
*
*		MOVE.L	(A7)+,(A0)
*		MOVE.L	(A7)+,(A1)
*		MOVE.L	(A7)+,(A2)
*		MOVE.L	(A7)+,(A3)
*		MOVE.L	(A7)+,(A4)
*		MOVE.L	(A7)+,(A5)
*		MOVE.L	(A7)+,(A6)
*		MOVE.L	(A7)+,(A7)
************************************ End with MOVE.L (An)+ to (An)
*
************************************ Start with MOVE.L -(An) to (An)
*		MOVE.L	-(A0),(A0)
*		MOVE.L	-(A0),(A1)
*		MOVE.L	-(A0),(A2)
*		MOVE.L	-(A0),(A3)
*		MOVE.L	-(A0),(A4)
*		MOVE.L	-(A0),(A5)
*		MOVE.L	-(A0),(A6)
*		MOVE.L	-(A0),(A7)
*
*		MOVE.L	-(A1),(A0)
*		MOVE.L	-(A1),(A1)
*		MOVE.L	-(A1),(A2)
*		MOVE.L	-(A1),(A3)
*		MOVE.L	-(A1),(A4)
*		MOVE.L	-(A1),(A5)
*		MOVE.L	-(A1),(A6)
*		MOVE.L	-(A1),(A7)
*
*		MOVE.L	-(A2),(A0)
*		MOVE.L	-(A2),(A1)
*		MOVE.L	-(A2),(A2)
*		MOVE.L	-(A2),(A3)
*		MOVE.L	-(A2),(A4)
*		MOVE.L	-(A2),(A5)
*		MOVE.L	-(A2),(A6)
*		MOVE.L	-(A2),(A7)
*
*		MOVE.L	-(A3),(A0)
*		MOVE.L	-(A3),(A1)
*		MOVE.L	-(A3),(A2)
*		MOVE.L	-(A3),(A3)
*		MOVE.L	-(A3),(A4)
*		MOVE.L	-(A3),(A5)
*		MOVE.L	-(A3),(A6)
*		MOVE.L	-(A3),(A7)
*
*		MOVE.L	-(A4),(A0)
*		MOVE.L	-(A4),(A1)
*		MOVE.L	-(A4),(A2)
*		MOVE.L	-(A4),(A3)
*		MOVE.L	-(A4),(A4)
*		MOVE.L	-(A4),(A5)
*		MOVE.L	-(A4),(A6)
*		MOVE.L	-(A4),(A7)
*
*		MOVE.L	-(A5),(A0)
*		MOVE.L	-(A5),(A1)
*		MOVE.L	-(A5),(A2)
*		MOVE.L	-(A5),(A3)
*		MOVE.L	-(A5),(A4)
*		MOVE.L	-(A5),(A5)
*		MOVE.L	-(A5),(A6)
*		MOVE.L	-(A5),(A7)
*
*		MOVE.L	-(A6),(A0)
*		MOVE.L	-(A6),(A1)
*		MOVE.L	-(A6),(A2)
*		MOVE.L	-(A6),(A3)
*		MOVE.L	-(A6),(A4)
*		MOVE.L	-(A6),(A5)
*		MOVE.L	-(A6),(A6)
*		MOVE.L	-(A6),(A7)
*
*		MOVE.L	-(A7),(A0)
*		MOVE.L	-(A7),(A1)
*		MOVE.L	-(A7),(A2)
*		MOVE.L	-(A7),(A3)
*		MOVE.L	-(A7),(A4)
*		MOVE.L	-(A7),(A5)
*		MOVE.L	-(A7),(A6)
*		MOVE.L	-(A7),(A7)
************************************ End with MOVE.L -(An) to (An)
*
************************************ Start with MOVE.L (xxxx).W to (An)
*		MOVE.L	$00000000,(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007F00,(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFF00,(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,(A0)
*		MOVE.L	$0,(A0)
*		MOVE.L	$1234,(A0)
*		MOVE.L	$56,(A0)
*		MOVE.L	$210,(A0)
*		MOVE.L	$7770,(A0)
*		MOVE.L	$A,(A0)
*
*		MOVE.L	$00000000,(A4)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007F00,(A4)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,(A4)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFF00,(A4)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,(A4)
*		MOVE.L	$0,(A4)
*		MOVE.L	$22,(A4)
*		MOVE.L	$420,(A4)
*		MOVE.L	$3876,(A4)
*		MOVE.L	$1222,(A4)
*		MOVE.L	$12,(A4)
*
*		MOVE.L	$00000000,(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007F00,(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFF00,(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,(A6)
*		MOVE.L	$0,(A6)
*		MOVE.L	$22,(A6)
*		MOVE.L	$420,(A6)
*		MOVE.L	$3876,(A6)
*		MOVE.L	$1222,(A6)
*		MOVE.L	$12,(A6)
*
*		MOVE.L	$00000000,(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007F00,(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFF00,(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,(A7)
*		MOVE.L	$0,(A7)
*		MOVE.L	$12,(A7)
*		MOVE.L	$106,(A7)
*		MOVE.L	$5550,(A7)
*		MOVE.L	$246D,(A7)
*		MOVE.L	$0FF0,(A7)
*		MOVE.L	$E8,(A7)
************************************ End with MOVE.L (xxxx).W to (An)	
*
************************************ Start with MOVE.L (xxxx).L to (An)
*		MOVE.L $00008000,(A0)		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7F00,(A0)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,(A0)
*		MOVE.L $00009876,(A0)		
*		MOVE.L $FFEE0202,(A0)		
*		MOVE.L $12345678,(A0)
*		MOVE.L $AAAAAAAA,(A0)
*		MOVE.L $B2C3A1E0,(A0)
*		MOVE.L $77777770,(A0)
*		MOVE.L $CCCCCCCC,(A0)
*		MOVE.L $C7C77AA0,(A0)
*		MOVE.L $10101010,(A0)
*
*		MOVE.L $00008000,(A3)		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7F00,(A3)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,(A3)
*		MOVE.L $00009876,(A3)		
*		MOVE.L $FFEE0202,(A3)		
*		MOVE.L $12345678,(A3)
*		MOVE.L $AAAAAAAA,(A3)
*		MOVE.L $B2C3A1E0,(A3)
*		MOVE.L $77777770,(A3)
*		MOVE.L $CCCCCCCC,(A3)
*		MOVE.L $C7C77AA0,(A3)
*		MOVE.L $10101010,(A3)
*
*		MOVE.L $00008000,(A5)		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7F00,(A5)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,(A5)
*		MOVE.L $00009876,(A5)		
*		MOVE.L $FFEE0202,(A5)		
*		MOVE.L $12345678,(A5)
*		MOVE.L $AAAAAAAA,(A5)
*		MOVE.L $B2C3A1E2,(A5)
*		MOVE.L $77777772,(A5)
*		MOVE.L $CCCCCCCC,(A5)
*		MOVE.L $C7C77AA0,(A5)
*		MOVE.L $10101010,(A5)
*
*		MOVE.L $00008000,(A7)		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7F00,(A7)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,(A7)
*		MOVE.L $00009876,(A7)		
*		MOVE.L $FFEE0202,(A7)		
*		MOVE.L $12345678,(A7)
*		MOVE.L $AAAAAAAA,(A7)
*		MOVE.L $B2C3A1E0,(A7)
*		MOVE.L $77777770,(A7)
*		MOVE.L $CCCCCCCC,(A7)
*		MOVE.L $C7C77AA0,(A7)
*		MOVE.L $10101010,(A7)
************************************ End with MOVE.L (xxxx).L to (An)	
*
************************************ Start with MOVE.L <data> to (An)
*		MOVE.L #$00000080,(A0)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An). 
*		MOVE.L #$000000F0,(A0)
*		MOVE.L #$00000110,(A0)
*		MOVE.L #$00001110,(A0)
*		MOVE.L #$00008000,(A0)
*		MOVE.L #$FFFF8110,(A0)		
*		MOVE.L #$FFFF7F00,(A0)		
*		MOVE.L #$00009000,(A0)
*		MOVE.L #$A0009876,(A0)		
*		MOVE.L #$FFEE0202,(A0)		
*		MOVE.L #$12345678,(A0)
*		MOVE.L #$AAAAAAAA,(A0)
*		MOVE.L #$B2C3A1E0,(A0)
*		MOVE.L #$77777770,(A0)
*		MOVE.L #$CCCCCCCC,(A0)
*		MOVE.L #$C7C77AA0,(A0)
*		MOVE.L #$12312312,(A0)
*
*		MOVE.L #$00000080,(A3)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An).
*		MOVE.L #$000000F0,(A3)
*		MOVE.L #$00000110,(A3)
*		MOVE.L #$00001110,(A3)
*		MOVE.L #$00008000,(A3)
*		MOVE.L #$FFFF8110,(A3)		
*		MOVE.L #$FFFF7F00,(A3)		
*		MOVE.L #$00009000,(A3)
*		MOVE.L #$A0009876,(A3)		
*		MOVE.L #$FFEE0202,(A3)		
*		MOVE.L #$12345678,(A3)
*		MOVE.L #$AAAAAAAA,(A3)
*		MOVE.L #$B2C3A1E0,(A3)
*		MOVE.L #$77777770,(A3)
*		MOVE.L #$CCCCCCCC,(A3)
*		MOVE.L #$C7C77AA0,(A3)
*		MOVE.L #$12312312,(A3)
*
*		MOVE.L #$00000080,(A5)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An).
*		MOVE.L #$000000F0,(A5)
*		MOVE.L #$00000110,(A5)
*		MOVE.L #$00001110,(A5)
*		MOVE.L #$00008000,(A5)		
*		MOVE.L #$FFFF8110,(A5)
*		MOVE.L #$FFFF7F00,(A5)		
*		MOVE.L #$00009000,(A5)
*		MOVE.L #$A0009876,(A5)		
*		MOVE.L #$FFEE0202,(A5)		
*		MOVE.L #$12345678,(A5)
*		MOVE.L #$AAAAAAAA,(A5)
*		MOVE.L #$B2C3A1E0,(A5)
*		MOVE.L #$77777770,(A5)
*		MOVE.L #$CCCCCCCA,(A5)
*		MOVE.L #$C7C77AA0,(A5)
*		MOVE.L #$12312312,(A5)
*
*		MOVE.L #$00000080,(A7)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An).
*		MOVE.L #$000000F0,(A7)
*		MOVE.L #$00000110,(A7)
*		MOVE.L #$00001100,(A7)
*		MOVE.L #$00008000,(A7)
*		MOVE.L #$FFFF8100,(A7)		
*		MOVE.L #$FFFF7F00,(A7)		
*		MOVE.L #$A0009000,(A7)
*		MOVE.L #$00009876,(A7)		
*		MOVE.L #$FFEE0202,(A7)		
*		MOVE.L #$12345670,(A7)
*		MOVE.L #$AAAAAAAA,(A7)
*		MOVE.L #$B2C3A1E6,(A7)
*		MOVE.L #$77777776,(A7)
*		MOVE.L #$CCCCCCCC,(A7)
*		MOVE.L #$C7C77AA6,(A7)
*		MOVE.L #$12312312,(A7)
************************************ End with MOVE.L #<data> to (An)	
*
*		*** Destination (An)+ ***
************************************ Start with MOVE.L Dn to (An)+
*		MOVE.L	D0,(A0)+
*		MOVE.L	D0,(A1)+
*		MOVE.L	D0,(A2)+
*		MOVE.L	D0,(A3)+
*		MOVE.L	D0,(A4)+
*		MOVE.L	D0,(A5)+
*		MOVE.L	D0,(A6)+
*		MOVE.L	D0,(A7)+
*		
*		MOVE.L	D1,(A0)+
*		MOVE.L	D1,(A1)+
*		MOVE.L	D1,(A2)+
*		MOVE.L	D1,(A3)+
*		MOVE.L	D1,(A4)+
*		MOVE.L	D1,(A5)+
*		MOVE.L	D1,(A6)+
*		MOVE.L	D1,(A7)+
*		
*		MOVE.L	D2,(A0)+
*		MOVE.L	D2,(A1)+
*		MOVE.L	D2,(A2)+
*		MOVE.L	D2,(A3)+
*		MOVE.L	D2,(A4)+
*		MOVE.L	D2,(A5)+
*		MOVE.L	D2,(A6)+
*		MOVE.L	D2,(A7)+
*		
*		MOVE.L	D3,(A0)+
*		MOVE.L	D3,(A1)+
*		MOVE.L	D3,(A2)+
*		MOVE.L	D3,(A3)+
*		MOVE.L	D3,(A4)+
*		MOVE.L	D3,(A5)+
*		MOVE.L	D3,(A6)+
*		MOVE.L	D3,(A7)+
*		
*		MOVE.L	D4,(A0)+
*		MOVE.L	D4,(A1)+
*		MOVE.L	D4,(A2)+
*		MOVE.L	D4,(A3)+
*		MOVE.L	D4,(A4)+
*		MOVE.L	D4,(A5)+
*		MOVE.L	D4,(A6)+
*		MOVE.L	D4,(A7)+	
*
*		MOVE.L	D5,(A0)+
*		MOVE.L	D5,(A1)+
*		MOVE.L	D5,(A2)+
*		MOVE.L	D5,(A3)+
*		MOVE.L	D5,(A4)+
*		MOVE.L	D5,(A5)+
*		MOVE.L	D5,(A6)+
*		MOVE.L	D5,(A7)+
*
*		MOVE.L	D6,(A0)+
*		MOVE.L	D6,(A1)+
*		MOVE.L	D6,(A2)+
*		MOVE.L	D6,(A3)+
*		MOVE.L	D6,(A4)+
*		MOVE.L	D6,(A5)+
*		MOVE.L	D6,(A6)+
*		MOVE.L	D6,(A7)+
*		
*		MOVE.L	D7,(A0)+
*		MOVE.L	D7,(A1)+
*		MOVE.L	D7,(A2)+
*		MOVE.L	D7,(A3)+
*		MOVE.L	D7,(A4)+
*		MOVE.L	D7,(A5)+
*		MOVE.L	D7,(A6)+
*		MOVE.L	D7,(A7)+
************************************ End with MOVE.L Dn to (An)+
*		
************************************ Start with MOVE.L An to (An)+
*		MOVE.L	A0,(A0)+
*		MOVE.L	A0,(A1)+
*		MOVE.L	A0,(A2)+
*		MOVE.L	A0,(A3)+
*		MOVE.L	A0,(A4)+
*		MOVE.L	A0,(A5)+
*		MOVE.L	A0,(A6)+
*		MOVE.L	A0,(A7)+
*		
*		MOVE.L	A1,(A0)+
*		MOVE.L	A1,(A1)+
*		MOVE.L	A1,(A2)+
*		MOVE.L	A1,(A3)+
*		MOVE.L	A1,(A4)+
*		MOVE.L	A1,(A5)+
*		MOVE.L	A1,(A6)+
*		MOVE.L	A1,(A7)+
*		
*		MOVE.L	A2,(A0)+
*		MOVE.L	A2,(A1)+
*		MOVE.L	A2,(A2)+
*		MOVE.L	A2,(A3)+
*		MOVE.L	A2,(A4)+
*		MOVE.L	A2,(A5)+
*		MOVE.L	A2,(A6)+
*		MOVE.L	A2,(A7)+
*		
*		MOVE.L	A3,(A0)+
*		MOVE.L	A3,(A1)+
*		MOVE.L	A3,(A2)+
*		MOVE.L	A3,(A3)+
*		MOVE.L	A3,(A4)+
*		MOVE.L	A3,(A5)+
*		MOVE.L	A3,(A6)+
*		MOVE.L	A3,(A7)+
*		
*		MOVE.L	A4,(A0)+
*		MOVE.L	A4,(A1)+
*		MOVE.L	A4,(A2)+
*		MOVE.L	A4,(A3)+
*		MOVE.L	A4,(A4)+
*		MOVE.L	A4,(A5)+
*		MOVE.L	A4,(A6)+
*		MOVE.L	A4,(A7)+	
*
*		MOVE.L	A5,(A0)+
*		MOVE.L	A5,(A1)+
*		MOVE.L	A5,(A2)+
*		MOVE.L	A5,(A3)+
*		MOVE.L	A5,(A4)+
*		MOVE.L	A5,(A5)+
*		MOVE.L	A5,(A6)+
*		MOVE.L	A5,(A7)+	
*
*		MOVE.L	A6,(A0)+
*		MOVE.L	A6,(A1)+
*		MOVE.L	A6,(A2)+
*		MOVE.L	A6,(A3)+
*		MOVE.L	A6,(A4)+
*		MOVE.L	A6,(A5)+
*		MOVE.L	A6,(A6)+
*		MOVE.L	A6,(A7)+
*		
*		MOVE.L	A7,(A0)+
*		MOVE.L	A7,(A1)+
*		MOVE.L	A7,(A2)+
*		MOVE.L	A7,(A3)+
*		MOVE.L	A7,(A4)+
*		MOVE.L	A7,(A5)+
*		MOVE.L	A7,(A6)+
*		MOVE.L	A7,(A7)+
************************************ End with MOVE.L An to (An)+
*		
************************************ Start with MOVE.L (An) to (An)+
*		MOVE.L	(A0),(A0)+
*		MOVE.L	(A0),(A1)+
*		MOVE.L	(A0),(A2)+
*		MOVE.L	(A0),(A3)+
*		MOVE.L	(A0),(A4)+
*		MOVE.L	(A0),(A5)+
*		MOVE.L	(A0),(A6)+
*		MOVE.L	(A0),(A7)+
*		
*		MOVE.L	(A1),(A0)+
*		MOVE.L	(A1),(A1)+
*		MOVE.L	(A1),(A2)+
*		MOVE.L	(A1),(A3)+
*		MOVE.L	(A1),(A4)+
*		MOVE.L	(A1),(A5)+
*		MOVE.L	(A1),(A6)+
*		MOVE.L	(A1),(A7)+
*		
*		MOVE.L	(A2),(A0)+
*		MOVE.L	(A2),(A1)+
*		MOVE.L	(A2),(A2)+
*		MOVE.L	(A2),(A3)+
*		MOVE.L	(A2),(A4)+
*		MOVE.L	(A2),(A5)+
*		MOVE.L	(A2),(A6)+
*		MOVE.L	(A2),(A7)+
*		
*		MOVE.L	(A3),(A0)+
*		MOVE.L	(A3),(A1)+
*		MOVE.L	(A3),(A2)+
*		MOVE.L	(A3),(A3)+
*		MOVE.L	(A3),(A4)+
*		MOVE.L	(A3),(A5)+
*		MOVE.L	(A3),(A6)+
*		MOVE.L	(A3),(A7)+
*		
*		MOVE.L	(A4),(A0)+
*		MOVE.L	(A4),(A1)+
*		MOVE.L	(A4),(A2)+
*		MOVE.L	(A4),(A3)+
*		MOVE.L	(A4),(A4)+
*		MOVE.L	(A4),(A5)+
*		MOVE.L	(A4),(A6)+
*		MOVE.L	(A4),(A7)+		
*
*		MOVE.L	(A5),(A0)+
*		MOVE.L	(A5),(A1)+
*		MOVE.L	(A5),(A2)+
*		MOVE.L	(A5),(A3)+
*		MOVE.L	(A5),(A4)+
*		MOVE.L	(A5),(A5)+
*		MOVE.L	(A5),(A6)+
*		MOVE.L	(A5),(A7)+		
*
*		MOVE.L	(A6),(A0)+
*		MOVE.L	(A6),(A1)+
*		MOVE.L	(A6),(A2)+
*		MOVE.L	(A6),(A3)+
*		MOVE.L	(A6),(A4)+
*		MOVE.L	(A6),(A5)+
*		MOVE.L	(A6),(A6)+
*		MOVE.L	(A6),(A7)+
*		
*		MOVE.L	(A7),(A0)+
*		MOVE.L	(A7),(A1)+
*		MOVE.L	(A7),(A2)+
*		MOVE.L	(A7),(A3)+
*		MOVE.L	(A7),(A4)+
*		MOVE.L	(A7),(A5)+
*		MOVE.L	(A7),(A6)+
*		MOVE.L	(A7),(A7)+
************************************ End with MOVE.L (An) to (An)+
*		
************************************ Start with MOVE.L (An)+ to (An)+
*		MOVE.L	(A0)+,(A0)+
*		MOVE.L	(A0)+,(A1)+
*		MOVE.L	(A0)+,(A2)+
*		MOVE.L	(A0)+,(A3)+
*		MOVE.L	(A0)+,(A4)+
*		MOVE.L	(A0)+,(A5)+
*		MOVE.L	(A0)+,(A6)+
*		MOVE.L	(A0)+,(A7)+
*
*		MOVE.L	(A1)+,(A0)+
*		MOVE.L	(A1)+,(A1)+
*		MOVE.L	(A1)+,(A2)+
*		MOVE.L	(A1)+,(A3)+
*		MOVE.L	(A1)+,(A4)+
*		MOVE.L	(A1)+,(A5)+
*		MOVE.L	(A1)+,(A6)+
*		MOVE.L	(A1)+,(A7)+
*
*		MOVE.L	(A2)+,(A0)+
*		MOVE.L	(A2)+,(A1)+
*		MOVE.L	(A2)+,(A2)+
*		MOVE.L	(A2)+,(A3)+
*		MOVE.L	(A2)+,(A4)+
*		MOVE.L	(A2)+,(A5)+
*		MOVE.L	(A2)+,(A6)+
*		MOVE.L	(A2)+,(A7)+
*
*		MOVE.L	(A3)+,(A0)+
*		MOVE.L	(A3)+,(A1)+
*		MOVE.L	(A3)+,(A2)+
*		MOVE.L	(A3)+,(A3)+
*		MOVE.L	(A3)+,(A4)+
*		MOVE.L	(A3)+,(A5)+
*		MOVE.L	(A3)+,(A6)+
*		MOVE.L	(A3)+,(A7)+
*
*		MOVE.L	(A4)+,(A0)+
*		MOVE.L	(A4)+,(A1)+
*		MOVE.L	(A4)+,(A2)+
*		MOVE.L	(A4)+,(A3)+
*		MOVE.L	(A4)+,(A4)+
*		MOVE.L	(A4)+,(A5)+
*		MOVE.L	(A4)+,(A6)+
*		MOVE.L	(A4)+,(A7)+
*
*		MOVE.L	(A5)+,(A0)+
*		MOVE.L	(A5)+,(A1)+
*		MOVE.L	(A5)+,(A2)+
*		MOVE.L	(A5)+,(A3)+
*		MOVE.L	(A5)+,(A4)+
*		MOVE.L	(A5)+,(A5)+
*		MOVE.L	(A5)+,(A6)+
*		MOVE.L	(A5)+,(A7)+
*
*		MOVE.L	(A6)+,(A0)+
*		MOVE.L	(A6)+,(A1)+
*		MOVE.L	(A6)+,(A2)+
*		MOVE.L	(A6)+,(A3)+
*		MOVE.L	(A6)+,(A4)+
*		MOVE.L	(A6)+,(A5)+
*		MOVE.L	(A6)+,(A6)+
*		MOVE.L	(A6)+,(A7)+
*
*		MOVE.L	(A7)+,(A0)+
*		MOVE.L	(A7)+,(A1)+
*		MOVE.L	(A7)+,(A2)+
*		MOVE.L	(A7)+,(A3)+
*		MOVE.L	(A7)+,(A4)+
*		MOVE.L	(A7)+,(A5)+
*		MOVE.L	(A7)+,(A6)+
*		MOVE.L	(A7)+,(A7)+
************************************ End with MOVE.L (An)+ to (An)+
*
************************************ Start with MOVE.L -(An) to (An)+
*		MOVE.L	-(A0),(A0)+
*		MOVE.L	-(A0),(A1)+
*		MOVE.L	-(A0),(A2)+
*		MOVE.L	-(A0),(A3)+
*		MOVE.L	-(A0),(A4)+
*		MOVE.L	-(A0),(A5)+
*		MOVE.L	-(A0),(A6)+
*		MOVE.L	-(A0),(A7)+
*
*		MOVE.L	-(A1),(A0)+
*		MOVE.L	-(A1),(A1)+
*		MOVE.L	-(A1),(A2)+
*		MOVE.L	-(A1),(A3)+
*		MOVE.L	-(A1),(A4)+
*		MOVE.L	-(A1),(A5)+
*		MOVE.L	-(A1),(A6)+
*		MOVE.L	-(A1),(A7)+
*
*		MOVE.L	-(A2),(A0)+
*		MOVE.L	-(A2),(A1)+
*		MOVE.L	-(A2),(A2)+
*		MOVE.L	-(A2),(A3)+
*		MOVE.L	-(A2),(A4)+
*		MOVE.L	-(A2),(A5)+
*		MOVE.L	-(A2),(A6)+
*		MOVE.L	-(A2),(A7)+
*
*		MOVE.L	-(A3),(A0)+
*		MOVE.L	-(A3),(A1)+
*		MOVE.L	-(A3),(A2)+
*		MOVE.L	-(A3),(A3)+
*		MOVE.L	-(A3),(A4)+
*		MOVE.L	-(A3),(A5)+
*		MOVE.L	-(A3),(A6)+
*		MOVE.L	-(A3),(A7)+
*
*		MOVE.L	-(A4),(A0)+
*		MOVE.L	-(A4),(A1)+
*		MOVE.L	-(A4),(A2)+
*		MOVE.L	-(A4),(A3)+
*		MOVE.L	-(A4),(A4)+
*		MOVE.L	-(A4),(A5)+
*		MOVE.L	-(A4),(A6)+
*		MOVE.L	-(A4),(A7)+
*
*		MOVE.L	-(A5),(A0)+
*		MOVE.L	-(A5),(A1)+
*		MOVE.L	-(A5),(A2)+
*		MOVE.L	-(A5),(A3)+
*		MOVE.L	-(A5),(A4)+
*		MOVE.L	-(A5),(A5)+
*		MOVE.L	-(A5),(A6)+
*		MOVE.L	-(A5),(A7)+
*
*		MOVE.L	-(A6),(A0)+
*		MOVE.L	-(A6),(A1)+
*		MOVE.L	-(A6),(A2)+
*		MOVE.L	-(A6),(A3)+
*		MOVE.L	-(A6),(A4)+
*		MOVE.L	-(A6),(A5)+
*		MOVE.L	-(A6),(A6)+
*		MOVE.L	-(A6),(A7)+
*
*		MOVE.L	-(A7),(A0)+
*		MOVE.L	-(A7),(A1)+
*		MOVE.L	-(A7),(A2)+
*		MOVE.L	-(A7),(A3)+
*		MOVE.L	-(A7),(A4)+
*		MOVE.L	-(A7),(A5)+
*		MOVE.L	-(A7),(A6)+
*		MOVE.L	-(A7),(A7)+
************************************ End with MOVE.L -(An) to (An)+
*
************************************ Start with MOVE.L (xxxx).W to (An)+
*		MOVE.L	$00000000,(A0)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007F00,(A0)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,(A0)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFF00,(A0)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,(A0)+
*		MOVE.L	$0,(A0)+
*		MOVE.L	$1234,(A0)+
*		MOVE.L	$56,(A0)+
*		MOVE.L	$210,(A0)+
*		MOVE.L	$7770,(A0)+
*		MOVE.L	$A,(A0)+
*
*		MOVE.L	$00000000,(A4)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007F00,(A4)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,(A4)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFF00,(A4)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,(A4)+
*		MOVE.L	$0,(A4)+
*		MOVE.L	$22,(A4)+
*		MOVE.L	$420,(A4)+
*		MOVE.L	$3876,(A4)+
*		MOVE.L	$1222,(A4)+
*		MOVE.L	$12,(A4)+
*
*		MOVE.L	$00000000,(A6)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007F00,(A6)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,(A6)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFF00,(A6)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,(A6)+
*		MOVE.L	$0,(A6)+
*		MOVE.L	$22,(A6)+
*		MOVE.L	$420,(A6)+
*		MOVE.L	$3876,(A6)+
*		MOVE.L	$1222,(A6)+
*		MOVE.L	$12,(A6)+
*
*		MOVE.L	$00000000,(A7)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007F00,(A7)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,(A7)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFF00,(A7)+		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,(A7)+
*		MOVE.L	$0,(A7)+
*		MOVE.L	$12,(A7)+
*		MOVE.L	$106,(A7)+
*		MOVE.L	$5550,(A7)+
*		MOVE.L	$2460,(A7)+
*		MOVE.L	$0FF0,(A7)+
*		MOVE.L	$E8,(A7)+
************************************ End with MOVE.L (xxxx).W to (An)+
*
************************************ Start with MOVE.L (xxxx).L to (An)+
*		MOVE.L $00008000,(A0)+		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7FF0,(A0)+		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,(A0)+
*		MOVE.L $00009876,(A0)+		
*		MOVE.L $FFEE0202,(A0)+		
*		MOVE.L $12345678,(A0)+
*		MOVE.L $AAAAAAAA,(A0)+
*		MOVE.L $B2C3A1E0,(A0)+
*		MOVE.L $77777770,(A0)+
*		MOVE.L $CCCCCCCC,(A0)+
*		MOVE.L $C7C77AA0,(A0)+
*		MOVE.L $10101010,(A0)+
*
*		MOVE.L $00008000,(A3)+		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7FF0,(A3)+		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,(A3)+
*		MOVE.L $00009876,(A3)+		
*		MOVE.L $FFEE0202,(A3)+		
*		MOVE.L $12345678,(A3)+
*		MOVE.L $AAAAAAAA,(A3)+
*		MOVE.L $B2C3A1E0,(A3)+
*		MOVE.L $77777770,(A3)+
*		MOVE.L $CCCCCCCC,(A3)+
*		MOVE.L $C7C77AA0,(A3)+
*		MOVE.L $10101010,(A3)+
*
*		MOVE.L $00008000,(A5)+		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7FF0,(A5)+		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,(A5)+
*		MOVE.L $00009876,(A5)+		
*		MOVE.L $FFEE0202,(A5)+		
*		MOVE.L $12345678,(A5)+
*		MOVE.L $AAAAAAAA,(A5)+
*		MOVE.L $B2C3A1E0,(A5)+
*		MOVE.L $77777770,(A5)+
*		MOVE.L $CCCCCCCC,(A5)+
*		MOVE.L $C7C77AA0,(A5)+
*		MOVE.L $10101010,(A5)+
*
*		MOVE.L $00008000,(A7)+		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7FF0,(A7)+		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,(A7)+
*		MOVE.L $00009876,(A7)+		
*		MOVE.L $FFEE0202,(A7)+		
*		MOVE.L $12345678,(A7)+
*		MOVE.L $AAAAAAAA,(A7)+
*		MOVE.L $B2C3A1E8,(A7)+
*		MOVE.L $77777778,(A7)+
*		MOVE.L $CCCCCCCC,(A7)+
*		MOVE.L $C7C77AA0,(A7)+
*		MOVE.L $10101010,(A7)+
************************************ End with MOVE.L (xxxx).L to (An)+	
*
************************************ Start with MOVE.L <data> to (An)+
*		MOVE.L #$00000080,(A0)+		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+. 
*		MOVE.L #$000000FA,(A0)+
*		MOVE.L #$00000110,(A0)+
*		MOVE.L #$00001110,(A0)+
*		MOVE.L #$00008000,(A0)+
*		MOVE.L #$FFFF8110,(A0)+		
*		MOVE.L #$FFFF7FF0,(A0)+		
*		MOVE.L #$00009000,(A0)+
*		MOVE.L #$A0009876,(A0)+
*		MOVE.L #$FFEE0202,(A0)+		
*		MOVE.L #$12345678,(A0)+
*		MOVE.L #$AAAAAAAA,(A0)+
*		MOVE.L #$B2C3A1E0,(A0)+
*		MOVE.L #$77777770,(A0)+
*		MOVE.L #$CCCCCCCC,(A0)+
*		MOVE.L #$C7C77AA0,(A0)+
*		MOVE.L #$12312312,(A0)+
*
*		MOVE.L #$00000080,(A3)+		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+.
*		MOVE.L #$000000FA,(A3)+
*		MOVE.L #$00000112,(A3)+
*		MOVE.L #$00001110,(A3)+
*		MOVE.L #$00008000,(A3)+
*		MOVE.L #$FFFF811A,(A3)+		
*		MOVE.L #$FFFF7FFA,(A3)+		
*		MOVE.L #$00009000,(A3)+
*		MOVE.L #$A0009876,(A3)+		
*		MOVE.L #$FFEE0202,(A3)+		
*		MOVE.L #$12345678,(A3)+
*		MOVE.L #$AAAAAAAA,(A3)+
*		MOVE.L #$B2C3A1E8,(A3)+
*		MOVE.L #$77777778,(A3)+
*		MOVE.L #$CCCCCCCC,(A3)+
*		MOVE.L #$C7C77AA8,(A3)+
*		MOVE.L #$12312312,(A3)+
*
*		MOVE.L #$00000080,(A5)+		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+.
*		MOVE.L #$000000FA,(A5)+
*		MOVE.L #$00000110,(A5)+
*		MOVE.L #$00001110,(A5)+
*		MOVE.L #$00008000,(A5)+		
*		MOVE.L #$FFFF8118,(A5)+
*		MOVE.L #$FFFF7FF8,(A5)+		
*		MOVE.L #$00009000,(A5)+
*		MOVE.L #$A0009876,(A5)+		
*		MOVE.L #$FFEE0202,(A5)+		
*		MOVE.L #$12345678,(A5)+
*		MOVE.L #$AAAAAAAA,(A5)+
*		MOVE.L #$B2C3A1E8,(A5)+
*		MOVE.L #$77777778,(A5)+
*		MOVE.L #$CCCCCCCC,(A5)+
*		MOVE.L #$C7C77AA8,(A5)+
*		MOVE.L #$12312312,(A5)+
*
*		MOVE.L #$00000080,(A7)+		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (An)+.
*		MOVE.L #$000000FA,(A7)+
*		MOVE.L #$00000110,(A7)+
*		MOVE.L #$00001110,(A7)+
*		MOVE.L #$00008000,(A7)+
*		MOVE.L #$FFFF8110,(A7)+		
*		MOVE.L #$FFFF7FF0,(A7)+		
*		MOVE.L #$A0009000,(A7)+
*		MOVE.L #$00009876,(A7)+		
*		MOVE.L #$FFEE0202,(A7)+		
*		MOVE.L #$12345678,(A7)+
*		MOVE.L #$AAAAAAAA,(A7)+
*		MOVE.L #$B2C3A1E8,(A7)+
*		MOVE.L #$77777778,(A7)+
*		MOVE.L #$CCCCCCCC,(A7)+
*		MOVE.L #$C7C77AA0,(A7)+
*		MOVE.L #$12312312,(A7)+
************************************ End with MOVE.L #<data> to (An)+	
*
*		*** Destination -(An) ***	
************************************ Start with MOVE.L Dn to -(An)
*		MOVE.L	D0,-(A0)
*		MOVE.L	D0,-(A1)
*		MOVE.L	D0,-(A2)
*		MOVE.L	D0,-(A3)
*		MOVE.L	D0,-(A4)
*		MOVE.L	D0,-(A5)
*		MOVE.L	D0,-(A6)
*		MOVE.L	D0,-(A7)
*		
*		MOVE.L	D1,-(A0)
*		MOVE.L	D1,-(A1)
*		MOVE.L	D1,-(A2)
*		MOVE.L	D1,-(A3)
*		MOVE.L	D1,-(A4)
*		MOVE.L	D1,-(A5)
*		MOVE.L	D1,-(A6)
*		MOVE.L	D1,-(A7)
*		
*		MOVE.L	D2,-(A0)
*		MOVE.L	D2,-(A1)
*		MOVE.L	D2,-(A2)
*		MOVE.L	D2,-(A3)
*		MOVE.L	D2,-(A4)
*		MOVE.L	D2,-(A5)
*		MOVE.L	D2,-(A6)
*		MOVE.L	D2,-(A7)
*		
*		MOVE.L	D3,-(A0)
*		MOVE.L	D3,-(A1)
*		MOVE.L	D3,-(A2)
*		MOVE.L	D3,-(A3)
*		MOVE.L	D3,-(A4)
*		MOVE.L	D3,-(A5)
*		MOVE.L	D3,-(A6)
*		MOVE.L	D3,-(A7)
*		
*		MOVE.L	D4,-(A0)
*		MOVE.L	D4,-(A1)
*		MOVE.L	D4,-(A2)
*		MOVE.L	D4,-(A3)
*		MOVE.L	D4,-(A4)
*		MOVE.L	D4,-(A5)
*		MOVE.L	D4,-(A6)
*		MOVE.L	D4,-(A7)		
*
*		MOVE.L	D5,-(A0)
*		MOVE.L	D5,-(A1)
*		MOVE.L	D5,-(A2)
*		MOVE.L	D5,-(A3)
*		MOVE.L	D5,-(A4)
*		MOVE.L	D5,-(A5)
*		MOVE.L	D5,-(A6)
*		MOVE.L	D5,-(A7)	
*
*		MOVE.L	D6,-(A0)
*		MOVE.L	D6,-(A1)
*		MOVE.L	D6,-(A2)
*		MOVE.L	D6,-(A3)
*		MOVE.L	D6,-(A4)
*		MOVE.L	D6,-(A5)
*		MOVE.L	D6,-(A6)
*		MOVE.L	D6,-(A7)
*		
*		MOVE.L	D7,-(A0)
*		MOVE.L	D7,-(A1)
*		MOVE.L	D7,-(A2)
*		MOVE.L	D7,-(A3)
*		MOVE.L	D7,-(A4)
*		MOVE.L	D7,-(A5)
*		MOVE.L	D7,-(A6)
*		MOVE.L	D7,-(A7)
************************************ End with MOVE.L Dn to -(An)
*		
************************************ Start with MOVE.L An to -(An)
*		MOVE.L	A0,-(A0)
*		MOVE.L	A0,-(A1)
*		MOVE.L	A0,-(A2)
*		MOVE.L	A0,-(A3)
*		MOVE.L	A0,-(A4)
*		MOVE.L	A0,-(A5)
*		MOVE.L	A0,-(A6)
*		MOVE.L	A0,-(A7)
*		
*		MOVE.L	A1,-(A0)
*		MOVE.L	A1,-(A1)
*		MOVE.L	A1,-(A2)
*		MOVE.L	A1,-(A3)
*		MOVE.L	A1,-(A4)
*		MOVE.L	A1,-(A5)
*		MOVE.L	A1,-(A6)
*		MOVE.L	A1,-(A7)
*		
*		MOVE.L	A2,-(A0)
*		MOVE.L	A2,-(A1)
*		MOVE.L	A2,-(A2)
*		MOVE.L	A2,-(A3)
*		MOVE.L	A2,-(A4)
*		MOVE.L	A2,-(A5)
*		MOVE.L	A2,-(A6)
*		MOVE.L	A2,-(A7)
*		
*		MOVE.L	A3,-(A0)
*		MOVE.L	A3,-(A1)
*		MOVE.L	A3,-(A2)
*		MOVE.L	A3,-(A3)
*		MOVE.L	A3,-(A4)
*		MOVE.L	A3,-(A5)
*		MOVE.L	A3,-(A6)
*		MOVE.L	A3,-(A7)
*		
*		MOVE.L	A4,-(A0)
*		MOVE.L	A4,-(A1)
*		MOVE.L	A4,-(A2)
*		MOVE.L	A4,-(A3)
*		MOVE.L	A4,-(A4)
*		MOVE.L	A4,-(A5)
*		MOVE.L	A4,-(A6)
*		MOVE.L	A4,-(A7)		
*
*		MOVE.L	A5,-(A0)
*		MOVE.L	A5,-(A1)
*		MOVE.L	A5,-(A2)
*		MOVE.L	A5,-(A3)
*		MOVE.L	A5,-(A4)
*		MOVE.L	A5,-(A5)
*		MOVE.L	A5,-(A6)
*		MOVE.L	A5,-(A7)		
*
*		MOVE.L	A6,-(A0)
*		MOVE.L	A6,-(A1)
*		MOVE.L	A6,-(A2)
*		MOVE.L	A6,-(A3)
*		MOVE.L	A6,-(A4)
*		MOVE.L	A6,-(A5)
*		MOVE.L	A6,-(A6)
*		MOVE.L	A6,-(A7)
*		
*		MOVE.L	A7,-(A0)
*		MOVE.L	A7,-(A1)
*		MOVE.L	A7,-(A2)
*		MOVE.L	A7,-(A3)
*		MOVE.L	A7,-(A4)
*		MOVE.L	A7,-(A5)
*		MOVE.L	A7,-(A6)
*		MOVE.L	A7,-(A7)
************************************ End with MOVE.L An to -(An)
*		
************************************ Start with MOVE.L (An) to -(An)
*		MOVE.L	(A0),-(A0)
*		MOVE.L	(A0),-(A1)
*		MOVE.L	(A0),-(A2)
*		MOVE.L	(A0),-(A3)
*		MOVE.L	(A0),-(A4)
*		MOVE.L	(A0),-(A5)
*		MOVE.L	(A0),-(A6)
*		MOVE.L	(A0),-(A7)
*		
*		MOVE.L	(A1),-(A0)
*		MOVE.L	(A1),-(A1)
*		MOVE.L	(A1),-(A2)
*		MOVE.L	(A1),-(A3)
*		MOVE.L	(A1),-(A4)
*		MOVE.L	(A1),-(A5)
*		MOVE.L	(A1),-(A6)
*		MOVE.L	(A1),-(A7)
*		
*		MOVE.L	(A2),-(A0)
*		MOVE.L	(A2),-(A1)
*		MOVE.L	(A2),-(A2)
*		MOVE.L	(A2),-(A3)
*		MOVE.L	(A2),-(A4)
*		MOVE.L	(A2),-(A5)
*		MOVE.L	(A2),-(A6)
*		MOVE.L	(A2),-(A7)
*		
*		MOVE.L	(A3),-(A0)
*		MOVE.L	(A3),-(A1)
*		MOVE.L	(A3),-(A2)
*		MOVE.L	(A3),-(A3)
*		MOVE.L	(A3),-(A4)
*		MOVE.L	(A3),-(A5)
*		MOVE.L	(A3),-(A6)
*		MOVE.L	(A3),-(A7)
*		
*		MOVE.L	(A4),-(A0)
*		MOVE.L	(A4),-(A1)
*		MOVE.L	(A4),-(A2)
*		MOVE.L	(A4),-(A3)
*		MOVE.L	(A4),-(A4)
*		MOVE.L	(A4),-(A5)
*		MOVE.L	(A4),-(A6)
*		MOVE.L	(A4),-(A7)		
*
*		MOVE.L	(A5),-(A0)
*		MOVE.L	(A5),-(A1)
*		MOVE.L	(A5),-(A2)
*		MOVE.L	(A5),-(A3)
*		MOVE.L	(A5),-(A4)
*		MOVE.L	(A5),-(A5)
*		MOVE.L	(A5),-(A6)
*		MOVE.L	(A5),-(A7)		
*
*		MOVE.L	(A6),-(A0)
*		MOVE.L	(A6),-(A1)
*		MOVE.L	(A6),-(A2)
*		MOVE.L	(A6),-(A3)
*		MOVE.L	(A6),-(A4)
*		MOVE.L	(A6),-(A5)
*		MOVE.L	(A6),-(A6)
*		MOVE.L	(A6),-(A7)
*		
*		MOVE.L	(A7),-(A0)
*		MOVE.L	(A7),-(A1)
*		MOVE.L	(A7),-(A2)
*		MOVE.L	(A7),-(A3)
*		MOVE.L	(A7),-(A4)
*		MOVE.L	(A7),-(A5)
*		MOVE.L	(A7),-(A6)
*		MOVE.L	(A7),-(A7)
************************************ End with MOVE.L (An) to -(An)
*		
************************************ Start with MOVE.L (An)+ to -(An)
*		MOVE.L	(A0)+,-(A0)
*		MOVE.L	(A0)+,-(A1)
*		MOVE.L	(A0)+,-(A2)
*		MOVE.L	(A0)+,-(A3)
*		MOVE.L	(A0)+,-(A4)
*		MOVE.L	(A0)+,-(A5)
*		MOVE.L	(A0)+,-(A6)
*		MOVE.L	(A0)+,-(A7)
*
*		MOVE.L	(A1)+,-(A0)
*		MOVE.L	(A1)+,-(A1)
*		MOVE.L	(A1)+,-(A2)
*		MOVE.L	(A1)+,-(A3)
*		MOVE.L	(A1)+,-(A4)
*		MOVE.L	(A1)+,-(A5)
*		MOVE.L	(A1)+,-(A6)
*		MOVE.L	(A1)+,-(A7)
*
*		MOVE.L	(A2)+,-(A0)
*		MOVE.L	(A2)+,-(A1)
*		MOVE.L	(A2)+,-(A2)
*		MOVE.L	(A2)+,-(A3)
*		MOVE.L	(A2)+,-(A4)
*		MOVE.L	(A2)+,-(A5)
*		MOVE.L	(A2)+,-(A6)
*		MOVE.L	(A2)+,-(A7)
*
*		MOVE.L	(A3)+,-(A0)
*		MOVE.L	(A3)+,-(A1)
*		MOVE.L	(A3)+,-(A2)
*		MOVE.L	(A3)+,-(A3)
*		MOVE.L	(A3)+,-(A4)
*		MOVE.L	(A3)+,-(A5)
*		MOVE.L	(A3)+,-(A6)
*		MOVE.L	(A3)+,-(A7)
*
*		MOVE.L	(A4)+,-(A0)
*		MOVE.L	(A4)+,-(A1)
*		MOVE.L	(A4)+,-(A2)
*		MOVE.L	(A4)+,-(A3)
*		MOVE.L	(A4)+,-(A4)
*		MOVE.L	(A4)+,-(A5)
*		MOVE.L	(A4)+,-(A6)
*		MOVE.L	(A4)+,-(A7)
*
*		MOVE.L	(A5)+,-(A0)
*		MOVE.L	(A5)+,-(A1)
*		MOVE.L	(A5)+,-(A2)
*		MOVE.L	(A5)+,-(A3)
*		MOVE.L	(A5)+,-(A4)
*		MOVE.L	(A5)+,-(A5)
*		MOVE.L	(A5)+,-(A6)
*		MOVE.L	(A5)+,-(A7)
*
*		MOVE.L	(A6)+,-(A0)
*		MOVE.L	(A6)+,-(A1)
*		MOVE.L	(A6)+,-(A2)
*		MOVE.L	(A6)+,-(A3)
*		MOVE.L	(A6)+,-(A4)
*		MOVE.L	(A6)+,-(A5)
*		MOVE.L	(A6)+,-(A6)
*		MOVE.L	(A6)+,-(A7)
*
*		MOVE.L	(A7)+,-(A0)
*		MOVE.L	(A7)+,-(A1)
*		MOVE.L	(A7)+,-(A2)
*		MOVE.L	(A7)+,-(A3)
*		MOVE.L	(A7)+,-(A4)
*		MOVE.L	(A7)+,-(A5)
*		MOVE.L	(A7)+,-(A6)
*		MOVE.L	(A7)+,-(A7)
************************************ End with MOVE.L (An)+ to -(An)
*
************************************ Start with MOVE.L -(An) to -(An)
*		MOVE.L	-(A0),-(A0)
*		MOVE.L	-(A0),-(A1)
*		MOVE.L	-(A0),-(A2)
*		MOVE.L	-(A0),-(A3)
*		MOVE.L	-(A0),-(A4)
*		MOVE.L	-(A0),-(A5)
*		MOVE.L	-(A0),-(A6)
*		MOVE.L	-(A0),-(A7)
*
*		MOVE.L	-(A1),-(A0)
*		MOVE.L	-(A1),-(A1)
*		MOVE.L	-(A1),-(A2)
*		MOVE.L	-(A1),-(A3)
*		MOVE.L	-(A1),-(A4)
*		MOVE.L	-(A1),-(A5)
*		MOVE.L	-(A1),-(A6)
*		MOVE.L	-(A1),-(A7)
*
*		MOVE.L	-(A2),-(A0)
*		MOVE.L	-(A2),-(A1)
*		MOVE.L	-(A2),-(A2)
*		MOVE.L	-(A2),-(A3)
*		MOVE.L	-(A2),-(A4)
*		MOVE.L	-(A2),-(A5)
*		MOVE.L	-(A2),-(A6)
*		MOVE.L	-(A2),-(A7)
*
*		MOVE.L	-(A3),-(A0)
*		MOVE.L	-(A3),-(A1)
*		MOVE.L	-(A3),-(A2)
*		MOVE.L	-(A3),-(A3)
*		MOVE.L	-(A3),-(A4)
*		MOVE.L	-(A3),-(A5)
*		MOVE.L	-(A3),-(A6)
*		MOVE.L	-(A3),-(A7)
*
*		MOVE.L	-(A4),-(A0)
*		MOVE.L	-(A4),-(A1)
*		MOVE.L	-(A4),-(A2)
*		MOVE.L	-(A4),-(A3)
*		MOVE.L	-(A4),-(A4)
*		MOVE.L	-(A4),-(A5)
*		MOVE.L	-(A4),-(A6)
*		MOVE.L	-(A4),-(A7)
*
*		MOVE.L	-(A5),-(A0)
*		MOVE.L	-(A5),-(A1)
*		MOVE.L	-(A5),-(A2)
*		MOVE.L	-(A5),-(A3)
*		MOVE.L	-(A5),-(A4)
*		MOVE.L	-(A5),-(A5)
*		MOVE.L	-(A5),-(A6)
*		MOVE.L	-(A5),-(A7)
*
*		MOVE.L	-(A6),-(A0)
*		MOVE.L	-(A6),-(A1)
*		MOVE.L	-(A6),-(A2)
*		MOVE.L	-(A6),-(A3)
*		MOVE.L	-(A6),-(A4)
*		MOVE.L	-(A6),-(A5)
*		MOVE.L	-(A6),-(A6)
*		MOVE.L	-(A6),-(A7)
*
*		MOVE.L	-(A7),-(A0)
*		MOVE.L	-(A7),-(A1)
*		MOVE.L	-(A7),-(A2)
*		MOVE.L	-(A7),-(A3)
*		MOVE.L	-(A7),-(A4)
*		MOVE.L	-(A7),-(A5)
*		MOVE.L	-(A7),-(A6)
*		MOVE.L	-(A7),-(A7)
************************************ End with MOVE.L -(An) to -(An)
*
************************************ Start with MOVE.L (xxxx).W to -(An)
*		MOVE.L	$00000000,-(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007FF0,-(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,-(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFFF0,-(A0)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,-(A0)
*		MOVE.L	$0,-(A0)
*		MOVE.L	$1234,-(A0)
*		MOVE.L	$56,-(A0)
*		MOVE.L	$210,-(A0)
*		MOVE.L	$7770,-(A0)
*		MOVE.L	$A,-(A0)
*
*		MOVE.L	$00000000,-(A4)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007FF0,-(A4)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,-(A4)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFFF0,-(A4)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,-(A4)
*		MOVE.L	$0,-(A4)
*		MOVE.L	$22,-(A4)
*		MOVE.L	$420,-(A4)
*		MOVE.L	$3876,-(A4)
*		MOVE.L	$1222,-(A4)
*		MOVE.L	$12,-(A4)
*
*		MOVE.L	$00000000,-(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007FF0,-(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,-(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFFF0,-(A6)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,-(A6)
*		MOVE.L	$0,-(A6)
*		MOVE.L	$22,-(A6)
*		MOVE.L	$420,-(A6)
*		MOVE.L	$3876,-(A6)
*		MOVE.L	$1222,-(A6)
*		MOVE.L	$12,-(A6)
*
*		MOVE.L	$00000000,-(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00007FF0,-(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFF8000,-(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$FFFFFFF0,-(A7)		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	$00,-(A7)
*		MOVE.L	$0,-(A7)
*		MOVE.L	$10,-(A7)
*		MOVE.L	$106,-(A7)
*		MOVE.L	$5550,-(A7)
*		MOVE.L	$2460,-(A7)
*		MOVE.L	$0FF0,-(A7)
*		MOVE.L	$E8,-(A7)
************************************ End with MOVE.L (xxxx).W to -(An)	
*
*
************************************ Start with MOVE.L (xxxx).L to -(An)
*		MOVE.L $00008000,-(A0)		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7FF0,-(A0)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,-(A0)
*		MOVE.L $00009876,-(A0)		
*		MOVE.L $FFEE0202,-(A0)		
*		MOVE.L $12345678,-(A0)
*		MOVE.L $AAAAAAAA,-(A0)
*		MOVE.L $B2C3A1E0,-(A0)
*		MOVE.L $77777770,-(A0)
*		MOVE.L $CCCCCCCA,-(A0)
*		MOVE.L $C7C77AA0,-(A0)
*		MOVE.L $10101010,-(A0)
*
*		MOVE.L $00008000,-(A3)		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7FF0,-(A3)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,-(A3)
*		MOVE.L $00009870,-(A3)		
*		MOVE.L $FFEE0202,-(A3)		
*		MOVE.L $12345678,-(A3)
*		MOVE.L $AAAAAAAA,-(A3)
*		MOVE.L $B2C3A1E0,-(A3)
*		MOVE.L $77777770,-(A3)
*		MOVE.L $CCCCCCC0,-(A3)
*		MOVE.L $C7C77AA0,-(A3)
*		MOVE.L $10101010,-(A3)
*
*		MOVE.L $00008000,-(A5)		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7FF0,-(A5)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,-(A5)
*		MOVE.L $00009876,-(A5)		
*		MOVE.L $FFEE0202,-(A5)		
*		MOVE.L $12345678,-(A5)
*		MOVE.L $AAAAAAAA,-(A5)
*		MOVE.L $B2C3A1E0,-(A5)
*		MOVE.L $77777770,-(A5)
*		MOVE.L $CCCCCCC4,-(A5)
*		MOVE.L $C7C77AA0,-(A5)
*		MOVE.L $10101010,-(A5)
*
*		MOVE.L $00008000,-(A7)		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7FF0,-(A7)		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,-(A7)
*		MOVE.L $00009876,-(A7)		
*		MOVE.L $FFEE0202,-(A7)		
*		MOVE.L $12345678,-(A7)
*		MOVE.L $AAAAAAA0,-(A7)
*		MOVE.L $B2C3A1E0,-(A7)
*		MOVE.L $77777770,-(A7)
*		MOVE.L $CCCCCCC0,-(A7)
*		MOVE.L $C7C77AA0,-(A7)
*		MOVE.L $10101010,-(A7)
************************************ End with MOVE.L (xxxx).L to -(An)	
*
************************************ Start with MOVE.L <data> to -(An)
*		MOVE.L #$00000080,-(A0)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An). 
*		MOVE.L #$000000FA,-(A0)
*		MOVE.L #$00000110,-(A0)
*		MOVE.L #$00001110,-(A0)
*		MOVE.L #$00008000,-(A0)
*		MOVE.L #$FFFF8110,-(A0)		
*		MOVE.L #$FFFF7FF0,-(A0)		
*		MOVE.L #$00009000,-(A0)
*		MOVE.L #$A0009876,-(A0)		
*		MOVE.L #$FFEE0202,-(A0)		
*		MOVE.L #$12345678,-(A0)
*		MOVE.L #$AAAAAAAA,-(A0)
*		MOVE.L #$B2C3A1E0,-(A0)
*		MOVE.L #$77777770,-(A0)
*		MOVE.L #$CCCCCCCC,-(A0)
*		MOVE.L #$C7C77AA0,-(A0)
*		MOVE.L #$12312312,-(A0)
*
*		MOVE.L #$00000080,-(A3)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An).
*		MOVE.L #$000000FA,-(A3)
*		MOVE.L #$00000110,-(A3)
*		MOVE.L #$00001110,-(A3)
*		MOVE.L #$00008000,-(A3)
*		MOVE.L #$FFFF8110,-(A3)		
*		MOVE.L #$FFFF7FF0,-(A3)		
*		MOVE.L #$00009000,-(A3)
*		MOVE.L #$A0009876,-(A3)		
*		MOVE.L #$FFEE0202,-(A3)		
*		MOVE.L #$12345678,-(A3)
*		MOVE.L #$AAAAAAAA,-(A3)
*		MOVE.L #$B2C3A1E0,-(A3)
*		MOVE.L #$77777770,-(A3)
*		MOVE.L #$CCCCCCCC,-(A3)
*		MOVE.L #$C7C77AA0,-(A3)
*		MOVE.L #$12312312,-(A3)
*
*		MOVE.L #$00000080,-(A5)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An).
*		MOVE.L #$000000FA,-(A5)
*		MOVE.L #$00000110,-(A5)
*		MOVE.L #$00001110,-(A5)
*		MOVE.L #$00008000,-(A5)		
*		MOVE.L #$FFFF8110,-(A5)
*		MOVE.L #$FFFF7FF0,-(A5)		
*		MOVE.L #$00009000,-(A5)
*		MOVE.L #$A0009876,-(A5)		
*		MOVE.L #$FFEE0202,-(A5)		
*		MOVE.L #$12345678,-(A5)
*		MOVE.L #$AAAAAAAA,-(A5)
*		MOVE.L #$B2C3A1E0,-(A5)
*		MOVE.L #$77777770,-(A5)
*		MOVE.L #$CCCCCCC0,-(A5)
*		MOVE.L #$C7C77AA0,-(A5)
*		MOVE.L #$12312312,-(A5)
*
*		MOVE.L #$00000080,-(A7)		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to -(An).
*		MOVE.L #$000000F0,-(A7)
*		MOVE.L #$00000110,-(A7)
*		MOVE.L #$00001110,-(A7)
*		MOVE.L #$00008000,-(A7)
*		MOVE.L #$FFFF8114,-(A7)		
*		MOVE.L #$FFFF7FF4,-(A7)		
*		MOVE.L #$A0009000,-(A7)
*		MOVE.L #$00009876,-(A7)		
*		MOVE.L #$FFEE0202,-(A7)		
*		MOVE.L #$12345678,-(A7)
*		MOVE.L #$AAAAAAAA,-(A7)
*		MOVE.L #$B2C3A1E4,-(A7)
*		MOVE.L #$77777774,-(A7)
*		MOVE.L #$CCCCCCCC,-(A7)
*		MOVE.L #$C7C77AA4,-(A7)
*		MOVE.L #$12312312,-(A7)
************************************ End with MOVE.L #<data> to -(An)
*		
*		*** Destination (xxxx).W
************************************ Start with MOVE.L Dn to (xxxx).W
*		MOVE.L	D0,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	D0,$00007F00		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	D0,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	D0,$FFFFFF00		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	D0,$5D00
*		MOVE.L	D0,$2222
*		MOVE.L	D0,$A
*		MOVE.L	D0,$12
*		MOVE.L	D0,$BBC
*		MOVE.L	D0,$6000
*		MOVE.L	D0,$00003456
*		MOVE.L	D0,$FFFFABD0
*		
*		MOVE.L	D1,$00000000
*		MOVE.L	D1,$00007F00
*		MOVE.L	D1,$FFFF8000
*		MOVE.L	D1,$FFFFFF00
*		MOVE.L	D1,$5D00
*		MOVE.L	D1,$2222
*		MOVE.L	D1,$A
*		MOVE.L	D1,$12
*		MOVE.L	D1,$BBC
*		MOVE.L	D1,$6000
*		MOVE.L	D1,$00003456
*		MOVE.L	D1,$FFFFABD0		
*
*		MOVE.L	D2,$00000000
*		MOVE.L	D2,$00007F00
*		MOVE.L	D2,$FFFF8000
*		MOVE.L	D2,$FFFFFF00
*		MOVE.L	D2,$5D00
*		MOVE.L	D2,$2222
*		MOVE.L	D2,$A
*		MOVE.L	D2,$12
*		MOVE.L	D2,$BBC
*		MOVE.L	D2,$6000
*		MOVE.L	D2,$00003456
*		MOVE.L	D2,$FFFFABD0	
*
*		MOVE.L	D3,$00000000
*		MOVE.L	D3,$00007F00
*		MOVE.L	D3,$FFFF8000
*		MOVE.L	D3,$FFFFFF00
*		MOVE.L	D3,$5D00
*		MOVE.L	D3,$2222
*		MOVE.L	D3,$A
*		MOVE.L	D3,$12
*		MOVE.L	D3,$BBC
*		MOVE.L	D3,$6000
*		MOVE.L	D3,$00003456
*		MOVE.L	D3,$FFFFABD0
*
*		MOVE.L	D4,$00000000
*		MOVE.L	D4,$00007F00
*		MOVE.L	D4,$FFFF8000
*		MOVE.L	D4,$FFFFFF00
*		MOVE.L	D4,$5D00
*		MOVE.L	D4,$2222
*		MOVE.L	D4,$A
*		MOVE.L	D4,$12
*		MOVE.L	D4,$BBC
*		MOVE.L	D4,$6000
*		MOVE.L	D4,$00003456
*		MOVE.L	D4,$FFFFABD0	
*
*		MOVE.L	D5,$00000000
*		MOVE.L	D5,$00007F00
*		MOVE.L	D5,$FFFF8000
*		MOVE.L	D5,$FFFFFF00
*		MOVE.L	D5,$5D00
*		MOVE.L	D5,$2222
*		MOVE.L	D5,$A
*		MOVE.L	D5,$12
*		MOVE.L	D5,$BBC
*		MOVE.L	D5,$6000
*		MOVE.L	D5,$00003456
*		MOVE.L	D5,$FFFFABD0	
*
*		MOVE.L	D6,$00000000
*		MOVE.L	D6,$00007F00
*		MOVE.L	D6,$FFFF8000
*		MOVE.L	D6,$FFFFFF00
*		MOVE.L	D6,$5D00
*		MOVE.L	D6,$2222
*		MOVE.L	D6,$A
*		MOVE.L	D6,$12
*		MOVE.L	D6,$BBC
*		MOVE.L	D6,$6000
*		MOVE.L	D6,$00003456
*		MOVE.L	D6,$FFFFABD0	
*		
*		MOVE.L	D7,$00000000
*		MOVE.L	D7,$00007F00
*		MOVE.L	D7,$FFFF8000
*		MOVE.L	D7,$FFFFFF00
*		MOVE.L	D7,$5D00
*		MOVE.L	D7,$2222
*		MOVE.L	D7,$A
*		MOVE.L	D7,$12
*		MOVE.L	D7,$BBC
*		MOVE.L	D7,$6000
*		MOVE.L	D7,$00003456
*		MOVE.L	D7,$FFFFABD0	
************************************ End with MOVE.L Dn to (xxxx).W
*		
************************************ Start with MOVE.L An to (xxxx).W
*		MOVE.L	A0,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	A0,$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	A0,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	A0,$FFFFFFF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	A0,$5D20
*		MOVE.L	A0,$2222
*		MOVE.L	A0,$A
*		MOVE.L	A0,$12
*		MOVE.L	A0,$BBC
*		MOVE.L	A0,$6000
*		MOVE.L	A0,$00003456
*		MOVE.L	A0,$FFFFABD0
*		
*		MOVE.L	A1,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	A1,$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	A1,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	A1,$FFFFFFF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	A1,$5D20
*		MOVE.L	A1,$2222
*		MOVE.L	A1,$A
*		MOVE.L	A1,$12
*		MOVE.L	A1,$BBC
*		MOVE.L	A1,$6000
*		MOVE.L	A1,$00003456
*		MOVE.L	A1,$FFFFABD0		
*
*		MOVE.L	A2,$00000000
*		MOVE.L	A2,$00007FF0
*		MOVE.L	A2,$FFFF8000
*		MOVE.L	A2,$FFFFFFF0
*		MOVE.L	A2,$5D20
*		MOVE.L	A2,$2222
*		MOVE.L	A2,$A
*		MOVE.L	A2,$12
*		MOVE.L	A2,$BBC
*		MOVE.L	A2,$6000
*		MOVE.L	A2,$00003456
*		MOVE.L	A2,$FFFFABD0
*
*		MOVE.L	A3,$00000000
*		MOVE.L	A3,$00007FF0
*		MOVE.L	A3,$FFFF8000
*		MOVE.L	A3,$FFFFFFF0
*		MOVE.L	A3,$5D20
*		MOVE.L	A3,$2222
*		MOVE.L	A3,$A
*		MOVE.L	A3,$12
*		MOVE.L	A3,$BBC
*		MOVE.L	A3,$6000
*		MOVE.L	A3,$00003456
*		MOVE.L	A3,$FFFFABD0
*
*		MOVE.L	A4,$00000000
*		MOVE.L	A4,$00007FF0
*		MOVE.L	A4,$FFFF8000
*		MOVE.L	A4,$FFFFFFF0
*		MOVE.L	A4,$5D20
*		MOVE.L	A4,$2222
*		MOVE.L	A4,$A
*		MOVE.L	A4,$12
*		MOVE.L	A4,$BBC
*		MOVE.L	A4,$6000
*		MOVE.L	A4,$00003456
*		MOVE.L	A4,$FFFFABD0
*
*		MOVE.L	A5,$00000000
*		MOVE.L	A5,$00007FF0
*		MOVE.L	A5,$FFFF8000
*		MOVE.L	A5,$FFFFFFF0
*		MOVE.L	A5,$5D20
*		MOVE.L	A5,$2222
*		MOVE.L	A5,$A
*		MOVE.L	A5,$12
*		MOVE.L	A5,$BBC
*		MOVE.L	A5,$6000
*		MOVE.L	A5,$00003456
*		MOVE.L	A5,$FFFFABD0
*
*		MOVE.L	A6,$00000000
*		MOVE.L	A6,$00007FF0
*		MOVE.L	A6,$FFFF8000
*		MOVE.L	A6,$FFFFFFF0
*		MOVE.L	A6,$5D20
*		MOVE.L	A6,$2222
*		MOVE.L	A6,$A
*		MOVE.L	A6,$12
*		MOVE.L	A6,$BBC
*		MOVE.L	A6,$6000
*		MOVE.L	A6,$00003456
*		MOVE.L	A6,$FFFFABD0
*		
*		MOVE.L	A7,$00000000
*		MOVE.L	A7,$00007FF0
*		MOVE.L	A7,$FFFF8000
*		MOVE.L	A7,$FFFFFFF0
*		MOVE.L	A7,$5D20
*		MOVE.L	A7,$2222
*		MOVE.L	A7,$A
*		MOVE.L	A7,$12
*		MOVE.L	A7,$BBC
*		MOVE.L	A7,$6000
*		MOVE.L	A7,$00003456
*		MOVE.L	A7,$FFFFABD0
************************************ End with MOVE.L An to (xxxx).W
*		
************************************ Start with MOVE.L (An) to (xxxx).W
*		MOVE.L	(A0),$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	(A0),$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	(A0),$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	(A0),$FFFFFFF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	(A0),$5D20
*		MOVE.L	(A0),$2222
*		MOVE.L	(A0),$A
*		MOVE.L	(A0),$12
*		MOVE.L	(A0),$BBC
*		MOVE.L	(A0),$6000
*		MOVE.L	(A0),$00003456
*		MOVE.L	(A0),$FFFFABD0
*		
*		MOVE.L	(A1),$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	(A1),$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	(A1),$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	(A1),$FFFFFFF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L	(A1),$5D20
*		MOVE.L	(A1),$2222
*		MOVE.L	(A1),$A
*		MOVE.L	(A1),$12
*		MOVE.L	(A1),$BBC
*		MOVE.L	(A1),$6000
*		MOVE.L	(A1),$00003456A
*		MOVE.L	(A1),$FFFFABD0		
*
*		MOVE.L	(A2),$00000000
*		MOVE.L	(A2),$00007FF0
*		MOVE.L	(A2),$FFFF8000
*		MOVE.L	(A2),$FFFFFFF0
*		MOVE.L	(A2),$5D20
*		MOVE.L	(A2),$2222
*		MOVE.L	(A2),$A
*		MOVE.L	(A2),$12
*		MOVE.L	(A2),$BBC
*		MOVE.L	(A2),$6000
*		MOVE.L	(A2),$00003456
*		MOVE.L	(A2),$FFFFABDC
*		
*		MOVE.L	(A3),$00000000
*		MOVE.L	(A3),$00007FF0
*		MOVE.L	(A3),$FFFF8000
*		MOVE.L	(A3),$FFFFFFF0
*		MOVE.L	(A3),$5D20
*		MOVE.L	(A3),$2222
*		MOVE.L	(A3),$A
*		MOVE.L	(A3),$12
*		MOVE.L	(A3),$BBC
*		MOVE.L	(A3),$6000
*		MOVE.L	(A3),$00003456
*		MOVE.L	(A3),$FFFFABD0
*
*		MOVE.L	(A4),$00000000
*		MOVE.L	(A4),$00007FF0
*		MOVE.L	(A4),$FFFF8000
*		MOVE.L	(A4),$FFFFFFF0
*		MOVE.L	(A4),$5D20
*		MOVE.L	(A4),$2222
*		MOVE.L	(A4),$A
*		MOVE.L	(A4),$12
*		MOVE.L	(A4),$BBC
*		MOVE.L	(A4),$6000
*		MOVE.L	(A4),$00003456
*		MOVE.L	(A4),$FFFFABD0
*
*		MOVE.L	(A5),$00000000
*		MOVE.L	(A5),$00007FF0
*		MOVE.L	(A5),$FFFF8000
*		MOVE.L	(A5),$FFFFFFF0
*		MOVE.L	(A5),$5D20
*		MOVE.L	(A5),$2222
*		MOVE.L	(A5),$A
*		MOVE.L	(A5),$12
*		MOVE.L	(A5),$BBC
*		MOVE.L	(A5),$6000
*		MOVE.L	(A5),$00003456
*		MOVE.L	(A5),$FFFFABD0
*
*		MOVE.L	(A6),$00000000
*		MOVE.L	(A6),$00007FF0
*		MOVE.L	(A6),$FFFF8000
*		MOVE.L	(A6),$FFFFFFF0
*		MOVE.L	(A6),$5D20
*		MOVE.L	(A6),$2222
*		MOVE.L	(A6),$A
*		MOVE.L	(A6),$12
*		MOVE.L	(A6),$BBC
*		MOVE.L	(A6),$6000
*		MOVE.L	(A6),$00003456
*		MOVE.L	(A6),$FFFFABD0
*		
*		MOVE.L	(A7),$00000000
*		MOVE.L	(A7),$00007FF0
*		MOVE.L	(A7),$FFFF8000
*		MOVE.L	(A7),$FFFFFFF0
*		MOVE.L	(A7),$5D20
*		MOVE.L	(A7),$2222
*		MOVE.L	(A7),$A
*		MOVE.L	(A7),$12
*		MOVE.L	(A7),$BBC
*		MOVE.L	(A7),$6000
*		MOVE.L	(A7),$00003456
*		MOVE.L	(A7),$FFFFABD0
************************************ End with MOVE.L (An) to (xxxx).W
*		
************************************ Start with MOVE.L (An)+ to (xxxx).W
*		MOVE.L	(A0)+,$00000000
*		MOVE.L	(A0)+,$00007FF0
*		MOVE.L	(A0)+,$FFFF8000
*		MOVE.L	(A0)+,$FFFFFFF0
*		MOVE.L	(A0)+,$5D22
*		MOVE.L	(A0)+,$2222
*		MOVE.L	(A0)+,$A
*		MOVE.L	(A0)+,$BBC
*		MOVE.L	(A0)+,$6000
*		MOVE.L	(A0)+,$00003456
*		MOVE.L	(A0)+,$FFFFABD0	
*
*		MOVE.L	(A1)+,$00000000
*		MOVE.L	(A1)+,$00007FF0
*		MOVE.L	(A1)+,$FFFF8000
*		MOVE.L	(A1)+,$FFFFFFF0
*		MOVE.L	(A1)+,$5D22
*		MOVE.L	(A1)+,$2222
*		MOVE.L	(A1)+,$A
*		MOVE.L	(A1)+,$BBC
*		MOVE.L	(A1)+,$6000
*		MOVE.L	(A1)+,$00003456
*		MOVE.L	(A1)+,$FFFFABD0
*
*		MOVE.L	(A2)+,$00000000
*		MOVE.L	(A2)+,$00007FF0
*		MOVE.L	(A2)+,$FFFF8000
*		MOVE.L	(A2)+,$FFFFFFF0
*		MOVE.L	(A2)+,$5D22
*		MOVE.L	(A2)+,$2222
*		MOVE.L	(A2)+,$A
*		MOVE.L	(A2)+,$BBC
*		MOVE.L	(A2)+,$6000
*		MOVE.L	(A2)+,$00003456
*		MOVE.L	(A2)+,$FFFFABD0		
*
*		MOVE.L	(A3)+,$00000000
*		MOVE.L	(A3)+,$00007FF0
*		MOVE.L	(A3)+,$FFFF8000
*		MOVE.L	(A3)+,$FFFFFFF0
*		MOVE.L	(A3)+,$5D22
*		MOVE.L	(A3)+,$2222
*		MOVE.L	(A3)+,$A
*		MOVE.L	(A3)+,$BBC
*		MOVE.L	(A3)+,$6000
*		MOVE.L	(A3)+,$00003456
*		MOVE.L	(A3)+,$FFFFABD
*
*		MOVE.L	(A4)+,$00000000
*		MOVE.L	(A4)+,$00007FF0
*		MOVE.L	(A4)+,$FFFF8000
*		MOVE.L	(A4)+,$FFFFFFF0
*		MOVE.L	(A4)+,$5D22
*		MOVE.L	(A4)+,$2222
*		MOVE.L	(A4)+,$A
*		MOVE.L	(A4)+,$BBC
*		MOVE.L	(A4)+,$6000
*		MOVE.L	(A4)+,$00003456
*		MOVE.L	(A4)+,$FFFFABD0
*
*		MOVE.L	(A5)+,$00000000
*		MOVE.L	(A5)+,$00007FF0
*		MOVE.L	(A5)+,$FFFF8000
*		MOVE.L	(A5)+,$FFFFFFF0
*		MOVE.L	(A5)+,$5D20
*		MOVE.L	(A5)+,$2222
*		MOVE.L	(A5)+,$A
*		MOVE.L	(A5)+,$BBC
*		MOVE.L	(A5)+,$6000
*		MOVE.L	(A5)+,$00003456
*		MOVE.L	(A5)+,$FFFFABD0
*
*		MOVE.L	(A6)+,$00000000
*		MOVE.L	(A6)+,$00007FF0
*		MOVE.L	(A6)+,$FFFF8000
*		MOVE.L	(A6)+,$FFFFFFF0
*		MOVE.L	(A6)+,$5D22
*		MOVE.L	(A6)+,$2222
*		MOVE.L	(A6)+,$A
*		MOVE.L	(A6)+,$BBC
*		MOVE.L	(A6)+,$6000
*		MOVE.L	(A6)+,$00003456
*		MOVE.L	(A6)+,$FFFFABD0
*
*		MOVE.L	(A7)+,$00000000
*		MOVE.L	(A7)+,$00007FF0
*		MOVE.L	(A7)+,$FFFF8000
*		MOVE.L	(A7)+,$FFFFFFF0
*		MOVE.L	(A7)+,$5D22
*		MOVE.L	(A7)+,$2222
*		MOVE.L	(A7)+,$A
*		MOVE.L	(A7)+,$BBC
*		MOVE.L	(A7)+,$6000
*		MOVE.L	(A7)+,$00003456
*		MOVE.L	(A7)+,$FFFFABD0
************************************ End with MOVE.L (An)+ to (xxxx).W
*
************************************ Start with MOVE.L -(An) to (xxxx).W
*		MOVE.L	-(A0),$00000000
*		MOVE.L	-(A0),$00007FF0
*		MOVE.L	-(A0),$FFFF8000
*		MOVE.L	-(A0),$FFFFFFF0
*		MOVE.L	-(A0),$5D22
*		MOVE.L	-(A0),$2222
*		MOVE.L	-(A0),$A
*		MOVE.L	-(A0),$BBC
*		MOVE.L	-(A0),$6000
*		MOVE.L	-(A0),$00003456
*		MOVE.L	-(A0),$FFFFABD0
*
*		MOVE.L	-(A1),$00000000
*		MOVE.L	-(A1),$00007FF0
*		MOVE.L	-(A1),$FFFF8000
*		MOVE.L	-(A1),$FFFFFFF0
*		MOVE.L	-(A1),$5D22
*		MOVE.L	-(A1),$2222
*		MOVE.L	-(A1),$A
*		MOVE.L	-(A1),$BBC
*		MOVE.L	-(A1),$6000
*		MOVE.L	-(A1),$00003456
*		MOVE.L	-(A1),$FFFFABD0
*
*		MOVE.L	-(A2),$00000000
*		MOVE.L	-(A2),$00007FF0
*		MOVE.L	-(A2),$FFFF8000
*		MOVE.L	-(A2),$FFFFFFF0
*		MOVE.L	-(A2),$5D22
*		MOVE.L	-(A2),$2222
*		MOVE.L	-(A2),$A
*		MOVE.L	-(A2),$BBC
*		MOVE.L	-(A2),$6000
*		MOVE.L	-(A2),$00003456
*		MOVE.L	-(A2),$FFFFABD0
*
*		MOVE.L	-(A3),$00000000
*		MOVE.L	-(A3),$00007FF0
*		MOVE.L	-(A3),$FFFF8000
*		MOVE.L	-(A3),$FFFFFFF0
*		MOVE.L	-(A3),$5D22
*		MOVE.L	-(A3),$2222
*		MOVE.L	-(A3),$A
*		MOVE.L	-(A3),$BBC
*		MOVE.L	-(A3),$6000
*		MOVE.L	-(A3),$00003456
*		MOVE.L	-(A3),$FFFFABD0
*
*		MOVE.L	-(A4),$00000000
*		MOVE.L	-(A4),$00007FF0
*		MOVE.L	-(A4),$FFFF8000
*		MOVE.L	-(A4),$FFFFFFF0
*		MOVE.L	-(A4),$5D22
*		MOVE.L	-(A4),$2222
*		MOVE.L	-(A4),$A
*		MOVE.L	-(A4),$BBC
*		MOVE.L	-(A4),$6000
*		MOVE.L	-(A4),$00003456
*		MOVE.L	-(A4),$FFFFABD0
*
*		MOVE.L	-(A5),$00000000
*		MOVE.L	-(A5),$00007FF0
*		MOVE.L	-(A5),$FFFF8000
*		MOVE.L	-(A5),$FFFFFFF0
*		MOVE.L	-(A5),$5D22
*		MOVE.L	-(A5),$2222
*		MOVE.L	-(A5),$A
*		MOVE.L	-(A5),$BBC
*		MOVE.L	-(A5),$6000
*		MOVE.L	-(A5),$00003456
*		MOVE.L	-(A5),$FFFFABD0
*
*		MOVE.L	-(A6),$00000000
*		MOVE.L	-(A6),$00007FF0
*		MOVE.L	-(A6),$FFFF8000
*		MOVE.L	-(A6),$FFFFFFF0
*		MOVE.L	-(A6),$5D22
*		MOVE.L	-(A6),$2222
*		MOVE.L	-(A6),$A
*		MOVE.L	-(A6),$BBC
*		MOVE.L	-(A6),$6000
*		MOVE.L	-(A6),$00003456
*		MOVE.L	-(A6),$FFFFABD0
*
*		MOVE.L	-(A7),$00000000
*		MOVE.L	-(A7),$00007FF0
*		MOVE.L	-(A7),$FFFF8000
*		MOVE.L	-(A7),$FFFFFFF0
*		MOVE.L	-(A7),$5D22
*		MOVE.L	-(A7),$2222
*		MOVE.L	-(A7),$a
*		MOVE.L	-(A7),$BBC
*		MOVE.L	-(A7),$6000
*		MOVE.L	-(A7),$00003456
*		MOVE.L	-(A7),$FFFFABD0
************************************ End with MOVE.L -(An) to (xxxx).W
*		
************************************ Start with MOVE.L (xxxx).L to (xxxx).W
*		MOVE.L $00000000,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $00007FFF,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $FFFF8000,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $FFFFFFFF,$00000000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $00,$00000000
*		MOVE.L $0,$00000000
*		MOVE.L $1234,$00000000
*		MOVE.L $56,$00000000
*		MOVE.L $213,$00000000
*		MOVE.L $7777,$00000000
*		MOVE.L $F,$00000000
*
*		MOVE.L $00000000,$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $00007FFF,$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $FFFF8000,$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $FFFFFFFF,$00007FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $00,$00007FF0
*		MOVE.L $0,$00007FF0
*		MOVE.L $22,$00007FF0
*		MOVE.L $425,$00007FF0
*		MOVE.L $3876,$00007FF0
*		MOVE.L $1222,$00007FF0
*		MOVE.L $12,$00007FF0
*
*		MOVE.L $00000000,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $00007FFF,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $FFFF8000,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $FFFFFFFF,$FFFF8000		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $00,$FFFF8000
*		MOVE.L $0,$FFFF8000
*		MOVE.L $13,$FFFF8000
*		MOVE.L $106,$FFFF8000
*		MOVE.L $5555,$FFFF8000
*		MOVE.L $246D,$FFFF8000
*		MOVE.L $0FFF,$FFFF8000
*		MOVE.L $E8,$FFFF8000
*		
*		MOVE.L $00000000,$FFFFFFF0		
*		MOVE.L $00007FF2,$FFFFFFF0		
*		MOVE.L $FFFF8000,$FFFFFFF0		
*		MOVE.L $FFFFFFF0,$FFFFFFF0		
*		MOVE.L $00,$FFFFFFF0
*		MOVE.L $0,$FFFFFFF0
*		MOVE.L $13,$FFFFFFF0
*		MOVE.L $106,$FFFFFFF0
*		MOVE.L $5550,$FFFFFFF0
*		MOVE.L $246A,$FFFFFFF0
*		MOVE.L $0FF2,$FFFFFFF0
*		MOVE.L $E8,$FFFFFFF0
*
*		MOVE.L $00000000,$5D22		
*		MOVE.L $00007FF2,$5D22			
*		MOVE.L $FFFF8000,$5D22			
*		MOVE.L $FFFFFFF2,$5D22		
*		MOVE.L $00,$5D22
*		MOVE.L $0,$5D22
*		MOVE.L $12,$5D22
*		MOVE.L $106,$5D22
*		MOVE.L $5552,$5D22
*		MOVE.L $246A,$5D22
*		MOVE.L $0FFA,$5D22
*		MOVE.L $E8,$5D22
*
*		MOVE.L $00000000,$BBC		
*		MOVE.L $00007FFA,$BBC		
*		MOVE.L $FFFF8000,$BBC		
*		MOVE.L $FFFFFFFA,$BBC		
*		MOVE.L $00,$BBC
*		MOVE.L $0,$BBC
*		MOVE.L $1A,$BBC
*		MOVE.L $106,$BBC
*		MOVE.L $5550,$BBC
*		MOVE.L $2460,$BBC
*		MOVE.L $0FFA,$BBC
*		MOVE.L $E8,$BBC
*
*		MOVE.L $00000000,$6000		
*		MOVE.L $00007FF0,$6000		
*		MOVE.L $FFFF8000,$6000		
*		MOVE.L $FFFFFFF0,$6000		
*		MOVE.L $00,$6000
*		MOVE.L $0,$6000
*		MOVE.L $1A,$6000
*		MOVE.L $106,$6000
*		MOVE.L $555A,$6000
*		MOVE.L $246A,$6000
*		MOVE.L $0FF0,$6000
*		MOVE.L $E8,$6000
*
*		MOVE.L $00000000,$FFFFABDC		
*		MOVE.L $00007FFA,$FFFFABDC		
*		MOVE.L $FFFF8000,$FFFFABDC		
*		MOVE.L $FFFFFFFA,$FFFFABDC		
*		MOVE.L $00,$FFFFABDC
*		MOVE.L $0,$FFFFABDC
*		MOVE.L $1A,$FFFFABDC
*		MOVE.L $106,$FFFFABDC
*		MOVE.L $555A,$FFFFABDC
*		MOVE.L $2460,$FFFFABDC
*		MOVE.L $0FF2,$FFFFABDC
*		MOVE.L $E8,$FFFFABDC	
************************************ End with MOVE.L (xxxx).W to (xxxx).W	
*
************************************ Start with MOVE.L (xxxx).L to (xxxx).W
*		MOVE.L $00008000,$00000000		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7FF2,$00000000		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,$00000000
*		MOVE.L $00009876,$00000000		
*		MOVE.L $FFEE0202,$00000000		
*		MOVE.L $12345678,$00000000
*		MOVE.L $AAAAAAAA,$00000000
*		MOVE.L $B2C3A1E2,$00000000
*		MOVE.L $77777772,$00000000
*		MOVE.L $CCCCCCC2,$00000000
*		MOVE.L $C7C77AA2,$00000000
*		MOVE.L $10101010,$00000000
*		
*		MOVE.L $00008000,$00007FF0
*		MOVE.L $FFFF7FF2,$00007FF0
*		MOVE.L $00009000,$00007FF0
*		MOVE.L $00009876,$00007FF0
*		MOVE.L $FFEE0202,$00007FF0
*		MOVE.L $12345678,$00007FF0
*		MOVE.L $AAAAAAAA,$00007FF0
*		MOVE.L $B2C3A1E2,$00007FF0
*		MOVE.L $77777772,$00007FF0
*		MOVE.L $CCCCCCCC,$00007FF0
*		MOVE.L $C7C77AA2,$00007FF0
*		MOVE.L $10101010,$00007FF0
*
*		MOVE.L $00008000,$FFFF8000
*		MOVE.L $FFFF7FF2,$FFFF8000
*		MOVE.L $00009000,$FFFF8000
*		MOVE.L $00009876,$FFFF8000
*		MOVE.L $FFEE0202,$FFFF8000
*		MOVE.L $12345678,$FFFF8000
*		MOVE.L $AAAAAAAA,$FFFF8000
*		MOVE.L $B2C3A1E2,$FFFF8000
*		MOVE.L $77777772,$FFFF8000
*		MOVE.L $CCCCCCCC,$FFFF8000
*		MOVE.L $C7C77AA2,$FFFF8000
*		MOVE.L $10101010,$FFFF8000
*		
*		MOVE.L $00008000,$FFFFFFF0
*		MOVE.L $FFFF7FF2,$FFFFFFF0
*		MOVE.L $00009000,$FFFFFFF0
*		MOVE.L $00009876,$FFFFFFF0
*		MOVE.L $FFEE0202,$FFFFFFF0
*		MOVE.L $12345678,$FFFFFFF0
*		MOVE.L $AAAAAAAA,$FFFFFFF0
*		MOVE.L $B2C3A1E2,$FFFFFFF0
*		MOVE.L $77777772,$FFFFFFF0
*		MOVE.L $CCCCCCCC,$FFFFFFF0
*		MOVE.L $C7C77AA2,$FFFFFFF0
*		MOVE.L $10101010,$FFFFFFF0
*
*		MOVE.L $00008000,$5D22
*		MOVE.L $FFFF7FF2,$5D22
*		MOVE.L $00009000,$5D22
*		MOVE.L $00009876,$5D22
*		MOVE.L $FFEE0202,$5D22
*		MOVE.L $12345678,$5D22
*		MOVE.L $AAAAAAAA,$5D22
*		MOVE.L $B2C3A1E2,$5D22
*		MOVE.L $77777772,$5D22
*		MOVE.L $CCCCCCCC,$5D22
*		MOVE.L $C7C77AA2,$5D22
*		MOVE.L $10101010,$5D22
*
*		MOVE.L $00008000,$2222
*		MOVE.L $FFFF7FF2,$2222
*		MOVE.L $00009000,$2222
*		MOVE.L $00009876,$2222
*		MOVE.L $FFEE0202,$2222
*		MOVE.L $12345678,$2222
*		MOVE.L $AAAAAAAA,$2222
*		MOVE.L $B2C3A1E2,$2222
*		MOVE.L $77777772,$2222
*		MOVE.L $CCCCCCCC,$2222
*		MOVE.L $C7C77AA2,$2222
*		MOVE.L $10101010,$2222	
*
*		MOVE.L $00008000,$A
*		MOVE.L $FFFF7FF2,$A
*		MOVE.L $00009000,$A
*		MOVE.L $00009876,$A
*		MOVE.L $FFEE0202,$A
*		MOVE.L $12345678,$A
*		MOVE.L $AAAAAAAA,$A
*		MOVE.L $B2C3A1E2,$A
*		MOVE.L $77777772,$A
*		MOVE.L $CCCCCCCC,$A
*		MOVE.L $C7C77AA2,$A
*		MOVE.L $10101010,$A
*
*		MOVE.L $00008000,$BBC
*		MOVE.L $FFFF7FF2,$BBC
*		MOVE.L $00009000,$BBC
*		MOVE.L $00009876,$BBC
*		MOVE.L $FFEE0202,$BBC
*		MOVE.L $12345678,$BBC
*		MOVE.L $AAAAAAAA,$BBC
*		MOVE.L $B2C3A1E2,$BBC
*		MOVE.L $77777772,$BBC
*		MOVE.L $CCCCCCCC,$BBC
*		MOVE.L $C7C77AA2,$BBC
*		MOVE.L $10101010,$BBC
*		
*		MOVE.L $00008000,$6000
*		MOVE.L $FFFF7FF2,$6000
*		MOVE.L $00009000,$6000
*		MOVE.L $00009876,$6000
*		MOVE.L $FFEE0202,$6000
*		MOVE.L $12345678,$6000
*		MOVE.L $AAAAAAAA,$6000
*		MOVE.L $B2C3A1E2,$6000
*		MOVE.L $77777772,$6000
*		MOVE.L $CCCCCCCC,$6000
*		MOVE.L $C7C77AA2,$6000
*		MOVE.L $10101010,$6000
*		
*		MOVE.L $00008000,$00003456
*		MOVE.L $FFFF7FF2,$00003456
*		MOVE.L $00009000,$00003456
*		MOVE.L $00009876,$00003456
*		MOVE.L $FFEE0202,$00003456
*		MOVE.L $12345678,$00003456
*		MOVE.L $AAAAAAAA,$00003456
*		MOVE.L $B2C3A1E2,$00003456
*		MOVE.L $77777772,$00003456
*		MOVE.L $CCCCCCCC,$00003456
*		MOVE.L $C7C77AA2,$00003456
*		MOVE.L $10101010,$00003456
*
*		MOVE.L $00008000,$FFFFABDC	
*		MOVE.L $FFFF7FF2,$FFFFABDC	
*		MOVE.L $00009000,$FFFFABDC
*		MOVE.L $00009876,$FFFFABDC	
*		MOVE.L $FFEE0202,$FFFFABDC	
*		MOVE.L $12345678,$FFFFABDC
*		MOVE.L $AAAAAAAA,$FFFFABDC
*		MOVE.L $B2C3A1E2,$FFFFABDC
*		MOVE.L $77777772,$FFFFABDC
*		MOVE.L $CCCCCCCC,$FFFFABDC
*		MOVE.L $C7C77AA2,$FFFFABDC
*		MOVE.L $10101010,$FFFFABDC
************************************ End with MOVE.L (xxxx).L to (xxxx).W	
*
************************************ Start with MOVE.L <data> to (xxxx).W
*		MOVE.L #$0080,$00000000		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (xxxx).W. 
*		MOVE.L #$80,$00000000
*		MOVE.L #$00FA,$00000000
*		MOVE.L #$10,$00000000
*		MOVE.L #$12,$00000000
*		MOVE.L #$AA,$00000000
*		MOVE.L #$B2,$00000000
*		MOVE.L #$C4,$00000000
*		MOVE.L #$CC,$00000000
*		MOVE.L #$98,$00000000
*		MOVE.L #$FA,$00000000
*		MOVE.L #$AC,$00000000
*		MOVE.L #$A2,$00000000
*		MOVE.L #$D8,$00000000
*		MOVE.L #$52,$00000000
*		MOVE.L #$3C,$00000000
*		MOVE.L #$EF,$00000000
*		MOVE.L #$0092,$00000000
*		MOVE.L #$00BB,$00000000
*
*		MOVE.L #$0080,$00007FF0		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (xxxx).W. 
*		MOVE.L #$80,$00007FF0
*		MOVE.L #$00FF,$00007FF0
*		MOVE.L #$11,$00007FF0
*		MOVE.L #$12,$00007FF0
*		MOVE.L #$AA,$00007FF0
*		MOVE.L #$B3,$00007FF0
*		MOVE.L #$C1,$00007FF0
*		MOVE.L #$CC,$00007FF0
*		MOVE.L #$98,$00007FF0
*		MOVE.L #$FA,$00007FF0
*		MOVE.L #$AF,$00007FF0
*		MOVE.L #$A2,$00007FF0
*		MOVE.L #$D8,$00007FF0
*		MOVE.L #$55,$00007FF0
*		MOVE.W #$3C,$00007FF0
*		MOVE.L #$EF,$00007FF0
*		MOVE.L #$0092,$00007FF0
*		MOVE.L #$00BB,$00007FF0
*		
*		MOVE.L #$0080,$FFFF8000 
*		MOVE.L #$80,$FFFF8000 
*		MOVE.L #$00FF,$FFFF8000 
*		MOVE.L #$11,$FFFF8000 
*		MOVE.L #$12,$FFFF8000 
*		MOVE.L #$AA,$FFFF8000 
*		MOVE.L #$B3,$FFFF8000 
*		MOVE.L #$C1,$FFFF8000 
*		MOVE.L #$CC,$FFFF8000 
*		MOVE.L #$98,$FFFF8000 
*		MOVE.L #$FA,$FFFF8000 
*		MOVE.L #$AF,$FFFF8000 
*		MOVE.L #$A2,$FFFF8000 
*		MOVE.L #$D8,$FFFF8000 
*		MOVE.L #$55,$FFFF8000 
*		MOVE.L #$3C,$FFFF8000 
*		MOVE.L #$EF,$FFFF8000 
*		MOVE.L #$0092,$FFFF8000 
*		MOVE.L #$00BB,$FFFF8000
*
*		MOVE.L #$0080,$FFFFFFF0
*		MOVE.L #$80,$FFFFFFF0
*		MOVE.L #$00FF,$FFFFFFF0
*		MOVE.L #$11,$FFFFFFF0
*		MOVE.L #$12,$FFFFFFF0
*		MOVE.L #$AA,$FFFFFFF0
*		MOVE.L #$B3,$FFFFFFF0
*		MOVE.L #$C1,$FFFFFFF0
*		MOVE.L #$CC,$FFFFFFF0
*		MOVE.L #$98,$FFFFFFF0
*		MOVE.L #$FA,$FFFFFFF0
*		MOVE.L #$AF,$FFFFFFF0
*		MOVE.L #$A2,$FFFFFFF0
*		MOVE.L #$D8,$FFFFFFF0
*		MOVE.L #$55,$FFFFFFF0
*		MOVE.L #$3C,$FFFFFFF0
*		MOVE.L #$EF,$FFFFFFF0
*		MOVE.L #$0092,$FFFFFFF0
*		MOVE.L #$00BB,$FFFFFFF0
*
*		MOVE.L #$0080,$12F0
*		MOVE.L #$80,$12F0
*		MOVE.L #$00FF,$12F0
*		MOVE.L #$11,$12F0
*		MOVE.L #$12,$12F0
*		MOVE.L #$AA,$12F0
*		MOVE.L #$B3,$12F0
*		MOVE.L #$C1,$12F0
*		MOVE.L #$CC,$12F0
*		MOVE.L #$98,$12F0
*		MOVE.L #$FA,$12F0
*		MOVE.L #$AF,$12F0
*		MOVE.L #$A2,$12F0
*		MOVE.L #$D8,$12F0
*		MOVE.L #$55,$12F0
*		MOVE.L #$3C,$12F0
*		MOVE.L #$EF,$12F0
*		MOVE.L #$0092,$12F0
*		MOVE.L #$00BB,$12F0
*		
*		MOVE.L #$0080,$2AAA
*		MOVE.L #$80,$2AAA
*		MOVE.L #$00FF,$2AAA
*		MOVE.L #$11,$2AAA
*		MOVE.L #$12,$2AAA
*		MOVE.L #$AA,$2AAA
*		MOVE.L #$B3,$2AAA
*		MOVE.L #$C1,$2AAA
*		MOVE.L #$CC,$2AAA
*		MOVE.L #$98,$2AAA
*		MOVE.L #$FA,$2AAA
*		MOVE.L #$AF,$2AAA
*		MOVE.L #$A2,$2AAA
*		MOVE.L #$D8,$2AAA
*		MOVE.L #$55,$2AAA
*		MOVE.L #$3C,$2AAA
*		MOVE.L #$EF,$2AAA
*		MOVE.L #$0092,$2AAA
*		MOVE.L #$00BB,$2AAA
*
*		MOVE.L #$0080,$7000
*		MOVE.L #$80,$7000
*		MOVE.L #$00FF,$7000
*		MOVE.L #$11,$7000
*		MOVE.L #$12,$7000
*		MOVE.L #$AA,$7000
*		MOVE.L #$B3,$7000
*		MOVE.L #$C1,$7000
*		MOVE.L #$CC,$7000
*		MOVE.L #$98,$7000
*		MOVE.L #$FA,$7000
*		MOVE.L #$AF,$7000
*		MOVE.L #$A2,$7000
*		MOVE.L #$D8,$7000
*		MOVE.L #$55,$7000
*		MOVE.L #$3C,$7000
*		MOVE.L #$EF,$7000
*		MOVE.L #$0092,$7000
*		MOVE.L #$00BB,$7000
*
*		MOVE.L #$0080,$FFFF9000
*		MOVE.L #$80,$FFFF9000
*		MOVE.L #$00FF,$FFFF9000
*		MOVE.L #$11,$FFFF9000
*		MOVE.L #$12,$FFFF9000
*		MOVE.L #$AA,$FFFF9000
*		MOVE.L #$B3,$FFFF9000
*		MOVE.L #$C1,$FFFF9000
*		MOVE.L #$CC,$FFFF9000
*		MOVE.L #$98,$FFFF9000
*		MOVE.L #$FA,$FFFF9000
*		MOVE.L #$AF,$FFFF9000
*		MOVE.L #$A2,$FFFF9000
*		MOVE.L #$D8,$FFFF9000
*		MOVE.L #$55,$FFFF9000
*		MOVE.L #$3C,$FFFF9000
*		MOVE.L #$EF,$FFFF9000
*		MOVE.L #$0092,$FFFF9000
*		MOVE.L #$00BB,$FFFF9000
*
*		MOVE.L #$0080,$FFFFABDC
*		MOVE.L #$80,$FFFFABDC
*		MOVE.L #$00FF,$FFFFABDC
*		MOVE.L #$11,$FFFFABDC
*		MOVE.L #$12,$FFFFABDC
*		MOVE.L #$AA,$FFFFABDC
*		MOVE.L #$B3,$FFFFABDC
*		MOVE.L #$C1,$FFFFABDC
*		MOVE.L #$CC,$FFFFABDC
*		MOVE.L #$98,$FFFFABDC
*		MOVE.L #$FA,$FFFFABDC
*		MOVE.L #$AF,$FFFFABDC
*		MOVE.L #$A2,$FFFFABDC
*		MOVE.L #$D8,$FFFFABDC
*		MOVE.L #$55,$FFFFABDC
*		MOVE.L #$3C,$FFFFABDC
*		MOVE.L #$EF,$FFFFABDC
*		MOVE.L #$0092,$FFFFABDC
*		MOVE.L #$00BB,$FFFFABDC
************************************ End with MOVE.L #<data> to (xxxx).W
*
*		*** Destination (xxxx).L
************************************ Start with MOVE.L Dn to (xxxx).L
*		MOVE.L	D0,$000A2946
*		MOVE.L	D0,$00557FF2
*		MOVE.L	D1,$00009926
*		MOVE.L	D1,$0000EF12
*		MOVE.L	D2,$00EE8000
*		MOVE.L	D2,$0001FFF0
*		MOVE.L	D3,$00DA5D24
*		MOVE.L	D3,$23002222
*		MOVE.L	D4,$AAAAAAAA
*		MOVE.L	D4,$12345678
*		MOVE.L	D5,$55678BBA
*		MOVE.L	D5,$FEDCBA98
*		MOVE.L	D6,$65433456
*		MOVE.L	D6,$0009ABDA
*		MOVE.L	D7,$FFFF3990
*		MOVE.L	D7,$0723BBAA
************************************ End with MOVE.L Dn to (xxxx).L
*	
************************************ Start with MOVE.L An to (xxxx).L
*		MOVE.L	A0,$000A2940
*		MOVE.L	A0,$00557FF0
*		MOVE.L	A1,$00009920
*		MOVE.L	A1,$0000EF12
*		MOVE.L	A2,$00EE8000
*		MOVE.L	A2,$0001FFFA
*		MOVE.L	A3,$00DA5D24
*		MOVE.L	A3,$23002222
*		MOVE.L	A4,$AAAAAAAA
*		MOVE.L	A4,$12345678
*		MOVE.L	A5,$55678BBA
*		MOVE.L	A5,$FEDCBA98
*		MOVE.L	A6,$65433456
*		MOVE.L	A6,$0009ABDA
*		MOVE.L	A7,$FFFF3990
*		MOVE.L	A7,$0723BBAA
************************************ End with MOVE.L An to (xxxx).L
*		
************************************ Start with MOVE.L (An) to (xxxx).L
*		MOVE.L	(A0),$000A2946
*		MOVE.L	(A0),$00557FF0
*		MOVE.L	(A1),$00009920
*		MOVE.L	(A1),$0000EF12
*		MOVE.L	(A2),$00EE8000
*		MOVE.L	(A2),$0001FFFA
*		MOVE.L	(A3),$00DA5D24
*		MOVE.L	(A3),$23002222
*		MOVE.L	(A4),$AAAAAAAA
*		MOVE.L	(A4),$12345678
*		MOVE.L	(A5),$55678BBC
*		MOVE.L	(A5),$FEDCBA98
*		MOVE.L	(A6),$65433456
*		MOVE.L	(A6),$0009ABDC
*		MOVE.L	(A7),$FFFF3990
*		MOVE.L	(A7),$0723BBAA
************************************ End with MOVE.L (An) to (xxxx).L
*		
************************************ Start with MOVE.L (An)+ to (xxxx).L
*		MOVE.L	(A0)+,$000A2940
*		MOVE.L	(A0)+,$00557FF2
*		MOVE.L	(A1)+,$00009920
*		MOVE.L	(A1)+,$0000EF12
*		MOVE.L	(A2)+,$00EE8000
*		MOVE.L	(A2)+,$0001FFF0
*		MOVE.L	(A3)+,$00DA5D24
*		MOVE.L	(A3)+,$23002222
*		MOVE.L	(A4)+,$AAAAAAA0
*		MOVE.L	(A4)+,$12345678
*		MOVE.L	(A5)+,$55678BB0
*		MOVE.L	(A5)+,$FEDCBA98
*		MOVE.L	(A6)+,$65433456
*		MOVE.L	(A6)+,$0009ABD0
*		MOVE.L	(A7)+,$FFFF3990
*		MOVE.L	(A7)+,$0723BBAA	
************************************ End with MOVE.L (An)+ to (xxxx).L
*
************************************ Start with MOVE.L -(An) to (xxxx).L
*		MOVE.L	-(A0),$000A2946
*		MOVE.L	-(A0),$00557FF0
*		MOVE.L	-(A1),$00009920
*		MOVE.L	-(A1),$0000EF12
*		MOVE.L	-(A2),$00EE8000
*		MOVE.L	-(A2),$0001FFFA
*		MOVE.L	-(A3),$00DA5D24
*		MOVE.L	-(A3),$23002222
*		MOVE.L	-(A4),$AAAAAAAA
*		MOVE.L	-(A4),$12345678
*		MOVE.L	-(A5),$55678BBC
*		MOVE.L	-(A5),$FEDCBA98
*		MOVE.L	-(A6),$65433456
*		MOVE.L	-(A6),$0009ABDA
*		MOVE.L	-(A7),$FFFF3990
*		MOVE.L	-(A7),$0723BBAA
************************************ End with MOVE.L -(An) to (xxxx).L
*		
************************************ Start with MOVE.L (xxxx).W to (xxxx).L
*		MOVE.L $00000000,$000A2946		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $00007FFE,$00557FF0		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $FFFF8000,$00009920		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $FFFFFFFE,$0000EF12		*32 Kbytes accesible by a 16-bit short address
*		MOVE.L $00,$00EE8000
*		MOVE.L $0,$0001FFF0
*		MOVE.L $1234,$00DA5D24
*		MOVE.L $56,$23002222
*		MOVE.L $214,$AAAAAAAE
*		MOVE.L $7778,$12345678
*		MOVE.L $E,$55678BBC
*		MOVE.L $00002345,$FEDCBA98
*		MOVE.L $00001110,$65433456
*		MOVE.L $FFFFA346,$0009ABD0
*		MOVE.L $500,$FFFF3990
*		MOVE.L $FFFFBBBA,$0723BBAA		
************************************ End with MOVE.L (xxxx).W to (xxxx).L	
*
************************************ Start with MOVE.L (xxxx).L to (xxxx).L
*		MOVE.L $00008000,$000A2946		*00008000 is lower bound for 32-bit address
*		MOVE.L $FFFF7FFE,$00557FFA		*FFFF7FFF is upper bound for 32-bit address
*		MOVE.L $00009000,$00009920
*		MOVE.L $00009876,$0000EF12		
*		MOVE.L $FFEE0202,$00EE8000		
*		MOVE.L $12345678,$0001FFFE
*		MOVE.L $AAAAAAAB,$00DA5D24
*		MOVE.L $B2C3A1E8,$23002222
*		MOVE.L $77777778,$AAAAAAA0
*		MOVE.L $CCCCCCC0,$12345678
*		MOVE.L $C7C77AA8,$55678BBA
*		MOVE.L $10101010,$FEDCBA98
*		MOVE.L $00CA1112,$65433456
*		MOVE.L $FFFF2116,$0009ABDC
*		MOVE.L $05007654,$FFFF3990
*		MOVE.L $00EFEFEE,$0723BBAA
*		MOVE.L $0000ABCE,$01112222	
************************************ End with MOVE.L (xxxx).L to (xxxx).L	
*
************************************ Start with MOVE.L <data> to (xxxx).W
*		MOVE.L #$0080,$000A2960		*MOVEQ can be used to move an immediate 8-bit value(#-128 to #127) to (xxxx).W. 
*		MOVE.L #$0078,$000A2970
*		MOVE.L #$80,$00557EEE
*		MOVE.L #$00FF,$00557EFA
*		MOVE.L #$11,$00009980
*		MOVE.L #$12,$00EE8030
*		MOVE.L #$AA,$00EE8040
*		MOVE.L #$B3,$00EE8050
*		MOVE.L #$C1,$01112272
*		MOVE.L #$CC,$01112282
*		MOVE.L #$98,$AAAAAAA0
*		MOVE.L #$FA,$AAAAAAB0
*		MOVE.L #$AF,$AAAAAAC0
*		MOVE.L #$A2,$AAAAAAE0
*		MOVE.L #$D8,$FFFF4000
*		MOVE.L #$55,$FFFF4010
*		MOVE.L #$3C,$FFFF4020
*		MOVE.L #$EF,$0723BBAA
*		MOVE.L #$0092,$0723BBBA
*		MOVE.L #$00BC,$0723BBCA
*********************************** End with MOVE.L #<data> to (xxxx).L





		*MOVEQ
				
		*** Destination ONLY Dn
		*** Long word ONLY
		***	$FF is upper bound (1Byte)
*********************************** Start with MOVEQ.L #<data> to Dn		
*		MOVEQ.L #0,D0
*		MOVEQ.L #$1,D0
*		MOVEQ.L #$E,D0
*		MOVEQ.L #$AA,D0
*		MOVEQ.L #$12,D0
*		MOVEQ.L #$56,D0
*		MOVEQ.L #$20,D0
*		MOVEQ.L #$F2,D0
*		MOVEQ.L #$FF,D0
*		
*		MOVEQ.L #0,D1
*		MOVEQ.L #$1,D1
*		MOVEQ.L #$E,D1
*		MOVEQ.L #$AA,D1
*		MOVEQ.L #$12,D1
*		MOVEQ.L #$56,D1
*		MOVEQ.L #$20,D1
*		MOVEQ.L #$F2,D1
*		MOVEQ.L #$FF,D1
*
*		MOVEQ.L #0,D2
*		MOVEQ.L #$1,D2
*		MOVEQ.L #$E,D2
*		MOVEQ.L #$AA,D2
*		MOVEQ.L #$12,D2
*		MOVEQ.L #$56,D2
*		MOVEQ.L #$20,D2
*		MOVEQ.L #$F2,D2
*		MOVEQ.L #$FF,D2
*
*		MOVEQ.L #0,D3
*		MOVEQ.L #$1,D3
*		MOVEQ.L #$E,D3
*		MOVEQ.L #$AA,D3
*		MOVEQ.L #$12,D3
*		MOVEQ.L #$56,D3
*		MOVEQ.L #$20,D3
*		MOVEQ.L #$F2,D3
*		MOVEQ.L #$FF,D3
*
*		MOVEQ.L #0,D4
*		MOVEQ.L #$1,D4
*		MOVEQ.L #$E,D4
*		MOVEQ.L #$AA,D4
*		MOVEQ.L #$12,D4
*		MOVEQ.L #$56,D4
*		MOVEQ.L #$20,D4
*		MOVEQ.L #$F2,D4
*		MOVEQ.L #$FF,D4
*
*		MOVEQ.L #0,D5
*		MOVEQ.L #$1,D5
*		MOVEQ.L #$E,D5
*		MOVEQ.L #$AA,D5
*		MOVEQ.L #$12,D5
*		MOVEQ.L #$56,D5
*		MOVEQ.L #$20,D5
*		MOVEQ.L #$F2,D5
*		MOVEQ.L #$FF,D5
*
*		MOVEQ.L #0,D6
*		MOVEQ.L #$1,D6
*		MOVEQ.L #$E,D6
*		MOVEQ.L #$AA,D6
*		MOVEQ.L #$12,D6
*		MOVEQ.L #$56,D6
*		MOVEQ.L #$20,D6
*		MOVEQ.L #$F2,D6
*		MOVEQ.L #$FF,D6
*
*		MOVEQ.L #0,D7
*		MOVEQ.L #$1,D7
*		MOVEQ.L #$E,D7
*		MOVEQ.L #$AA,D7
*		MOVEQ.L #$12,D7
*		MOVEQ.L #$56,D7
*		MOVEQ.L #$20,D7
*		MOVEQ.L #$F2,D7
*		MOVEQ.L #$FF,D7		
*********************************** End with MOVEQ.L #<data> to Dn	





		*ADD
	
		***ADD.B
*********************************** Start with ADD.B Dn to Dn
*		ADD.B	D0,D0
*		ADD.B	D0,D1
*		ADD.B	D0,D2
*		ADD.B	D0,D3
*		ADD.B	D0,D4
*		ADD.B	D0,D5
*		ADD.B	D0,D6
*		ADD.B	D0,D7
*
*		ADD.B	D1,D0
*		ADD.B	D1,D1
*		ADD.B	D1,D2
*		ADD.B	D1,D3
*		ADD.B	D1,D4
*		ADD.B	D1,D5
*		ADD.B	D1,D6
*		ADD.B	D1,D7
*
*		ADD.B	D2,D0
*		ADD.B	D2,D1
*		ADD.B	D2,D2
*		ADD.B	D2,D3
*		ADD.B	D2,D4
*		ADD.B	D2,D5
*		ADD.B	D2,D6
*		ADD.B	D2,D7
*		
*		ADD.B	D3,D0
*		ADD.B	D3,D1
*		ADD.B	D3,D2
*		ADD.B	D3,D3
*		ADD.B	D3,D4
*		ADD.B	D3,D5
*		ADD.B	D3,D6
*		ADD.B	D3,D7
*
*		ADD.B	D4,D0
*		ADD.B	D4,D1
*		ADD.B	D4,D2
*		ADD.B	D4,D3
*		ADD.B	D4,D4
*		ADD.B	D4,D5
*		ADD.B	D4,D6
*		ADD.B	D4,D7
*
*		ADD.B	D5,D0
*		ADD.B	D5,D1
*		ADD.B	D5,D2
*		ADD.B	D5,D3
*		ADD.B	D5,D4
*		ADD.B	D5,D5
*		ADD.B	D5,D6
*		ADD.B	D5,D7
*
*		ADD.B	D6,D0
*		ADD.B	D6,D1
*		ADD.B	D6,D2
*		ADD.B	D6,D3
*		ADD.B	D6,D4
*		ADD.B	D6,D5
*		ADD.B	D6,D6
*		ADD.B	D6,D7
*
*		ADD.B	D7,D0
*		ADD.B	D7,D1
*		ADD.B	D7,D2
*		ADD.B	D7,D3
*		ADD.B	D7,D4
*		ADD.B	D7,D5
*		ADD.B	D7,D6
*		ADD.B	D7,D7				
************************************ End with ADD.B Dn to Dn
*
************************************ Start with ADD.B An to Dn
*		*ADD.B An to Dn is not possible. (Word and Long only)
************************************ End with ADD.B Dn to Dn
*
*
*		***ADD.W
************************************ Start with ADD.W Dn to Dn
*		ADD.W	D0,D0
*		ADD.W	D0,D1
*		ADD.W	D0,D2
*		ADD.W	D0,D3
*		ADD.W	D0,D4
*		ADD.W	D0,D5
*		ADD.W	D0,D6
*		ADD.W	D0,D7
*
*		ADD.W	D1,D0
*		ADD.W	D1,D1
*		ADD.w	D1,D2
*		ADD.W	D1,D3
*		ADD.W	D1,D4
*		ADD.W	D1,D5
*		ADD.W	D1,D6
*		ADD.W	D1,D7
*
*		ADD.W	D2,D0
*		ADD.W	D2,D1
*		ADD.W	D2,D2
*		ADD.W	D2,D3
*		ADD.W	D2,D4
*		ADD.W	D2,D5
*		ADD.W	D2,D6
*		ADD.W	D2,D7
*		
*		ADD.W	D3,D0
*		ADD.W	D3,D1
*		ADD.W	D3,D2
*		ADD.W	D3,D3
*		ADD.W	D3,D4
*		ADD.W	D3,D5
*		ADD.W	D3,D6
*		ADD.W	D3,D7
*
*		ADD.W	D4,D0
*		ADD.W	D4,D1
*		ADD.W	D4,D2
*		ADD.W	D4,D3
*		ADD.W	D4,D4
*		ADD.W	D4,D5
*		ADD.W	D4,D6
*		ADD.W	D4,D7
*
*		ADD.W	D5,D0
*		ADD.W	D5,D1
*		ADD.W	D5,D2
*		ADD.W	D5,D3
*		ADD.W	D5,D4
*		ADD.W	D5,D5
*		ADD.W	D5,D6
*		ADD.W	D5,D7
*
*		ADD.W	D6,D0
*		ADD.W	D6,D1
*		ADD.W	D6,D2
*		ADD.W	D6,D3
*		ADD.W	D6,D4
*		ADD.W	D6,D5
*		ADD.W	D6,D6
*		ADD.W	D6,D7
*
*		ADD.W	D7,D0
*		ADD.W	D7,D1
*		ADD.W	D7,D2
*		ADD.W	D7,D3
*		ADD.W	D7,D4
*		ADD.W	D7,D5
*		ADD.W	D7,D6
*		ADD.W	D7,D7							
************************************ End with ADD.W Dn to Dn
*
*
************************************ Start with ADD.W An to Dn
*		ADD.W	A0,D0
*		ADD.W	A0,D1
*		ADD.W	A0,D2
*		ADD.W	A0,D3
*		ADD.W	A0,D4
*		ADD.W	A0,D5
*		ADD.W	A0,D6
*		ADD.W	A0,D7
*
*		ADD.W	A1,D0
*		ADD.W	A1,D1	
*		ADD.W	A1,D2
*		ADD.W	A1,D3
*		ADD.W	A1,D4
*		ADD.W	A1,D5
*		ADD.W	A1,D6
*		ADD.W	A1,D7
*
*		ADD.W	A2,D0
*		ADD.W	A2,D1
*		ADD.W	A2,D2
*		ADD.W	A2,D3
*		ADD.W	A2,D4
*		ADD.W	A2,D5
*		ADD.W	A2,D6
*		ADD.W	A2,D7
*
*		ADD.W	A3,D0
*		ADD.W	A3,D1
*		ADD.W	A3,D2
*		ADD.W	A3,D3
*		ADD.W	A3,D4
*		ADD.W	A3,D5
*		ADD.W	A3,D6
*		ADD.W	A3,D7
*
*		ADD.W	A4,D0
*		ADD.W	A4,D1
*		ADD.W	A4,D2
*		ADD.W	A4,D3
*		ADD.W	A4,D4
*		ADD.W	A4,D5
*		ADD.W	A4,D6
*		ADD.W	A4,D7
*
*		ADD.W	A5,D0
*		ADD.W	A5,D1
*		ADD.W	A5,D2
*		ADD.W	A5,D3
*		ADD.W	A5,D4
*		ADD.W	A5,D5
*		ADD.W	A5,D6
*		ADD.W	A5,D7
*
*		ADD.W	A6,D0
*		ADD.W	A6,D1
*		ADD.W	A6,D2
*		ADD.W	A6,D3
*		ADD.W	A6,D4
*		ADD.W	A6,D5
*		ADD.W	A6,D6
*		ADD.W	A6,D7
*
*		ADD.W	A7,D0
*		ADD.W	A7,D1
*		ADD.W	A7,D2
*		ADD.W	A7,D3
*		ADD.W	A7,D4
*		ADD.W	A7,D5
*		ADD.W	A7,D6
*		ADD.W	A7,D7						
************************************ End with ADD.W An to Dn
*		
*
*		***ADD.L
************************************ Start with ADD.L Dn to Dn
*		ADD.L	D0,D0
*		ADD.L	D0,D1
*		ADD.L	D0,D2
*		ADD.L	D0,D3
*		ADD.L	D0,D4
*		ADD.L	D0,D5
*		ADD.L	D0,D6
*		ADD.L	D0,D7
*
*		ADD.L	D1,D0
*		ADD.L	D1,D1
*		ADD.L	D1,D2
*		ADD.L	D1,D3
*		ADD.L	D1,D4
*		ADD.L	D1,D5
*		ADD.L	D1,D6
*		ADD.L	D1,D7
*
*		ADD.L	D2,D0
*		ADD.L	D2,D1
*		ADD.L	D2,D2
*		ADD.L	D2,D3
*		ADD.L	D2,D4
*		ADD.L	D2,D5
*		ADD.L	D2,D6
*		ADD.L	D2,D7
*		
*		ADD.L	D3,D0
*		ADD.L	D3,D1
*		ADD.L	D3,D2
*		ADD.L	D3,D3
*		ADD.L	D3,D4
*		ADD.L	D3,D5
*		ADD.L	D3,D6
*		ADD.L	D3,D7
*
*		ADD.L	D4,D0
*		ADD.L	D4,D1
*		ADD.L	D4,D2
*		ADD.L	D4,D3
*		ADD.L	D4,D4
*		ADD.L	D4,D5
*		ADD.L	D4,D6
*		ADD.L	D4,D7
*
*		ADD.L	D5,D0
*		ADD.L	D5,D1
*		ADD.L	D5,D2
*		ADD.L	D5,D3
*		ADD.L	D5,D4
*		ADD.L	D5,D5
*		ADD.L	D5,D6
*		ADD.L	D5,D7
*
*		ADD.L	D6,D0
*		ADD.L	D6,D1
*		ADD.L	D6,D2
*		ADD.L	D6,D3
*		ADD.L	D6,D4
*		ADD.L	D6,D5
*		ADD.L	D6,D6
*		ADD.L	D6,D7
*
*		ADD.L	D7,D0
*		ADD.L	D7,D1
*		ADD.L	D7,D2
*		ADD.L	D7,D3
*		ADD.L	D7,D4
*		ADD.L	D7,D5
*		ADD.L	D7,D6
*		ADD.L	D7,D7							
************************************ End with ADD.L Dn to Dn
*
*
************************************ Start with ADD.L An to Dn
*		ADD.L	A0,D0
*		ADD.L	A0,D1
*		ADD.L	A0,D2
*		ADD.L	A0,D3
*		ADD.L	A0,D4
*		ADD.L	A0,D5
*		ADD.L	A0,D6
*		ADD.L	A0,D7
*
*		ADD.L	A1,D0
*		ADD.L	A1,D1	
*		ADD.L	A1,D2
*		ADD.L	A1,D3
*		ADD.L	A1,D4
*		ADD.L	A1,D5
*		ADD.L	A1,D6
*		ADD.L	A1,D7
*
*		ADD.L	A2,D0
*		ADD.L	A2,D1
*		ADD.L	A2,D2
*		ADD.L	A2,D3
*		ADD.L	A2,D4
*		ADD.L	A2,D5
*		ADD.L	A2,D6
*		ADD.L	A2,D7
*
*		ADD.L	A3,D0
*		ADD.L	A3,D1
*		ADD.L	A3,D2
*		ADD.L	A3,D3
*		ADD.L	A3,D4
*		ADD.L	A3,D5
*		ADD.L	A3,D6
*		ADD.L	A3,D7
*
*		ADD.L	A4,D0
*		ADD.L	A4,D1
*		ADD.L	A4,D2
*		ADD.L	A4,D3
*		ADD.L	A4,D4
*		ADD.L	A4,D5
*		ADD.L	A4,D6
*		ADD.L	A4,D7
*
*		ADD.L	A5,D0
*		ADD.L	A5,D1
*		ADD.L	A5,D2
*		ADD.L	A5,D3
*		ADD.L	A5,D4
*		ADD.L	A5,D5
*		ADD.L	A5,D6
*		ADD.L	A5,D7
*
*		ADD.L	A6,D0
*		ADD.L	A6,D1
*		ADD.L	A6,D2
*		ADD.L	A6,D3
*		ADD.L	A6,D4
*		ADD.L	A6,D5
*		ADD.L	A6,D6
*		ADD.L	A6,D7
*
*		ADD.L	A7,D0
*		ADD.L	A7,D1
*		ADD.L	A7,D2
*		ADD.L	A7,D3
*		ADD.L	A7,D4
*		ADD.L	A7,D5
*		ADD.L	A7,D6
*		ADD.L	A7,D7						
************************************ End with ADD.L An to Dn
*
*
** Put program code here
*		MOVE.B #2,D1
*		MOVE.B #$A,D2
*		MOVE.L #$12349873,D6
*		MOVE.L #$FFFF1024,D7
*		
**	*CMP & BGT/BLE/BCC
**		CMP.B D0,D1
**		BGT NEXT1
**NEXT1
**		CMP.B D1,D2
**		BLE NEXT2
**NEXT2
**		CMP.B (A0),D6
**		BCC	NEXT3
**NEXT3
**		CMP.B (A1),D7
**		BGT NEXT4
**NEXT4
**		CMP.B (A0)+,D1
**		BLE NEXT5
**NEXT5
*		CMP.B (A1)+,D1
*		CMP.B -(A0),D1
*		CMP.B -(A1),D1
*		CMP.B $1234,D2
*		CMP.B $FFFFAA00,D2
*		*BCC NEXT6
*NEXT6
*		CMP.B $EECA,D6
*		CMP.B $0000C000,D7
*		CMP.B #$FF,D1
*
*		CMP.B D0,D1
*		CMP.B D1,D2
*		CMP.B (A0),D6
*		CMP.B (A1),D7
*		CMP.B (A0)+,D1
*		CMP.B (A1)+,D1
*		CMP.B -(A0),D1
*		CMP.B -(A1),D1
*		CMP.B $1234,D2
*		CMP.B $FFFFAA00,D2
*		CMP.B $EECA,D6
*		CMP.B $0000C000,D7
*		CMP.B #$FF,D1
*		CMP.B #$1,D1
	
*	*CMP.W
*		CMP.W D0,D1
*		CMP.W D1,D2
*		CMP.W (A0),D6
*		CMP.W (A1),D7
*		CMP.W (A0)+,D1
*		CMP.W (A1)+,D1
*		CMP.W -(A0),D1
*		CMP.W -(A1),D1
*		CMP.W $5668,D2
*		CMP.W $FFFFBB00,D2
*		CMP.W $BBBA,D6
*		CMP.W $0000EEFA,D7
*		CMP.W #$CF,D1
*		CMP.W #$2,D1
*		
*	*CMP.L
*		CMP.L D0,D1
*		CMP.L D1,D2
*		CMP.L (A0),D6
*		CMP.L (A1),D7
*		CMP.L (A0)+,D1
*		CMP.L (A1)+,D1
*		CMP.L -(A0),D1
*		CMP.L -(A1),D1
*		CMP.L $8642,D2
*		CMP.L $FFFFAAA0,D2
*		CMP.L $EECA,D6
*		CMP.L $0000AAA0,D7
*		CMP.L #$AF,D1
*		CMP.L #$3,D1

*	*LSL
*		LSL.B #2,D0
*		LSR.B #2,D0
*		LSL.B D1,D0
*		
*		LSL.W #2,D0
*		LSR.W #2,D0
*		LSL.W D1,D0
*
*		LSL.L #2,D0
*		LSR.L #2,D0
*		LSL.L D1,D0
*		
*		LSL (A1)
*		LSL (A2)
*		LSL (A1)+
*		LSL (A2)+
*		LSL -(A1)
*		LSL -(A2)
*		LSL $2000
*		LSL $1222
*		LSL $A200
*		LSL $FFFF5500
*		
*	*ASR
*		ASR.B #2,D0
*		ASL.B #2,D0
*		ASR.B D1,D0
*		
*		ASR.W #2,D0
*		ASL.W #2,D0
*		ASR.W D1,D0
*
*		ASR.L #2,D0
*		ASL.L #2,D0
*		ASR.L D1,D0
*		
*		ASR (A1)
*		ASR (A2)
*		ASR (A1)+
*		ASR (A2)+
*		ASR -(A1)
*		ASR -(A2)
*		ASR $2000
*		ASR $1222
*		ASR $A200
*		ASR $FFFF5500	
*
*	
*	*ROL
*		ROL.B #2,D0
*		ROR.B #2,D0
*		ROL.B D1,D0
*		
*		ROL.W #2,D0
*		ROR.W #2,D0
*		ROL.W D1,D0
*
*		ROL.L #2,D0
*		ROR.L #2,D0
*		ROL.L D1,D0
*		
*		ROL (A1)
*		ROL (A2)
*		ROL (A1)+
*		ROL (A2)+
*		ROL -(A1)
*		ROL -(A2)
*		ROL $2000
*		ROL $1222
*		ROL $A200
*		ROL $FFFF5500
*	LSL.B	D1,D2
*		LSR.W	D1,D3
*		ASL.W	D0,D1
*		ASR.W	D7,D2
*		ROL.L	D4,D2
*		LSL.W	#3,D2
*		LSR.L	#7,D3
*		ASL.B	#8,D1
*		ASR.L	#2,D2
*		ROL.B	D7,D2
*		ROR.L	D1,D6
*		ROR.B	D3,D6
*		
*		ROL		$FFFF6000
*		ROR		$FFFF8233
*		ASR		$00008000
*		LSR		$2021023
*		LSL		$5034
*		ASL		$FF0234
*CHECK1
*		LSL.L	#5,D2
*		LSR		D1,D3
*		ASL.W	D0,D1
*		ASR.W	D7,D4
*		ROL		D4,D2
*		*AND.L	(THERE,A5),D5
*		LSL.L	#3,D6
*		LSR.L	#7,D3
*		ASL.W	#8,D1
*		ASR.W	#2,D2
*		ROL.L	D7,D0
*		MOVE.B	#3,D6
*		*MOVE.W	(CHECK1, PC),D4 
*		ROR		D1,D4
*		ROR.W	D2,D3
*THERE	
*		MOVE.B	#10,D1
*		CMP.B	#11,D1
*		BLE		CHECK1
*		ADD.B	D1,D6
*
*CHECK2
**		CMP.L	#$50000, D5		
**		CMP.B	#12, D2
**		CMP.W	#1000, D3
**		CMP.L	#4300, D4
**		CMP.W	#$1235, D5
**		CMP.B	D1,D2
*		CLR.L	D0
*		CLR.B	D1
*		CMP.B	(A1),D2
*		CMP.B	(A1)+,D2
*		CLR.W	$AB5000
*		CLR.W	(A2)
*		CLR.B	D5
*		CLR.L	$2302
*		CLR.L	(A1)+
*		CLR.B	D4
*		CMP.B	D1,D2
*		CLR.W	-(A0)
*		CLR.L	-(A5)
*		CLR.W	-(A6)
*		CLR.L	-(A3)
*		CLR.L	-(A4)
*		CMP.B	-(A1),D2
*		CMP.B	$6000,D2
*		CMP.B	$00A05999,D2
*		CLR.B	D0
*		CLR.W	$4ABCD
*		CLR.W	D0
*		
*		*NOP
*
*		NOP
*		
*		*MOVE.B
*		
*		MOVE.B D0,D0
*		MOVE.B D1,D2
*		MOVE.B D4,D5
*		MOVE.B D3,D6
*		
*		MOVE.B (A0),D0
*		MOVE.B (A2),D1
*		MOVE.B (A5),D3
*		MOVE.B (A7),D7
*		
*		MOVE.B (A0)+,D0
*		MOVE.B (A0)+,D1	
*		MOVE.B (A5)+,D2
*		MOVE.B (A5)+,D3
*		
*		MOVE.B -(A0),D0
*		MOVE.B -(A0),D1
*		MOVE.B -(A5),D4
*		MOVE.B -(A5),D6
*		
*		MOVE.B $00000000,D0
*		MOVE.B $00007F00,D1		
*		MOVE.B $FFFF8010,D2		
*		MOVE.B $FFFFFF00,D3			
*		MOVE.B $56,D4
*		MOVE.B $210,D5
*		MOVE.B $7770,D6
*		MOVE.B $A,D7
*		
*		MOVE.B $00008020,D0		
*		MOVE.B $FFFF7F10,D1		
*		MOVE.B $00009000,D2
*		MOVE.B $00009876,D3		
*		MOVE.B $FFEE0202,D4		
*		MOVE.B $12345678,D5
*		MOVE.B $AAAAAAAA,D6
*		MOVE.B $B2C3A1E8,D7
*		
*		MOVE.B #$FA,D0
*		MOVE.B #$AF,D1
*		MOVE.B #$A2,D2
*		MOVE.B #$D8,D3
*		MOVE.B #$55,D4
*		MOVE.B #$3C,D5
*		MOVE.B #$00,D6
*		MOVE.B #$0092,D7
*		
*		MOVE.B D7,(A0)
*		MOVE.B D6,(A1)
*		MOVE.B D5,(A2)
*		MOVE.B D4,(A3)
*		MOVE.B D3,(A4)
*		MOVE.B D2,(A5)
*		MOVE.B D1,(A6)
*		MOVE.B D0,(A7)
*
*		MOVE.B (A3),(A0)
*		MOVE.B (A4),(A1)
*		MOVE.B (A5),(A2)
*		MOVE.B (A6),(A3)
*		MOVE.B (A7),(A4)
*		MOVE.B (A0),(A5)
*		MOVE.B (A1),(A6)
*		MOVE.B (A2),(A7)
*
*		MOVE.B (A0)+,(A0)
*		MOVE.B (A1)+,(A1)
*		MOVE.B (A2)+,(A2)
*		MOVE.B (A3)+,(A3)
*		MOVE.B (A4)+,(A4)
*		MOVE.B (A5)+,(A5)
*		MOVE.B (A6)+,(A6)
*		MOVE.B (A7)+,(A7)
*		
*		MOVE.B -(A0),(A0)
*		MOVE.B -(A1),(A1)
*		MOVE.B -(A2),(A2)
*		MOVE.B -(A3),(A3)
*		MOVE.B -(A4),(A4)
*		MOVE.B -(A5),(A5)
*		MOVE.B -(A6),(A6)
*		MOVE.B -(A7),(A7)
*
*		MOVE.B $0,(A0)
*		MOVE.B $A,(A1)
*		MOVE.B $56,(A2)
*		MOVE.B $212,(A3)
*		MOVE.B $700,(A4)
*		MOVE.B $1234,(A5)
*		MOVE.B $2000,(A6)
*		MOVE.B $4000,(A7)
*		
*		MOVE.B $FFEE0202,(A0)		
*		MOVE.B $12345678,(A1)
*		MOVE.B $AAAAAAAA,(A2)
*		MOVE.B $B2C3A1E0,(A3)
*		MOVE.B $77777770,(A4)
*		MOVE.B $CCCCCCC0,(A5)
*		MOVE.B $C7C77AA0,(A6)
*		MOVE.B $10101010,(A7)
*		
*		MOVE.B #$98,(A0)
*		MOVE.B #$FA,(A1)
*		MOVE.B #$AF,(A2)
*		MOVE.B #$A2,(A3)
*		MOVE.B #$D8,(A4)
*		MOVE.B #$55,(A5)
*		MOVE.B #$3C,(A6)
*		MOVE.B #$00,(A7)
*
*		MOVE.B D7,(A0)+
*		MOVE.B D6,(A1)+
*		MOVE.B D5,(A2)+
*		MOVE.B D4,(A3)+
*		MOVE.B D3,(A4)+
*		MOVE.B D2,(A5)+
*		MOVE.B D1,(A6)+
*		MOVE.B D0,(A7)+
*
*		MOVE.B (A3),(A0)+
*		MOVE.B (A4),(A1)+
*		MOVE.B (A5),(A2)+
*		MOVE.B (A6),(A3)+
*		MOVE.B (A7),(A4)+
*		MOVE.B (A0),(A5)+
*		MOVE.B (A1),(A6)+
*		MOVE.B (A2),(A7)+
*
*		MOVE.B (A0)+,(A0)+
*		MOVE.B (A1)+,(A1)+
*		MOVE.B (A2)+,(A2)+
*		MOVE.B (A3)+,(A3)+
*		MOVE.B (A4)+,(A4)+
*		MOVE.B (A5)+,(A5)+
*		MOVE.B (A6)+,(A6)+
*		MOVE.B (A7)+,(A7)+
*		
*		MOVE.B -(A0),(A0)+
*		MOVE.B -(A1),(A1)+
*		MOVE.B -(A2),(A2)+
*		MOVE.B -(A3),(A3)+
*		MOVE.B -(A4),(A4)+
*		MOVE.B -(A5),(A5)+
*		MOVE.B -(A6),(A6)+
*		MOVE.B -(A7),(A7)+
*
*		MOVE.B $0,(A0)+
*		MOVE.B $A,(A1)+
*		MOVE.B $56,(A2)+
*		MOVE.B $212,(A3)+
*		MOVE.B $700,(A4)+
*		MOVE.B $1234,(A5)+
*		MOVE.B $2000,(A6)+
*		MOVE.B $4000,(A7)+
*		
*		MOVE.B $FF110202,(A0)+		
*		MOVE.B $12345678,(A1)+
*		MOVE.B $AAAABB00,(A2)+
*		MOVE.B $B2C3A1E0,(A3)+
*		MOVE.B $77777770,(A4)+
*		MOVE.B $CCCCCCC0,(A5)+
*		MOVE.B $C2C2C002,(A6)+
*		MOVE.B $11111110,(A7)+
*		
*		MOVE.B #$56,(A0)+
*		MOVE.B #$CD,(A1)+
*		MOVE.B #$F2,(A2)+
*		MOVE.B #$E5,(A3)+
*		MOVE.B #$D8,(A4)+
*		MOVE.B #$13,(A5)+
*		MOVE.B #$1A,(A6)+
*		MOVE.B #$00,(A7)+
*		
*		MOVE.B D7,-(A0)
*		MOVE.B D6,-(A1)
*		MOVE.B D5,-(A2)
*		MOVE.B D4,-(A3)
*		MOVE.B D3,-(A4)
*		MOVE.B D2,-(A5)
*		MOVE.B D1,-(A6)
*		MOVE.B D0,-(A7)
*
*		MOVE.B (A3),-(A0)
*		MOVE.B (A4),-(A1)
*		MOVE.B (A5),-(A2)
*		MOVE.B (A6),-(A3)
*		MOVE.B (A7),-(A4)
*		MOVE.B (A0),-(A5)
*		MOVE.B (A1),-(A6)
*		MOVE.B (A2),-(A7)
*
*		MOVE.B (A0)+,-(A0)
*		MOVE.B (A1)+,-(A1)
*		MOVE.B (A2)+,-(A2)
*		MOVE.B (A3)+,-(A3)
*		MOVE.B (A4)+,-(A4)
*		MOVE.B (A5)+,-(A5)
*		MOVE.B (A6)+,-(A6)
*		MOVE.B (A7)+,-(A7)
*		
*		MOVE.B -(A0),-(A0)
*		MOVE.B -(A1),-(A1)
*		MOVE.B -(A2),-(A2)
*		MOVE.B -(A3),-(A3)
*		MOVE.B -(A4),-(A4)
*		MOVE.B -(A5),-(A5)
*		MOVE.B -(A6),-(A6)
*		MOVE.B -(A7),-(A7)
*
*		MOVE.B $0,-(A0)
*		MOVE.B $A,-(A1)
*		MOVE.B $56,-(A2)
*		MOVE.B $212,-(A3)
*		MOVE.B $700,-(A4)
*		MOVE.B $1234,-(A5)
*		MOVE.B $2000,-(A6)
*		MOVE.B $4000,-(A7)
*		
*		MOVE.B $FFEE0202,-(A0)		
*		MOVE.B $12345678,-(A1)
*		MOVE.B $AAAAAAAA,-(A2)
*		MOVE.B $B2C3A1E0,-(A3)
*		MOVE.B $77777770,-(A4)
*		MOVE.B $CCCCCCC0,-(A5)
*		MOVE.B $C7C77AA0,-(A6)
*		MOVE.B $10101010,-(A7)
*		
*		MOVE.B #$98,-(A0)
*		MOVE.B #$FA,-(A1)
*		MOVE.B #$AF,-(A2)
*		MOVE.B #$A2,-(A3)
*		MOVE.B #$D8,-(A4)
*		MOVE.B #$55,-(A5)
*		MOVE.B #$3C,-(A6)
*		MOVE.B #$00,-(A7)		
*		
*		
*		MOVE.B D0,$5D23
*		MOVE.B D1,$2222
*		MOVE.B D2,$A
*		MOVE.B D3,$12
*		MOVE.B D4,$BBC
*		MOVE.B D5,$6000
*		MOVE.B D6,$00003456
*		MOVE.B D7,$FFFFABDC
*		
*		MOVE.B (A0),$00000000
*		MOVE.B (A1),$00007100
*		MOVE.B (A2),$FFFF8100
*		MOVE.B (A3),$FFFFF100
*		MOVE.B (A4),$5D10
*		MOVE.B (A5),$3300
*		MOVE.B (A6),$2
*		MOVE.B (A7),$24
*		
*		MOVE.B (A0)+,$2222
*		MOVE.B (A1)+,$A
*		MOVE.B (A2)+,$B2
*		MOVE.B (A3)+,$6000
*		MOVE.B (A4)+,$00003456
*		MOVE.B (A5)+,$00004020
*		MOVE.B (A6)+,$FFFFABDC
*		MOVE.B (A7)+,$0000	
*		
*		MOVE.B -(A0),$5D22
*		MOVE.B -(A1),$2222
*		MOVE.B -(A2),$A
*		MOVE.B -(A3),$BBC
*		MOVE.B -(A4),$6000
*		MOVE.B -(A5),$00003456
*		MOVE.B -(A6),$00004020
*		MOVE.B -(A7),$FFFFABDC
*		
*		MOVE.B $00,$0005200
*		MOVE.B $0,$FFFF8202
*		MOVE.B $14,$00007F00
*		MOVE.B $106,$5DA0
*		MOVE.B $5556,$2220
*		MOVE.B $2468,$A1
*		MOVE.B $0FFA,$BBC
*		MOVE.B $E8,$6500
*		
*		MOVE.B $FFEE0202,$00004321
*		MOVE.B $12345678,$00007FA0
*		MOVE.B $AAAAAAAA,$FFFF8FA0
*		MOVE.B $B2C3A1E4,$FFFFAA00
*		MOVE.B $77777776,$5791
*		MOVE.B $CCCCCCCC,$0246
*		MOVE.B $C7C77AA8,$00A2
*		MOVE.B $10101010,$0000
*
*		MOVE.B #$00F2,$00004321
*		MOVE.B #$00E8,$00007FA0
*		MOVE.B #$0002,$FFFF8FA0
*		MOVE.B #$00A4,$FFFFAA00
*		MOVE.B #$C1,$5791
*		MOVE.B #$3B,$0246
*		MOVE.B #$1,$00A2
*		MOVE.B #$C,$0000
*
*		MOVE.B D0,$00557FFA
*		MOVE.B D1,$00009920
*		MOVE.B D2,$00EE8000
*		MOVE.B D3,$23002222
*		MOVE.B D4,$AAAAAAA6
*		MOVE.B D5,$12345678
*		MOVE.B D6,$65433456
*		MOVE.B D7,$FFFF3998
*		
*		MOVE.B (A0),$00457FFA
*		MOVE.B (A1),$00008920
*		MOVE.B (A2),$00EE7000
*		MOVE.B (A3),$23456222
*		MOVE.B (A4),$AABBCAA6
*		MOVE.B (A5),$12345678
*		MOVE.B (A6),$00CC4321
*		MOVE.B (A7),$FFFB3990
*		
*		MOVE.B (A0)+,$00457FFA
*		MOVE.B (A1)+,$00008920
*		MOVE.B (A2)+,$00EE7000
*		MOVE.B (A3)+,$23456222
*		MOVE.B (A4)+,$AABBCAA6
*		MOVE.B (A5)+,$12345678
*		MOVE.B (A6)+,$00CC4321
*		MOVE.B (A7)+,$FFFB3990
*
*		MOVE.B -(A0),$00457FFA
*		MOVE.B -(A1),$00008920
*		MOVE.B -(A2),$00EE7000
*		MOVE.B -(A3),$23456222
*		MOVE.B -(A4),$AABBCAA6
*		MOVE.B -(A5),$12345678
*		MOVE.B -(A6),$00CC4321
*		MOVE.B -(A7),$FFFB3990		
*
*		MOVE.B $56,$23002222
*		MOVE.B $218,$AAAAAAA2
*		MOVE.B $7776,$12345678
*		MOVE.B $A,$55678BBC
*		MOVE.B $00002344,$FEDCBA98
*		MOVE.B $FFFFA340,$0009ABDC
*		MOVE.B $500,$FFFF3990
*		MOVE.B $FFFFBB10,$0723BBAA	
*
*		MOVE.B $7777777A,$AAAAAAA2
*		MOVE.B $C7C77AA8,$55678BBC
*		MOVE.B $10101010,$FEDCBA98
*		MOVE.B $00CA1116,$65433456
*		MOVE.B $FFFF2114,$0009ABDC
*		MOVE.B $05007654,$FFFF3990
*		MOVE.B $00EFEFE2,$0723BBAA
*		MOVE.B $0000ABC0,$01112222		
*		
*		MOVE.B #$01,$00009995
*		MOVE.B #$12,$00EE8010
*		MOVE.B #$AA,$00EE8020
*		MOVE.B #$B3,$00EE8000
*		MOVE.B #$C1,$01112232
*		MOVE.B #$FF,$01112242
*		MOVE.B #$98,$AAAAAAB8
*		MOVE.B #$FA,$AAAAAAC6
*
*
*		*MOVE.W
*		MOVE.W D0,D0
*		MOVE.W D1,D2
*		MOVE.W D4,D5
*		MOVE.W D3,D6
*		
*		MOVE.W A0,D0
*		MOVE.W A2,D2
*		MOVE.W A5,D4
*		MOVE.W A7,D7
*		
*		MOVE.W (A0),D0
*		MOVE.W (A2),D1
*		MOVE.W (A5),D3
*		MOVE.W (A7),D7
*		
*		MOVE.W (A0)+,D0
*		MOVE.W (A0)+,D1	
*		MOVE.W (A5)+,D2
*		MOVE.W (A5)+,D3
*		
*		MOVE.W -(A0),D0
*		MOVE.W -(A0),D1
*		MOVE.W -(A5),D4
*		MOVE.W -(A5),D6
*		
*		MOVE.W $00000000,D0
*		MOVE.W $00007F00,D1		
*		MOVE.W $FFFF8010,D2		
*		MOVE.W $FFFFFF00,D3			
*		MOVE.W $56,D4
*		MOVE.W $210,D5
*		MOVE.W $7770,D6
*		MOVE.W $A,D7
*		
*		MOVE.W $00008020,D0		
*		MOVE.W $FFFF7F10,D1		
*		MOVE.W $00009000,D2
*		MOVE.W $00009876,D3		
*		MOVE.W $FFEE0202,D4		
*		MOVE.W $12345678,D5
*		MOVE.W $AAAAAAAA,D6
*		MOVE.W $B2C3A1E8,D7
*		
*		MOVE.W #$FA,D0
*		MOVE.W #$AF,D1
*		MOVE.W #$A2,D2
*		MOVE.W #$D8,D3
*		MOVE.W #$55,D4
*		MOVE.W #$3C,D5
*		MOVE.W #$00,D6
*		MOVE.W #$0092,D7
*		
*		MOVE.W D7,(A0)
*		MOVE.W D6,(A1)
*		MOVE.W D5,(A2)
*		MOVE.W D4,(A3)
*		MOVE.W D3,(A4)
*		MOVE.W D2,(A5)
*		MOVE.W D1,(A6)
*		MOVE.W D0,(A7)
*		
*		MOVE.W A0,(A0)
*		MOVE.W A1,(A1)
*		MOVE.W A2,(A2)
*		MOVE.W A3,(A3)
*		MOVE.W A4,(A4)
*		MOVE.W A5,(A5)
*		MOVE.W A6,(A6)
*		MOVE.W A7,(A7)
*
*		MOVE.W (A3),(A0)
*		MOVE.W (A4),(A1)
*		MOVE.W (A5),(A2)
*		MOVE.W (A6),(A3)
*		MOVE.W (A7),(A4)
*		MOVE.W (A0),(A5)
*		MOVE.W (A1),(A6)
*		MOVE.W (A2),(A7)
*
*		MOVE.W (A0)+,(A0)
*		MOVE.W (A1)+,(A1)
*		MOVE.W (A2)+,(A2)
*		MOVE.W (A3)+,(A3)
*		MOVE.W (A4)+,(A4)
*		MOVE.W (A5)+,(A5)
*		MOVE.W (A6)+,(A6)
*		MOVE.W (A7)+,(A7)
*		
*		MOVE.W -(A0),(A0)
*		MOVE.W -(A1),(A1)
*		MOVE.W -(A2),(A2)
*		MOVE.W -(A3),(A3)
*		MOVE.W -(A4),(A4)
*		MOVE.W -(A5),(A5)
*		MOVE.W -(A6),(A6)
*		MOVE.W -(A7),(A7)
*
*		MOVE.W $0,(A0)
*		MOVE.W $A,(A1)
*		MOVE.W $56,(A2)
*		MOVE.W $212,(A3)
*		MOVE.W $700,(A4)
*		MOVE.W $1234,(A5)
*		MOVE.W $2000,(A6)
*		MOVE.W $4000,(A7)
*		
*		MOVE.W $FFEE0202,(A0)		
*		MOVE.W $12345678,(A1)
*		MOVE.W $AAAAAAAA,(A2)
*		MOVE.W $B2C3A1E0,(A3)
*		MOVE.W $77777770,(A4)
*		MOVE.W $CCCCCCC0,(A5)
*		MOVE.W $C7C77AA0,(A6)
*		MOVE.W $10101010,(A7)
*		
*		MOVE.W #$98,(A0)
*		MOVE.W #$FA,(A1)
*		MOVE.W #$AF,(A2)
*		MOVE.W #$A2,(A3)
*		MOVE.W #$D8,(A4)
*		MOVE.W #$55,(A5)
*		MOVE.W #$3C,(A6)
*		MOVE.W #$00,(A7)
*
*		MOVE.W D7,(A0)+
*		MOVE.W D6,(A1)+
*		MOVE.W D5,(A2)+
*		MOVE.W D4,(A3)+
*		MOVE.W D3,(A4)+
*		MOVE.W D2,(A5)+
*		MOVE.W D1,(A6)+
*		MOVE.W D0,(A7)+
*		
*		MOVE.W A0,(A0)+
*		MOVE.W A1,(A1)+
*		MOVE.W A2,(A2)+
*		MOVE.W A3,(A3)+
*		MOVE.W A4,(A4)+
*		MOVE.W A5,(A5)+
*		MOVE.W A6,(A6)+
*		MOVE.W A7,(A7)+	
*
*		MOVE.W (A3),(A0)+
*		MOVE.W (A4),(A1)+
*		MOVE.W (A5),(A2)+
*		MOVE.W (A6),(A3)+
*		MOVE.W (A7),(A4)+
*		MOVE.W (A0),(A5)+
*		MOVE.W (A1),(A6)+
*		MOVE.W (A2),(A7)+
*		
*		MOVE.W (A0)+,(A0)+
*		MOVE.W (A1)+,(A1)+
*		MOVE.W (A2)+,(A2)+
*		MOVE.W (A3)+,(A3)+
*		MOVE.W (A4)+,(A4)+
*		MOVE.W (A5)+,(A5)+
*		MOVE.W (A6)+,(A6)+
*		MOVE.W (A7)+,(A7)+
*		
*		MOVE.W -(A0),(A0)+
*		MOVE.W -(A1),(A1)+
*		MOVE.W -(A2),(A2)+
*		MOVE.W -(A3),(A3)+
*		MOVE.W -(A4),(A4)+
*		MOVE.W -(A5),(A5)+
*		MOVE.W -(A6),(A6)+
*		MOVE.W -(A7),(A7)+
*
*		MOVE.W $0,(A0)+
*		MOVE.W $A,(A1)+
*		MOVE.W $56,(A2)+
*		MOVE.W $212,(A3)+
*		MOVE.W $700,(A4)+
*		MOVE.W $1234,(A5)+
*		MOVE.W $2000,(A6)+
*		MOVE.W $4000,(A7)+
*		
*		MOVE.W $FF110202,(A0)+		
*		MOVE.W $12345678,(A1)+
*		MOVE.W $AAAABB00,(A2)+
*		MOVE.W $B2C3A1E0,(A3)+
*		MOVE.W $77777770,(A4)+
*		MOVE.W $CCCCCCC0,(A5)+
*		MOVE.W $C2C2C002,(A6)+
*		MOVE.W $11111110,(A7)+
*		
*		MOVE.W #$56,(A0)+
*		MOVE.W #$CD,(A1)+
*		MOVE.W #$F2,(A2)+
*		MOVE.W #$E5,(A3)+
*		MOVE.W #$D8,(A4)+
*		MOVE.W #$13,(A5)+
*		MOVE.W #$1A,(A6)+
*		MOVE.W #$00,(A7)+
*		
*		MOVE.W D7,-(A0)
*		MOVE.W D6,-(A1)
*		MOVE.W D5,-(A2)
*		MOVE.W D4,-(A3)
*		MOVE.W D3,-(A4)
*		MOVE.W D2,-(A5)
*		MOVE.W D1,-(A6)
*		MOVE.W D0,-(A7)
*		
*		MOVE.W A0,-(A0)
*		MOVE.W A1,-(A1)
*		MOVE.W A2,-(A2)
*		MOVE.W A3,-(A3)
*		MOVE.W A4,-(A4)
*		MOVE.W A5,-(A5)
*		MOVE.W A6,-(A6)
*		MOVE.W A7,-(A7)		
*
*		MOVE.W (A3),-(A0)
*		MOVE.W (A4),-(A1)
*		MOVE.W (A5),-(A2)
*		MOVE.W (A6),-(A3)
*		MOVE.W (A7),-(A4)
*		MOVE.W (A0),-(A5)
*		MOVE.W (A1),-(A6)
*		MOVE.W (A2),-(A7)
*
*		MOVE.W (A0)+,-(A0)
*		MOVE.W (A1)+,-(A1)
*		MOVE.W (A2)+,-(A2)
*		MOVE.W (A3)+,-(A3)
*		MOVE.W (A4)+,-(A4)
*		MOVE.W (A5)+,-(A5)
*		MOVE.W (A6)+,-(A6)
*		MOVE.W (A7)+,-(A7)
*		
*		MOVE.W -(A0),-(A0)
*		MOVE.W -(A1),-(A1)
*		MOVE.W -(A2),-(A2)
*		MOVE.W -(A3),-(A3)
*		MOVE.W -(A4),-(A4)
*		MOVE.W -(A5),-(A5)
*		MOVE.W -(A6),-(A6)
*		MOVE.W -(A7),-(A7)
*
*		MOVE.W $0,-(A0)
*		MOVE.W $A,-(A1)
*		MOVE.W $56,-(A2)
*		MOVE.W $212,-(A3)
*		MOVE.W $700,-(A4)
*		MOVE.W $1234,-(A5)
*		MOVE.W $2000,-(A6)
*		MOVE.W $4000,-(A7)
*		
*		MOVE.W $FFEE0202,-(A0)		
*		MOVE.W $12345678,-(A1)
*		MOVE.W $AAAAAAAA,-(A2)
*		MOVE.W $B2C3A1E0,-(A3)
*		MOVE.W $77777770,-(A4)
*		MOVE.W $CCCCCCC0,-(A5)
*		MOVE.W $C7C77AA0,-(A6)
*		MOVE.W $10101010,-(A7)
*		
*		MOVE.W #$98,-(A0)
*		MOVE.W #$FA,-(A1)
*		MOVE.W #$AF,-(A2)
*		MOVE.W #$A2,-(A3)
*		MOVE.W #$D8,-(A4)
*		MOVE.W #$55,-(A5)
*		MOVE.W #$3C,-(A6)
*		MOVE.W #$00,-(A7)		
*		
*		MOVE.W D0,$5D24
*		MOVE.W D1,$2222
*		MOVE.W D2,$A
*		MOVE.W D3,$12
*		MOVE.W D4,$BBC
*		MOVE.W D5,$6000
*		MOVE.W D6,$00003456
*		MOVE.W D7,$FFFFABDC
*
*		MOVE.W A0,$5D24
*		MOVE.W A1,$2222
*		MOVE.W A2,$A
*		MOVE.W A3,$12
*		MOVE.W A4,$BBC
*		MOVE.W A5,$6000
*		MOVE.W A6,$00003456
*		MOVE.W A7,$FFFFABDC
*		
*		MOVE.W (A0),$00000000
*		MOVE.W (A1),$00007100
*		MOVE.W (A2),$FFFF8100
*		MOVE.W (A3),$FFFFF100
*		MOVE.W (A4),$5D10
*		MOVE.W (A5),$3300
*		MOVE.W (A6),$2
*		MOVE.W (A7),$24
*		
*		MOVE.W (A0)+,$2222
*		MOVE.W (A1)+,$A
*		MOVE.W (A2)+,$B2
*		MOVE.W (A3)+,$6000
*		MOVE.W (A4)+,$00003456
*		MOVE.W (A5)+,$00004020
*		MOVE.W (A6)+,$FFFFABDC
*		MOVE.W (A7)+,$0000	
*		
*		MOVE.W -(A0),$5D22
*		MOVE.W -(A1),$2222
*		MOVE.W -(A2),$A
*		MOVE.W -(A3),$BBC
*		MOVE.W -(A4),$6000
*		MOVE.W -(A5),$00003456
*		MOVE.W -(A6),$00004020
*		MOVE.W -(A7),$FFFFABDC
*		
*		MOVE.W $00,$0005200
*		MOVE.W $0,$FFFF8202
*		MOVE.W $14,$00007F00
*		MOVE.W $106,$5DA0
*		MOVE.W $5556,$2220
*		MOVE.W $2468,$A0
*		MOVE.W $0FFA,$BBC
*		MOVE.W $E8,$6500
*		
*		MOVE.W $FFEE0202,$00005432
*		MOVE.W $12345678,$00007FA0
*		MOVE.W $AAAAAAAA,$FFFF8FA0
*		MOVE.W $B2C3A1E4,$FFFFAA00
*		MOVE.W $77777776,$5790
*		MOVE.W $CCCCCCCC,$0246
*		MOVE.W $C7C77AA8,$00A2
*		MOVE.W $10101010,$0000
*
*		MOVE.W #$00F2,$00005432
*		MOVE.W #$00E8,$00007FA0
*		MOVE.W #$0002,$FFFF8FA0
*		MOVE.W #$00A4,$FFFFAA00
*		MOVE.W #$C1,$5790
*		MOVE.W #$3B,$0246
*		MOVE.W #$1,$00A2
*		MOVE.W #$C,$0000
*
*		MOVE.W D0,$00557FFA
*		MOVE.W D1,$00009920
*		MOVE.W D2,$00EE8000
*		MOVE.W D3,$23002222
*		MOVE.W D4,$AAAAAAA6
*		MOVE.W D5,$12345678
*		MOVE.W D6,$65433456
*		MOVE.W D7,$FFFF3998
*
*		MOVE.W A0,$00557FFA
*		MOVE.W A1,$00009920
*		MOVE.W A2,$00EE8000
*		MOVE.W A3,$23002222
*		MOVE.W A4,$AAAAAAA6
*		MOVE.W A5,$12345678
*		MOVE.W A6,$65433456
*		MOVE.W A7,$FFFF3998
*		
*		MOVE.W (A0),$00457FFA
*		MOVE.W (A1),$00008920
*		MOVE.W (A2),$00EE7000
*		MOVE.W (A3),$23456222
*		MOVE.W (A4),$AABBCAA6
*		MOVE.W (A5),$12345678
*		MOVE.W (A6),$00CC5432
*		MOVE.W (A7),$FFFB3990
*		
*		MOVE.W (A0)+,$00457FFA
*		MOVE.W (A1)+,$00008920
*		MOVE.W (A2)+,$00EE7000
*		MOVE.W (A3)+,$23456222
*		MOVE.W (A4)+,$AABBCAA6
*		MOVE.W (A5)+,$12345678
*		MOVE.W (A6)+,$00CC5432
*		MOVE.W (A7)+,$FFFB3990
*
*		MOVE.W -(A0),$00457FFA
*		MOVE.W -(A1),$00008920
*		MOVE.W -(A2),$00EE7000
*		MOVE.W -(A3),$23456222
*		MOVE.W -(A4),$AABBCAA6
*		MOVE.W -(A5),$12345678
*		MOVE.W -(A6),$00CC5432
*		MOVE.W -(A7),$FFFB3990		
*
*		MOVE.W $56,$23002222
*		MOVE.W $218,$AAAAAAA2
*		MOVE.W $7776,$12345678
*		MOVE.W $A,$55678BBC
*		MOVE.W $00002344,$FEDCBA98
*		MOVE.W $FFFFA340,$0009ABDC
*		MOVE.W $500,$FFFF3990
*		MOVE.W $FFFFBB10,$0723BBAA	
*
*		MOVE.W $7777777A,$AAAAAAA2
*		MOVE.W $C7C77AA8,$55678BBC
*		MOVE.W $10101010,$FEDCBA98
*		MOVE.W $00CA1116,$65433456
*		MOVE.W $FFFF2114,$0009ABDC
*		MOVE.W $05007654,$FFFF3990
*		MOVE.W $00EFEFE2,$0723BBAA
*		MOVE.W $0000ABC0,$01112222		
*		
*		MOVE.W #$01,$00009994
*		MOVE.W #$12,$00EE8010
*		MOVE.W #$AA,$00EE8020
*		MOVE.W #$B3,$00EE8000
*		MOVE.W #$C1,$01112232
*		MOVE.W #$FF,$01112242
*		MOVE.W #$98,$AAAAAAB8
*		MOVE.W #$FA,$AAAAAAC6
*
*
*		*MOVE.L
*		MOVE.L D0,D0
*		MOVE.L D1,D2
*		MOVE.L D4,D5
*		MOVE.L D3,D6
*		
*		MOVE.L A0,D0
*		MOVE.L A2,D2
*		MOVE.L A5,D4
*		MOVE.L A7,D7
*		
*		MOVE.L (A0),D0
*		MOVE.L (A2),D1
*		MOVE.L (A5),D3
*		MOVE.L (A7),D7
*		
*		MOVE.L (A0)+,D0
*		MOVE.L (A0)+,D1	
*		MOVE.L (A5)+,D2
*		MOVE.L (A5)+,D3
*		
*		MOVE.L -(A0),D0
*		MOVE.L -(A0),D1
*		MOVE.L -(A5),D4
*		MOVE.L -(A5),D6
*		
*		MOVE.L $00000000,D0
*		MOVE.L $00007F00,D1		
*		MOVE.L $FFFF8010,D2		
*		MOVE.L $FFFFFF00,D3			
*		MOVE.L $56,D4
*		MOVE.L $210,D5
*		MOVE.L $7770,D6
*		MOVE.L $A,D7
*		
*		MOVE.L $00008020,D0		
*		MOVE.L $FFFF7F10,D1		
*		MOVE.L $00009000,D2
*		MOVE.L $00009876,D3		
*		MOVE.L $FFEE0202,D4		
*		MOVE.L $12345678,D5
*		MOVE.L $AAAAAAAA,D6
*		MOVE.L $B2C3A1E8,D7
*		
*		MOVE.L #$FA,D0
*		MOVE.L #$AF,D1
*		MOVE.L #$A2,D2
*		MOVE.L #$D8,D3
*		MOVE.L #$55,D4
*		MOVE.L #$3C,D5
*		MOVE.L #$00,D6
*		MOVE.L #$0092,D7
*		
*		MOVE.L D7,(A0)
*		MOVE.L D6,(A1)
*		MOVE.L D5,(A2)
*		MOVE.L D4,(A3)
*		MOVE.L D3,(A4)
*		MOVE.L D2,(A5)
*		MOVE.L D1,(A6)
*		MOVE.L D0,(A7)
*		
*		MOVE.L A0,(A0)
*		MOVE.L A1,(A1)
*		MOVE.L A2,(A2)
*		MOVE.L A3,(A3)
*		MOVE.L A4,(A4)
*		MOVE.L A5,(A5)
*		MOVE.L A6,(A6)
*		MOVE.L A7,(A7)
*
*		MOVE.L (A3),(A0)
*		MOVE.L (A4),(A1)
*		MOVE.L (A5),(A2)
*		MOVE.L (A6),(A3)
*		MOVE.L (A7),(A4)
*		MOVE.L (A0),(A5)
*		MOVE.L (A1),(A6)
*		MOVE.L (A2),(A7)
*
*		MOVE.L (A0)+,(A0)
*		MOVE.L (A1)+,(A1)
*		MOVE.L (A2)+,(A2)
*		MOVE.L (A3)+,(A3)
*		MOVE.L (A4)+,(A4)
*		MOVE.L (A5)+,(A5)
*		MOVE.L (A6)+,(A6)
*		MOVE.L (A7)+,(A7)
*		
*		MOVE.L -(A0),(A0)
*		MOVE.L -(A1),(A1)
*		MOVE.L -(A2),(A2)
*		MOVE.L -(A3),(A3)
*		MOVE.L -(A4),(A4)
*		MOVE.L -(A5),(A5)
*		MOVE.L -(A6),(A6)
*		MOVE.L -(A7),(A7)
*
*		MOVE.L $0,(A0)
*		MOVE.L $A,(A1)
*		MOVE.L $56,(A2)
*		MOVE.L $212,(A3)
*		MOVE.L $700,(A4)
*		MOVE.L $1234,(A5)
*		MOVE.L $2000,(A6)
*		MOVE.L $4000,(A7)
*		
*		MOVE.L $FFEE0202,(A0)		
*		MOVE.L $12345678,(A1)
*		MOVE.L $AAAAAAAA,(A2)
*		MOVE.L $B2C3A1E0,(A3)
*		MOVE.L $77777770,(A4)
*		MOVE.L $CCCCCCC0,(A5)
*		MOVE.L $C7C77AA0,(A6)
*		MOVE.L $10101010,(A7)
*		
*		MOVE.L #$98,(A0)
*		MOVE.L #$FA,(A1)
*		MOVE.L #$AF,(A2)
*		MOVE.L #$A2,(A3)
*		MOVE.L #$D8,(A4)
*		MOVE.L #$55,(A5)
*		MOVE.L #$3C,(A6)
*		MOVE.L #$00,(A7)
*
*		MOVE.L D7,(A0)+
*		MOVE.L D6,(A1)+
*		MOVE.L D5,(A2)+
*		MOVE.L D4,(A3)+
*		MOVE.L D3,(A4)+
*		MOVE.L D2,(A5)+
*		MOVE.L D1,(A6)+
*		MOVE.L D0,(A7)+
*		
*		MOVE.L A0,(A0)+
*		MOVE.L A1,(A1)+
*		MOVE.L A2,(A2)+
*		MOVE.L A3,(A3)+
*		MOVE.L A4,(A4)+
*		MOVE.L A5,(A5)+
*		MOVE.L A6,(A6)+
*		MOVE.L A7,(A7)+	
*
*		MOVE.L (A3),(A0)+
*		MOVE.L (A4),(A1)+
*		MOVE.L (A5),(A2)+
*		MOVE.L (A6),(A3)+
*		MOVE.L (A7),(A4)+
*		MOVE.L (A0),(A5)+
*		MOVE.L (A1),(A6)+
*		MOVE.L (A2),(A7)+
*		
*		MOVE.L (A0)+,(A0)+
*		MOVE.L (A1)+,(A1)+
*		MOVE.L (A2)+,(A2)+
*		MOVE.L (A3)+,(A3)+
*		MOVE.L (A4)+,(A4)+
*		MOVE.L (A5)+,(A5)+
*		MOVE.L (A6)+,(A6)+
*		MOVE.L (A7)+,(A7)+
*		
*		MOVE.L -(A0),(A0)+
*		MOVE.L -(A1),(A1)+
*		MOVE.L -(A2),(A2)+
*		MOVE.L -(A3),(A3)+
*		MOVE.L -(A4),(A4)+
*		MOVE.L -(A5),(A5)+
*		MOVE.L -(A6),(A6)+
*		MOVE.L -(A7),(A7)+
*
*		MOVE.L $0,(A0)+
*		MOVE.L $A,(A1)+
*		MOVE.L $56,(A2)+
*		MOVE.L $212,(A3)+
*		MOVE.L $700,(A4)+
*		MOVE.L $1234,(A5)+
*		MOVE.L $2000,(A6)+
*		MOVE.L $4000,(A7)+
*		
*		MOVE.L $FF110202,(A0)+		
*		MOVE.L $12345678,(A1)+
*		MOVE.L $AAAABB00,(A2)+
*		MOVE.L $B2C3A1E0,(A3)+
*		MOVE.L $77777770,(A4)+
*		MOVE.L $CCCCCCC0,(A5)+
*		MOVE.L $C2C2C002,(A6)+
*		MOVE.L $11111110,(A7)+
*		
*		MOVE.L #$56,(A0)+
*		MOVE.L #$CD,(A1)+
*		MOVE.L #$F2,(A2)+
*		MOVE.L #$E5,(A3)+
*		MOVE.L #$D8,(A4)+
*		MOVE.L #$13,(A5)+
*		MOVE.L #$1A,(A6)+
*		MOVE.L #$00,(A7)+
*		
*		MOVE.L D7,-(A0)
*		MOVE.L D6,-(A1)
*		MOVE.L D5,-(A2)
*		MOVE.L D4,-(A3)
*		MOVE.L D3,-(A4)
*		MOVE.L D2,-(A5)
*		MOVE.L D1,-(A6)
*		MOVE.L D0,-(A7)
*		
*		MOVE.L A0,-(A0)
*		MOVE.L A1,-(A1)
*		MOVE.L A2,-(A2)
*		MOVE.L A3,-(A3)
*		MOVE.L A4,-(A4)
*		MOVE.L A5,-(A5)
*		MOVE.L A6,-(A6)
*		MOVE.L A7,-(A7)		
*
*		MOVE.L (A3),-(A0)
*		MOVE.L (A4),-(A1)
*		MOVE.L (A5),-(A2)
*		MOVE.L (A6),-(A3)
*		MOVE.L (A7),-(A4)
*		MOVE.L (A0),-(A5)
*		MOVE.L (A1),-(A6)
*		MOVE.L (A2),-(A7)
*
*		MOVE.L (A0)+,-(A0)
*		MOVE.L (A1)+,-(A1)
*		MOVE.L (A2)+,-(A2)
*		MOVE.L (A3)+,-(A3)
*		MOVE.L (A4)+,-(A4)
*		MOVE.L (A5)+,-(A5)
*		MOVE.L (A6)+,-(A6)
*		MOVE.L (A7)+,-(A7)
*		
*		MOVE.L -(A0),-(A0)
*		MOVE.L -(A1),-(A1)
*		MOVE.L -(A2),-(A2)
*		MOVE.L -(A3),-(A3)
*		MOVE.L -(A4),-(A4)
*		MOVE.L -(A5),-(A5)
*		MOVE.L -(A6),-(A6)
*		MOVE.L -(A7),-(A7)
*
*		MOVE.L $0,-(A0)
*		MOVE.L $A,-(A1)
*		MOVE.L $56,-(A2)
*		MOVE.L $212,-(A3)
*		MOVE.L $700,-(A4)
*		MOVE.L $1234,-(A5)
*		MOVE.L $2000,-(A6)
*		MOVE.L $4000,-(A7)
*		
*		MOVE.L $FFEE0202,-(A0)		
*		MOVE.L $12345678,-(A1)
*		MOVE.L $AAAAAAAA,-(A2)
*		MOVE.L $B2C3A1E0,-(A3)
*		MOVE.L $77777770,-(A4)
*		MOVE.L $CCCCCCC0,-(A5)
*		MOVE.L $C7C77AA0,-(A6)
*		MOVE.L $10101010,-(A7)
*		
*		MOVE.L #$98,-(A0)
*		MOVE.L #$FA,-(A1)
*		MOVE.L #$AF,-(A2)
*		MOVE.L #$A2,-(A3)
*		MOVE.L #$D8,-(A4)
*		MOVE.L #$55,-(A5)
*		MOVE.L #$3C,-(A6)
*		MOVE.L #$00,-(A7)		
*
*		MOVE.L D0,$5D24
*		MOVE.L D1,$2222
*		MOVE.L D2,$A
*		MOVE.L D3,$12
*		MOVE.L D4,$BBC
*		MOVE.L D5,$6000
*		MOVE.L D6,$00003456
*		MOVE.L D7,$FFFFABDC
*
*		MOVE.L A0,$5D24
*		MOVE.L A1,$2222
*		MOVE.L A2,$A
*		MOVE.L A3,$12
*		MOVE.L A4,$BBC
*		MOVE.L A5,$6000
*		MOVE.L A6,$00003456
*		MOVE.L A7,$FFFFABDC
*		
*		MOVE.L (A0),$00000000
*		MOVE.L (A1),$00007100
*		MOVE.L (A2),$FFFF8100
*		MOVE.L (A3),$FFFFF100
*		MOVE.L (A4),$5D10
*		MOVE.L (A5),$3300
*		MOVE.L (A6),$2
*		MOVE.L (A7),$24
*		
*		MOVE.L (A0)+,$2222
*		MOVE.L (A1)+,$A
*		MOVE.L (A2)+,$B2
*		MOVE.L (A3)+,$6000
*		MOVE.L (A4)+,$00003456
*		MOVE.L (A5)+,$00004020
*		MOVE.L (A6)+,$FFFFABDC
*		MOVE.L (A7)+,$0000	
*		
*		MOVE.L -(A0),$5D22
*		MOVE.L -(A1),$2222
*		MOVE.L -(A2),$A
*		MOVE.L -(A3),$BBC
*		MOVE.L -(A4),$6000
*		MOVE.L -(A5),$00003456
*		MOVE.L -(A6),$00004020
*		MOVE.L -(A7),$FFFFABDC
*		
*		MOVE.L $00,$0005200
*		MOVE.L $0,$FFFF8202
*		MOVE.L $14,$00007F00
*		MOVE.L $106,$5DA0
*		MOVE.L $5556,$2220
*		MOVE.L $2468,$A0
*		MOVE.L $0FFA,$BBC
*		MOVE.L $E8,$6500
*		
*		MOVE.L $FFEE0202,$00005432
*		MOVE.L $12345678,$00007FA0
*		MOVE.L $AAAAAAAA,$FFFF8FA0
*		MOVE.L $B2C3A1E4,$FFFFAA00
*		MOVE.L $77777776,$5790
*		MOVE.L $CCCCCCCC,$0246
*		MOVE.L $C7C77AA8,$00A2
*		MOVE.L $10101010,$0000
*
*		MOVE.L #$00F2,$00005432
*		MOVE.L #$00E8,$00007FA0
*		MOVE.L #$0002,$FFFF8FA0
*		MOVE.L #$00A4,$FFFFAA00
*		MOVE.L #$C1,$5790
*		MOVE.L #$3B,$0246
*		MOVE.L #$1,$00A2
*		MOVE.L #$C,$0000
*
*		MOVE.L D0,$00557FFA
*		MOVE.L D1,$00009920
*		MOVE.L D2,$00EE8000
*		MOVE.L D3,$23002222
*		MOVE.L D4,$AAAAAAA6
*		MOVE.L D5,$12345678
*		MOVE.L D6,$65433456
*		MOVE.L D7,$FFFF3998
*
*		MOVE.L A0,$00557FFA
*		MOVE.L A1,$00009920
*		MOVE.L A2,$00EE8000
*		MOVE.L A3,$23002222
*		MOVE.L A4,$AAAAAAA6
*		MOVE.L A5,$12345678
*		MOVE.L A6,$65433456
*		MOVE.L A7,$FFFF3998
*		
*		MOVE.L (A0),$00457FFA
*		MOVE.L (A1),$00008920
*		MOVE.L (A2),$00EE7000
*		MOVE.L (A3),$23456222
*		MOVE.L (A4),$AABBCAA6
*		MOVE.L (A5),$12345678
*		MOVE.L (A6),$00CC5432
*		MOVE.L (A7),$FFFB3990
*		
*		MOVE.L (A0)+,$00457FFA
*		MOVE.L (A1)+,$00008920
*		MOVE.L (A2)+,$00EE7000
*		MOVE.L (A3)+,$23456222
*		MOVE.L (A4)+,$AABBCAA6
*		MOVE.L (A5)+,$12345678
*		MOVE.L (A6)+,$00CC5432
*		MOVE.L (A7)+,$FFFB3990
*
*		MOVE.L -(A0),$00457FFA
*		MOVE.L -(A1),$00008920
*		MOVE.L -(A2),$00EE7000
*		MOVE.L -(A3),$23456222
*		MOVE.L -(A4),$AABBCAA6
*		MOVE.L -(A5),$12345678
*		MOVE.L -(A6),$00CC5432
*		MOVE.L -(A7),$FFFB3990		
*
*		MOVE.L $56,$23002222
*		MOVE.L $218,$AAAAAAA2
*		MOVE.L $7776,$12345678
*		MOVE.L $A,$55678BBC
*		MOVE.L $00002344,$FEDCBA98
*		MOVE.L $FFFFA340,$0009ABDC
*		MOVE.L $500,$FFFF3990
*		MOVE.L $FFFFBB10,$0723BBAA	
*
*		MOVE.L $7777777A,$AAAAAAA2
*		MOVE.L $C7C77AA8,$55678BBC
*		MOVE.L $10101010,$FEDCBA98
*		MOVE.L $00CA1116,$65433456
*		MOVE.L $FFFF2114,$0009ABDC
*		MOVE.L $05007654,$FFFF3990
*		MOVE.L $00EFEFE2,$0723BBAA
*		MOVE.L $0000ABC0,$01112222		
*		
*		MOVE.L #$01,$00009994
*		MOVE.L #$12,$00EE8010
*		MOVE.L #$AA,$00EE8020
*		MOVE.L #$B3,$00EE8000
*		MOVE.L #$C1,$01112232
*		MOVE.L #$FF,$01112242
*		MOVE.L #$98,$AAAAAAB8
*		MOVE.L #$FA,$AAAAAAC6
*		
*		
*		*MOVEQ
*				
*		*** Destination ONLY Dn
*		*** Long word ONLY
*		***	$FF is upper bound (1Byte)
************************************ Start with MOVEQ.L #<data> to Dn		
*		MOVEQ.L #0,D0
*		MOVEQ.L #$1,D0
*		MOVEQ.L #$E,D0
*		MOVEQ.L #$AA,D0
*		MOVEQ.L #$12,D0
*		MOVEQ.L #$56,D0
*		MOVEQ.L #$20,D0
*		MOVEQ.L #$F2,D0
*		MOVEQ.L #$FF,D0
*		
*		MOVEQ.L #0,D1
*		MOVEQ.L #$1,D1
*		MOVEQ.L #$E,D1
*		MOVEQ.L #$AA,D1
*		MOVEQ.L #$12,D1
*		MOVEQ.L #$56,D1
*		MOVEQ.L #$20,D1
*		MOVEQ.L #$F2,D1
*		MOVEQ.L #$FF,D1
*
*		MOVEQ.L #0,D2
*		MOVEQ.L #$1,D2
*		MOVEQ.L #$E,D2
*		MOVEQ.L #$AA,D2
*		MOVEQ.L #$12,D2
*		MOVEQ.L #$56,D2
*		MOVEQ.L #$20,D2
*		MOVEQ.L #$F2,D2
*		MOVEQ.L #$FF,D2
*
*		MOVEQ.L #0,D3
*		MOVEQ.L #$1,D3
*		MOVEQ.L #$E,D3
*		MOVEQ.L #$AA,D3
*		MOVEQ.L #$12,D3
*		MOVEQ.L #$56,D3
*		MOVEQ.L #$20,D3
*		MOVEQ.L #$F2,D3
*		MOVEQ.L #$FF,D3
*
*		MOVEQ.L #0,D4
*		MOVEQ.L #$1,D4
*		MOVEQ.L #$E,D4
*		MOVEQ.L #$AA,D4
*		MOVEQ.L #$12,D4
*		MOVEQ.L #$56,D4
*		MOVEQ.L #$20,D4
*		MOVEQ.L #$F2,D4
*		MOVEQ.L #$FF,D4
*
*		MOVEQ.L #0,D5
*		MOVEQ.L #$1,D5
*		MOVEQ.L #$E,D5
*		MOVEQ.L #$AA,D5
*		MOVEQ.L #$12,D5
*		MOVEQ.L #$56,D5
*		MOVEQ.L #$20,D5
*		MOVEQ.L #$F2,D5
*		MOVEQ.L #$FF,D5
*
*		MOVEQ.L #0,D6
*		MOVEQ.L #$1,D6
*		MOVEQ.L #$E,D6
*		MOVEQ.L #$AA,D6
*		MOVEQ.L #$12,D6
*		MOVEQ.L #$56,D6
*		MOVEQ.L #$20,D6
*		MOVEQ.L #$F2,D6
*		MOVEQ.L #$FF,D6
*
*		MOVEQ.L #0,D7
*		MOVEQ.L #$1,D7
*		MOVEQ.L #$E,D7
*		MOVEQ.L #$AA,D7
*		MOVEQ.L #$12,D7
*		MOVEQ.L #$56,D7
*		MOVEQ.L #$20,D7
*		MOVEQ.L #$F2,D7
*		MOVEQ.L #$FF,D7		
************************************ End with MOVEQ.L #<data> to Dn	
*		
*		
*		*MOVEM
*		
*		
*
*		
*
*	
*	*ADDA.W	
*		ADDA.W (A0)+,A2
*		ADDA.W (A1)+,A3
*		
*		ADDA.W -(A0),A2
*		ADDA.W -(A1),A3
*
*		ADDA.W D0,A0
*		ADDA.W D1,A1
*		
*		ADDA.W A0,A0
*		ADDA.W A1,A1
*		
*		ADDA.W (A0),A4
*		ADDA.W (A1),A5
*		
*		ADDA.W $2000,A6
*		ADDA.W $3000,A7
*		
*		ADDA.W $00002990,A0
*		ADDA.W $FFFF9110,A1
*		
*		ADDA.W #$001292,A2
*		ADDA.W #$0000A920,A3
*	
*	* NEED SUBA TO ADJUST
**		SUBA.W	#$0001,A0
**		SUBA.W	#$0001,A1
**		SUBA.W	#$0001,A2
**		SUBA.W	#$0001,A3	
*	
*	*ADDA.L	
*		ADDA.L (A0)+,A2
*		ADDA.L (A1)+,A3
*		
*		ADDA.L -(A0),A2
*		ADDA.L -(A1),A3
*
*		ADDA.L D0,A0
*		ADDA.L D1,A1
*		
*		ADDA.L A0,A0
*		ADDA.L A1,A1
*		
*		ADDA.L (A0),A4
*		ADDA.L (A1),A5
*		
*		ADDA.L $2000,A6
*		ADDA.L $3000,A7
*	
*		ADDA.L $00002990,A0
*		ADDA.L $FFFF9110,A1
*		
*		ADDA.L #$001292,A2
*		ADDA.L #$0000A920,A3
*	
*	* NEED SUBA TO ADJUST
**		SUBA.L	#$00AA0001,A0
**		SUBA.L	#$00AA0001,A1
**		SUBA.L	#$00AA0001,A2
**		SUBA.L	#$00AA0001,A3
**	
*	*ADD.B	
*		ADD.B D0,D7
*		ADD.B D1,D6
*		ADD.B D2,D5
*		ADD.B D3,D4
*
*		ADD.B (A1),D0
*		ADD.B (A2),D1
*		ADD.B (A3),D2
*		ADD.B (A4),D3
*		
*		ADD.B (A1)+,D4
*		ADD.B (A2)+,D5
*		ADD.B (A3)+,D6
*		ADD.B (A4)+,D7
*		
*		ADD.B -(A1),D0
*		ADD.B -(A2),D1
*		ADD.B -(A3),D2
*		ADD.B -(A4),D3
*		
*		ADD.B	$1020,D0
*		ADD.B	$1800,D1
*		ADD.B	$FFFF8500,D2
*		ADD.B	$FFFFA200,D3
*		
*		ADD.B	$0000A030,D4
*		ADD.B	$00031810,D5
*		ADD.B	$FFFF2580,D6
*		ADD.B	$F0000210,D7
*		
*		ADD.B	#$E2,D4
*		ADD.B	#$42,D5
*		ADD.B	#$F4,D6
*		ADD.B	#$CD,D7
*		
*		ADD.B	D0,(A0)
*		ADD.B	D1,(A1)
*		ADD.B	D2,(A2)
*		ADD.B	D3,(A3)
*		
*		ADD.B	D4,(A4)+
*		ADD.B	D5,(A5)+
*		ADD.B	D6,(A6)+
*		ADD.B	D7,(A7)+
*		
*		ADD.B	D4,-(A4)
*		ADD.B	D5,-(A5)
*		ADD.B	D6,-(A6)
*		ADD.B	D7,-(A7)
*
*		ADD.B	D0,$1020
*		ADD.B	D1,$1800
*		ADD.B	D2,$FFFF8500
*		ADD.B	D3,$FFFFA200
*		
*		ADD.B	D4,$0000A030
*		ADD.B	D5,$00031810
*		ADD.B	D6,$FFFF2580
*		ADD.B	D7,$F0000210		
*	
*		
*	*ADD.W
*		ADD.W	D0,D7
*		ADD.W	D1,D6
*		ADD.W	D2,D5
*		ADD.W	D3,D4
*		ADD.W	D4,D3
*		ADD.W	D5,D2
*		ADD.W	D6,D1
*		ADD.W	D7,D0
*		
*		ADD.W	A4,D3
*		ADD.W	A5,D2
*		ADD.W	A6,D1
*		ADD.W	A7,D0
*		
*		ADD.W	(A1),D0
*		ADD.W	(A2),D1
*		ADD.W	(A3),D2
*		ADD.W	(A4),D3
*		
*		ADD.W	(A1)+,D4
*		ADD.W	(A2)+,D5
*		ADD.W	(A3)+,D6
*		ADD.W	(A4)+,D7
*		
*		ADD.W	-(A1),D0
*		ADD.W	-(A2),D1
*		ADD.W	-(A3),D2
*		ADD.W	-(A4),D3
*		
*		ADD.W	$1020,D0
*		ADD.W	$1800,D1
*		ADD.W	$FFFF8500,D2
*		ADD.W	$FFFFA200,D3
*		
*		ADD.W	$00AA1030,D4
*		ADD.W	$00231810,D5
*		ADD.W	$FFFF2580,D6
*		ADD.W	$F0000210,D7
*		
*		ADD.W	#$12E2,D4
*		ADD.W	#$4542,D5
*		ADD.W	#$77F4,D6
*		ADD.W	#$FFCD,D7		
*		
*		ADD.W	D0,(A0)
*		ADD.W	D1,(A1)
*		ADD.W	D2,(A2)
*		ADD.W	D3,(A3)
*
*		ADD.W	D4,(A4)+
*		ADD.W	D5,(A5)+
*		ADD.W	D6,(A6)+
*		ADD.W	D7,(A7)+
*		
*		ADD.W	D4,-(A4)
*		ADD.W	D5,-(A5)
*		ADD.W	D6,-(A6)
*		ADD.W	D7,-(A7)
*
*		ADD.W	D0,$1020
*		ADD.W	D1,$1800
*		ADD.W	D2,$FFFF8500
*		ADD.W	D3,$FFFFA200
*		
*		ADD.W	D4,$0000A030
*		ADD.W	D5,$00031810
*		ADD.W	D6,$FFFF2580
*		ADD.W	D7,$F0000210		
*		
*		
*		
*	*ADD.L
*		ADD.L	D0,D7
*		ADD.L	D1,D6
*		ADD.L	D2,D5
*		ADD.L	D3,D4
*		ADD.L	D4,D3
*		ADD.L	D5,D2
*		ADD.L	D6,D1
*		ADD.L	D7,D0
*		
*		ADD.L	A4,D3
*		ADD.L	A5,D2
*		ADD.L	A6,D1
*		ADD.L	A7,D0
*		
*		ADD.L	(A1),D0
*		ADD.L	(A2),D1
*		ADD.L	(A3),D2
*		ADD.L	(A4),D3
*		
*		ADD.L	(A1)+,D4
*		ADD.L	(A2)+,D5
*		ADD.L	(A3)+,D6
*		ADD.L	(A4)+,D7
*		
*		ADD.L	-(A1),D0
*		ADD.L	-(A2),D1
*		ADD.L	-(A3),D2
*		ADD.L	-(A4),D3
*		
*		ADD.L	$1020,D0
*		ADD.L	$1800,D1
*		ADD.L	$FFFF8500,D2
*		ADD.L	$FFFFA200,D3
*		
*		ADD.L	$00AA1030,D4
*		ADD.L	$00231810,D5
*		ADD.L	$FFFF2580,D6
*		ADD.L	$F0000210,D7
*		
*		ADD.L	#$001203E2,D4
*		ADD.L	#$20042242,D5
*		ADD.L	#$12FFFFF4,D6
*		ADD.L	#$FFCC23CD,D7
*
*		ADD.L	D0,(A0)
*		ADD.L	D1,(A1)
*		ADD.L	D2,(A2)
*		ADD.L	D3,(A3)
*
*		ADD.L	D4,(A4)+
*		ADD.L	D5,(A5)+
*		ADD.L	D6,(A6)+
*		ADD.L	D7,(A7)+
*		
*		ADD.L	D4,-(A4)
*		ADD.L	D5,-(A5)
*		ADD.L	D6,-(A6)
*		ADD.L	D7,-(A7)
*
*		ADD.L	D0,$1020
*		ADD.L	D1,$1800
*		ADD.L	D2,$FFFF8500
*		ADD.L	D3,$FFFFA200
*		
*		ADD.L	D4,$0000A030
*		ADD.L	D5,$00031810
*		ADD.L	D6,$FFFF2580
*		ADD.L	D7,$F0000210		
*		
*	*ADDI.B
*		ADDI.B	#$22,D0
*		ADDI.B	#$A1,D1
*		
*		ADDI.B	#$45,(A2)
*		ADDI.B	#$A5,(A3)
*		
*		ADDI.B	#$12,(A2)+
*		ADDI.B	#$2D,(A3)+
*		
*		ADDI.B	#$24,-(A2)
*		ADDI.B	#$1C,-(A3)
*		
*		ADDI.B	#$9,$3050
*		ADDI.B	#$A2,$1500
*		
*		ADDI.B	#$20,$002456D2
*		ADDI.B	#$10,$00FF23D0
*				
*	*ADDI.W
*		ADDI.W	#$2212,D0
*		ADDI.W	#$A122,D1
*		
*		ADDI.W	#$7654,(A2)
*		ADDI.W	#$5AA5,(A3)
*		
*		ADDI.W	#$1212,(A2)+
*		ADDI.W	#$2D2D,(A3)+
*		
*		ADDI.W	#$2423,-(A2)
*		ADDI.W	#$1C56,-(A3)
*		
*		ADDI.W	#$2419,$3050
*		ADDI.W	#$77A2,$1500
*		
*		ADDI.W	#$1220,$002456D2
*		ADDI.W	#$CC10,$00FF23D0
*
*	*ADDI.L
*		ADDI.L	#$FF232212,D0
*		ADDI.L	#$0024AA6A,D1
*		
*		ADDI.L	#$0000000A,(A2)
*		ADDI.L	#$0A2412A5,(A3)
*		
*		ADDI.L	#$12348812,(A2)+
*		ADDI.L	#$55552D00,(A3)+
*		
*		ADDI.L	#$AAAA2423,-(A2)
*		ADDI.L	#$00000C56,-(A3)
*		
*		ADDI.L	#$0048ABCE,$3330
*		ADDI.L	#$000000A2,$1520
*		
*		ADDI.L	#$98731220,$002456D2
*		ADDI.L	#$7777CC10,$00FF23D0
*
*	
*	
*	*SUB.B	
*		SUB.B	D0,D7
*		SUB.B	D1,D6
*		SUB.B	D2,D5
*		SUB.B	D3,D4
*
*		
*		SUB.B	(A1),D0
*		SUB.B	(A2),D1
*		SUB.B	(A3),D2
*		SUB.B	(A4),D3
*		
*		SUB.B	(A1)+,D4
*		SUB.B	(A2)+,D5
*		SUB.B	(A3)+,D6
*		SUB.B	(A4)+,D7
*		
*		SUB.B	-(A1),D0
*		SUB.B	-(A2),D1
*		SUB.B	-(A3),D2
*		SUB.B	-(A4),D3
*		
*		SUB.B	$1020,D0
*		SUB.B	$1800,D1
*		SUB.B	$FFFF8500,D2
*		SUB.B	$FFFFA200,D3
*		
*		SUB.B	$0000A030,D4
*		SUB.B	$00031810,D5
*		SUB.B	$FFFF2580,D6
*		SUB.B	$F0000210,D7
*		
*		SUB.B	#$E2,D4
*		SUB.B	#$42,D5
*		SUB.B	#$F4,D6
*		SUB.B	#$CD,D7
*		
*		SUB.B	D0,(A0)
*		SUB.B	D1,(A1)
*		SUB.B	D2,(A2)
*		SUB.B	D3,(A3)
*		
*		SUB.B	D4,(A4)+
*		SUB.B	D5,(A5)+
*		SUB.B	D6,(A6)+
*		SUB.B	D7,(A7)+
*		
*		SUB.B	D4,-(A4)
*		SUB.B	D5,-(A5)
*		SUB.B	D6,-(A6)
*		SUB.B	D7,-(A7)
*
*		SUB.B	D0,$1020
*		SUB.B	D1,$1800
*		SUB.B	D2,$FFFF8500
*		SUB.B	D3,$FFFFA200
*		
*		SUB.B	D4,$0000A030
*		SUB.B	D5,$00031810
*		SUB.B	D6,$FFFF2580
*		SUB.B	D7,$F0000210		
		
		
		
	*SUB.W
*		SUB.W	D0,D7
*		SUB.W	D1,D6
*		SUB.W	D2,D5
*		SUB.W	D3,D4
*		SUB.W	D4,D3
*		SUB.W	D5,D2
*		SUB.W	D6,D1
*		SUB.W	D7,D0
*		
*		SUB.W	A4,D3
*		SUB.W	A5,D2
*		SUB.W	A6,D1
*		SUB.W	A7,D0
*		
*		SUB.W	(A1),D0
*		SUB.W	(A2),D1
*		SUB.W	(A3),D2
*		SUB.W	(A4),D3
*		
*		SUB.W	(A1)+,D4
*		SUB.W	(A2)+,D5
*		SUB.W	(A3)+,D6
*		SUB.W	(A4)+,D7
*		
*		SUB.W	-(A1),D0
*		SUB.W	-(A2),D1
*		SUB.W	-(A3),D2
*		SUB.W	-(A4),D3
*		
*		SUB.W	$1020,D0
*		SUB.W	$1800,D1
*		SUB.W	$FFFF8500,D2
*		SUB.W	$FFFFA200,D3
*		
*		SUB.W	$00AA1030,D4
*		SUB.W	$00231810,D5
*		SUB.W	$FFFF2580,D6
*		SUB.W	$F0000210,D7
*		
*		SUB.W	#$EEE2,D4
*		SUB.W	#$AA42,D5
*		SUB.W	#$12F4,D6
*		SUB.W	#$83CD,D7		
*		
*		SUB.W	D0,(A0)
*		SUB.W	D1,(A1)
*		SUB.W	D2,(A2)
*		SUB.W	D3,(A3)
*
*		SUB.W	D4,(A4)+
*		SUB.W	D5,(A5)+
*		SUB.W	D6,(A6)+
*		SUB.W	D7,(A7)+
*		
*		SUB.W	D4,-(A4)
*		SUB.W	D5,-(A5)
*		SUB.W	D6,-(A6)
*		SUB.W	D7,-(A7)
*
*		SUB.W	D0,$1020
*		SUB.W	D1,$1800
*		SUB.W	D2,$FFFF8500
*		SUB.W	D3,$FFFFA200
*		
*		SUB.W	D4,$0000A030
*		SUB.W	D5,$00031810
*		SUB.W	D6,$FFFF2580
*		SUB.W	D7,$F0000210		
*		
*		
*		
*	*SUB.L	
*		SUB.L	D0,D7
*		SUB.L	D1,D6
*		SUB.L	D2,D5
*		SUB.L	D3,D4
*		SUB.L	D4,D3
*		SUB.L	D5,D2
*		SUB.L	D6,D1
*		SUB.L	D7,D0
*		
*		SUB.L	A4,D3
*		SUB.L	A5,D2
*		SUB.L	A6,D1
*		SUB.L	A7,D0
*		
*		SUB.L	(A1),D0
*		SUB.L	(A2),D1
*		SUB.L	(A3),D2
*		SUB.L	(A4),D3
*		
*		SUB.L	(A1)+,D4
*		SUB.L	(A2)+,D5
*		SUB.L	(A3)+,D6
*		SUB.L	(A4)+,D7
*		
*		SUB.L	-(A1),D0
*		SUB.L	-(A2),D1
*		SUB.L	-(A3),D2
*		SUB.L	-(A4),D3
*		
*		SUB.L	$1020,D0
*		SUB.L	$1800,D1
*		SUB.L	$FFFF8500,D2
*		SUB.L	$FFFFA200,D3
*		
*		SUB.L	$00AA1030,D4
*		SUB.L	$00231810,D5
*		SUB.L	$FFFF2580,D6
*		SUB.L	$F0000210,D7
		
*		SUB.L	#$EEE2,D4
*		SUB.L	#$AA42,D5
*		SUB.L	#$12F4,D6
*		SUB.L	#$83CD,D7

*		SUB.L	D0,(A0)
*		SUB.L	D1,(A1)
*		SUB.L	D2,(A2)
*		SUB.L	D3,(A3)
*
*		SUB.L	D4,(A4)+
*		SUB.L	D5,(A5)+
*		SUB.L	D6,(A6)+
*		SUB.L	D7,(A7)+
*		
*		SUB.L	D4,-(A4)
*		SUB.L	D5,-(A5)
*		SUB.L	D6,-(A6)
*		SUB.L	D7,-(A7)
*
*		SUB.L	D0,$1020
*		SUB.L	D1,$1800
*		SUB.L	D2,$FFFF8500
*		SUB.L	D3,$FFFFA200
*		
*		SUB.L	D4,$0000A030
*		SUB.L	D5,$00031810
*		SUB.L	D6,$FFFF2580
*		SUB.L	D7,$F0000210
*
*	*SUB.B	
*		SUB.B	D0,D7
*		SUB.B	D1,D6
*		SUB.B	D2,D5
*		SUB.B	D3,D4
*
*		
*		SUB.B	(A1),D0
*		SUB.B	(A2),D1
*		SUB.B	(A3),D2
*		SUB.B	(A4),D3
*		
*		SUB.B	(A1)+,D4
*		SUB.B	(A2)+,D5
*		SUB.B	(A3)+,D6
*		SUB.B	(A4)+,D7
*		
*		SUB.B	-(A1),D0
*		SUB.B	-(A2),D1
*		SUB.B	-(A3),D2
*		SUB.B	-(A4),D3
*		
*		SUB.B	$1020,D0
*		SUB.B	$1800,D1
*		SUB.B	$FFFF8500,D2
*		SUB.B	$FFFFA200,D3
*		
*		SUB.B	$0000A030,D4
*		SUB.B	$00031810,D5
*		SUB.B	$FFFF2580,D6
*		SUB.B	$F0000210,D7
*		
**		SUB.B	#$E2,D4
**		SUB.B	#$42,D5
**		SUB.B	#$F4,D6
**		SUB.B	#$CD,D7
*		
*		SUB.B	D0,(A0)
*		SUB.B	D1,(A1)
*		SUB.B	D2,(A2)
*		SUB.B	D3,(A3)
*		
*		SUB.B	D4,(A4)+
*		SUB.B	D5,(A5)+
*		SUB.B	D6,(A6)+
*		SUB.B	D7,(A7)+
*		
*		SUB.B	D4,-(A4)
*		SUB.B	D5,-(A5)
*		SUB.B	D6,-(A6)
*		SUB.B	D7,-(A7)
*
*		SUB.B	D0,$1020
*		SUB.B	D1,$1800
*		SUB.B	D2,$FFFF8500
*		SUB.B	D3,$FFFFA200
*		
*		SUB.B	D4,$0000A030
*		SUB.B	D5,$00031810
*		SUB.B	D6,$FFFF2580
*		SUB.B	D7,$F0000210		
*		
*		
*		
*	*SUB.W	
*		SUB.W	D0,D7
*		SUB.W	D1,D6
*		SUB.W	D2,D5
*		SUB.W	D3,D4
*		SUB.W	D4,D3
*		SUB.W	D5,D2
*		SUB.W	D6,D1
*		SUB.W	D7,D0
*		
*		SUB.W	A4,D3
*		SUB.W	A5,D2
*		SUB.W	A6,D1
*		SUB.W	A7,D0
*		
*		SUB.W	(A1),D0
*		SUB.W	(A2),D1
*		SUB.W	(A3),D2
*		SUB.W	(A4),D3
*		
*		SUB.W	(A1)+,D4
*		SUB.W	(A2)+,D5
*		SUB.W	(A3)+,D6
*		SUB.W	(A4)+,D7
*		
*		SUB.W	-(A1),D0
*		SUB.W	-(A2),D1
*		SUB.W	-(A3),D2
*		SUB.W	-(A4),D3
*		
*		SUB.W	$1020,D0
*		SUB.W	$1800,D1
*		SUB.W	$FFFF8500,D2
*		SUB.W	$FFFFA200,D3
*		
*		SUB.W	$00AA1030,D4
*		SUB.W	$00231810,D5
*		SUB.W	$FFFF2580,D6
*		SUB.W	$F0000210,D7
*		
**		SUB.W	#$EEE2,D4
**		SUB.W	#$AA42,D5
**		SUB.W	#$12F4,D6
**		SUB.W	#$83CD,D7		
*		
*		SUB.W	D0,(A0)
*		SUB.W	D1,(A1)
*		SUB.W	D2,(A2)
*		SUB.W	D3,(A3)
*
*		SUB.W	D4,(A4)+
*		SUB.W	D5,(A5)+
*		SUB.W	D6,(A6)+
*		SUB.W	D7,(A7)+
*		
*		SUB.W	D4,-(A4)
*		SUB.W	D5,-(A5)
*		SUB.W	D6,-(A6)
*		SUB.W	D7,-(A7)
*
*		SUB.W	D0,$1020
*		SUB.W	D1,$1800
*		SUB.W	D2,$FFFF8500
*		SUB.W	D3,$FFFFA200
*		
*		SUB.W	D4,$0000A030
*		SUB.W	D5,$00031810
*		SUB.W	D6,$FFFF2580
*		SUB.W	D7,$F0000210		
*		
*		
*	*SUB.L
*		SUB.L	D0,D7
*		SUB.L	D1,D6
*		SUB.L	D2,D5
*		SUB.L	D3,D4
*		SUB.L	D4,D3
*		SUB.L	D5,D2
*		SUB.L	D6,D1
*		SUB.L	D7,D0
*		
*		SUB.L	A4,D3
*		SUB.L	A5,D2
*		SUB.L	A6,D1
*		SUB.L	A7,D0
*		
*		SUB.L	(A1),D0
*		SUB.L	(A2),D1
*		SUB.L	(A3),D2
*		SUB.L	(A4),D3
*		
*		SUB.L	(A1)+,D4
*		SUB.L	(A2)+,D5
*		SUB.L	(A3)+,D6
*		SUB.L	(A4)+,D7
*		
*		SUB.L	-(A1),D0
*		SUB.L	-(A2),D1
*		SUB.L	-(A3),D2
*		SUB.L	-(A4),D3
*		
*		SUB.L	$1020,D0
*		SUB.L	$1800,D1
*		SUB.L	$FFFF8500,D2
*		SUB.L	$FFFFA200,D3
*		
*		SUB.L	$00AA1030,D4
*		SUB.L	$00231810,D5
*		SUB.L	$FFFF2580,D6
*		SUB.L	$F0000210,D7
**		
**		SUB.L	#$EEE2,D4
**		SUB.L	#$AA42,D5
**		SUB.L	#$12F4,D6
**		SUB.L	#$83CD,D7
*
*		SUB.L	D0,(A0)
*		SUB.L	D1,(A1)
*		SUB.L	D2,(A2)
*		SUB.L	D3,(A3)
*
*		SUB.L	D4,(A4)+
*		SUB.L	D5,(A5)+
*		SUB.L	D6,(A6)+
*		SUB.L	D7,(A7)+
*		
*		SUB.L	D4,-(A4)
*		SUB.L	D5,-(A5)
*		SUB.L	D6,-(A6)
*		SUB.L	D7,-(A7)
*
*		SUB.L	D0,$1020
*		SUB.L	D1,$1800
*		SUB.L	D2,$FFFF8500
*		SUB.L	D3,$FFFFA200
*		
*		SUB.L	D4,$0000A030
*		SUB.L	D5,$00031810
*		SUB.L	D6,$FFFF2580
*		SUB.L	D7,$F0000210		
*
*		MOVE.L #$0034,D2
*		MOVE.L #$0020,D3
*		
*	*MULS
*		MULS.W D0,D1
*		MULS.W D2,D3
*		
*		MULS.W (A1),D0
*		MULS.W (A2),D2
*		
*		MULS.W (A1)+,D0
*		MULS.W (A2)+,D2
*		
*		MULS.W -(A1),D0
*		MULS.W -(A2),D2
*		
*		MULS.W $500,D0
*		MULS.W $200,D2
*		
*		MULS.W $A204,D0
*		MULS.W $FFFF5000,D2
*	
*		MULS.W #$50,D0
*		MULS.W #$700,D2
*									
*		
*	*CLR.L
*		CLR.L D2
*		CLR.L D3
*		CLR.L (A0)
*		CLR.L (A1)
*		CLR.L -(A2)
*		CLR.L -(A3)
*		CLR.L (A2)+
*		CLR.L (A3)+
*		CLR.L $6910
*		CLR.L $02A2
*		CLR.L $A1942BE4
*		CLR.L $000A00A0		
*		
*		
*		MOVE.W #$5000,D0
*		MOVE.W #$2000,D1
*		MOVE.W #$4000,D2
*		MOVE.W #$0020,D3
*		MOVE.W #$2000,(A1)
*		MOVE.W #$1000,(A2)
*		
*	*DIVU
*		DIVU.W D0,D1
*		DIVU.W D2,D3
*		
*		DIVU.W (A1),D1
*		DIVU.W (A2),D3
*		
*		DIVU.W (A1)+,D5
*		DIVU.W (A2)+,D6
*		
*		DIVU.W -(A1),D5
*		DIVU.W -(A2),D6
*		
*		DIVU.W $500,D0
*		DIVU.W $200,D2
*		
*		DIVU.W $A204,D0
*		DIVU.W $FFFF5000,D2
*	f
*		DIVU.W #$50,D0
*		DIVU.W #$700,D2
*
*	
*	*LEA
*		LEA	(A0),A1
*		LEA	(A2),A3
*		LEA	$00006500,A4
*		LEA	$1010,A5
*		LEA	$0000AA02,A6
*		LEA	$FFFF2102,A7
*		
*	*CLR.B
*		CLR.B D0
*		CLR.B D1
*		CLR.B (A0)
*		CLR.B (A1)
*		CLR.B (A2)+
*		CLR.B (A3)+
*		CLR.B -(A2)
*		CLR.B -(A3)
*		CLR.B $6910
*		CLR.B $02A2
*		CLR.B $A1942BE2
*		CLR.B $000A00A0
*		
*	*CLR.W
*		CLR.W D0
*		CLR.W D1
*		CLR.W (A0)
*		CLR.W (A1)
*		CLR.W -(A2)
*		CLR.W -(A3)		
*		CLR.W (A2)+
*		CLR.W (A3)+
*		CLR.W $6910
*		CLR.W $02A2
*		CLR.W $A1942BE0
*		CLR.W $000A00A0		
*		
*	*CLR.L
*		CLR.L D2
*		CLR.L D3
*		CLR.L (A0)
*		CLR.L (A1)
*		CLR.L -(A2)
*		CLR.L -(A3)
*		CLR.L (A2)+
*		CLR.L (A3)+
*		CLR.L $6910
*		CLR.L $02A2
*		CLR.L $A1942BE4
*		CLR.L $000A00A0
*		
*	*AND.B	
*		AND.B D0,D7
*		AND.B D1,D6
*		AND.B D2,D5
*		AND.B D3,D4
*
*		AND.B (A1),D0
*		AND.B (A2),D1
*		AND.B (A3),D2
*		AND.B (A4),D3
*		
*		AND.B (A1)+,D4
*		AND.B (A2)+,D5
*		AND.B (A3)+,D6
*		AND.B (A4)+,D7
*		
*		AND.B -(A1),D0
*		AND.B -(A2),D1
*		AND.B -(A3),D2
*		AND.B -(A4),D3
*		
*		AND.B	$1020,D0
*		AND.B	$1800,D1
*		AND.B	$FFFF8500,D2
*		AND.B	$FFFFA200,D3
*		
*		AND.B	$0000A030,D4
*		AND.B	$00031810,D5
*		AND.B	$FFFF2580,D6
*		AND.B	$F0000210,D7
*		
*		AND.B	#$E2,D4
*		AND.B	#$42,D5
*		AND.B	#$F4,D6
*		AND.B	#$CD,D7
*		
*		AND.B	D0,(A0)
*		AND.B	D1,(A1)
*		AND.B	D2,(A2)
*		AND.B	D3,(A3)
*		
*		AND.B	D4,(A4)+
*		AND.B	D5,(A5)+
*		AND.B	D6,(A6)+
*		AND.B	D7,(A7)+
*		
*		AND.B	D4,-(A4)
*		AND.B	D5,-(A5)
*		AND.B	D6,-(A6)
*		AND.B	D7,-(A7)
*
*		AND.B	D0,$1020
*		AND.B	D1,$1800
*		AND.B	D2,$FFFF8500
*		AND.B	D3,$FFFFA200
*		
*		AND.B	D4,$0000A030
*		AND.B	D5,$00031810
*		AND.B	D6,$FFFF2580
*		AND.B	D7,$F0000210		
*
*		
*	*AND.W	
*		AND.W	D0,D7
*		AND.W	D1,D6
*		AND.W	D2,D5
*		AND.W	D3,D4
*		AND.W	D4,D3
*		AND.W	D5,D2
*		AND.W	D6,D1
*		AND.W	D7,D0
*
*		AND.W	(A1),D0
*		AND.W	(A2),D1
*		AND.W	(A3),D2
*		AND.W	(A4),D3
*		
*		AND.W	(A1)+,D4
*		AND.W	(A2)+,D5
*		AND.W	(A3)+,D6
*		AND.W	(A4)+,D7
*		
*		AND.W	-(A1),D0
*		AND.W	-(A2),D1
*		AND.W	-(A3),D2
*		AND.W	-(A4),D3
*		
*		AND.W	$1020,D0
*		AND.W	$1800,D1
*		AND.W	$FFFF8500,D2
*		AND.W	$FFFFA200,D3
*		
*		AND.W	$00AA1030,D4
*		AND.W	$00231810,D5
*		AND.W	$FFFF2580,D6
*		AND.W	$F0000210,D7
*		
*		AND.W	#$12E2,D4
*		AND.W	#$4542,D5
*		AND.W	#$77F4,D6
*		AND.W	#$FFCD,D7		
*		
*		AND.W	D0,(A0)
*		AND.W	D1,(A1)
*		AND.W	D2,(A2)
*		AND.W	D3,(A3)
*
*		AND.W	D4,(A4)+
*		AND.W	D5,(A5)+
*		AND.W	D6,(A6)+
*		AND.W	D7,(A7)+
*		
*		AND.W	D4,-(A4)
*		AND.W	D5,-(A5)
*		AND.W	D6,-(A6)
*		AND.W	D7,-(A7)
*		
*		AND.W	D0,$1020
*		AND.W	D1,$1800
*		AND.W	D2,$FFFF8500
*		AND.W	D3,$FFFFA200
*		
*		AND.W	D4,$0000A030
*		AND.W	D5,$00031810
*		AND.W	D6,$FFFF2580
*		AND.W	D7,$F0000210		
*	
*	
*	*AND.L		
*		AND.L	D0,D7
*		AND.L	D1,D6
*		AND.L	D2,D5
*		AND.L	D3,D4
*		AND.L	D4,D3
*		AND.L	D5,D2
*		AND.L	D6,D1
*		AND.L	D7,D0
*
*		AND.L	(A1),D0
*		AND.L	(A2),D1
*		AND.L	(A3),D2
*		AND.L	(A4),D3
*		
*		AND.L	(A1)+,D4
*		AND.L	(A2)+,D5
*		AND.L	(A3)+,D6
*		AND.L	(A4)+,D7
*		
*		AND.L	-(A1),D0
*		AND.L	-(A2),D1
*		AND.L	-(A3),D2
*		AND.L	-(A4),D3
*		
*		AND.L	$1020,D0
*		AND.L	$1800,D1
*		AND.L	$FFFF8500,D2
*		AND.L	$FFFFA200,D3
*		
*		AND.L	$00AA1030,D4
*		AND.L	$00231810,D5
*		AND.L	$FFFF2580,D6
*		AND.L	$F0000210,D7
*		
*		AND.L	#$001203E2,D4
*		AND.L	#$20042242,D5
*		AND.L	#$12FFFFF4,D6
*		AND.L	#$FFCC23CD,D7
*
*		AND.L	D0,(A0)
*		AND.L	D1,(A1)
*		AND.L	D2,(A2)
*		AND.L	D3,(A3)
*
*		AND.L	D4,(A4)+
*		AND.L	D5,(A5)+
*		AND.L	D6,(A6)+
*		AND.L	D7,(A7)+
*		
*		AND.L	D4,-(A4)
*		AND.L	D5,-(A5)
*		AND.L	D6,-(A6)
*		AND.L	D7,-(A7)
*
*		AND.L	D0,$1020
*		AND.L	D1,$1800
*		AND.L	D2,$FFFF8500
*		AND.L	D3,$FFFFA200
*		
*		AND.L	D4,$0000A030
*		AND.L	D5,$00031810
*		AND.L	D6,$FFFF2580
*		AND.L	D7,$F0000210	
*
*		MOVE.L #$0000126C,(A7)
*		JSR	(A7)
*		*JSR $00001268
*		JSR COME
		
		MOVE.L	D1,D2
		
*data1		DC.B		$FF,$AA,$45,$0A
*data2		DC.B		$00,00,01,00,00,00
*data3		DC.W		$AAAA,$5555,0000,$FFFF
*data4		DC.W		$0000
*		
		
		
COME


	*ADDA.W	
		ADDA.W (A0)+,A2
		ADDA.W (A1)+,A3
		
		ADDA.W -(A0),A2
		ADDA.W -(A1),A3

		ADDA.W D0,A0
		ADDA.W D1,A1
		
		ADDA.W A0,A0
		ADDA.W A1,A1
		
		ADDA.W (A0),A4
		ADDA.W (A1),A5
		
		ADDA.W $2000,A6
		ADDA.W $3000,A7
		
		ADDA.W $00002990,A0
		ADDA.W $FFFF9110,A1
		
		ADDA.W #$001292,A2
		ADDA.W #$0000A920,A3
	
	* NEED SUBA TO ADJUST
		SUBA.W	#$0001,A0
		SUBA.W	#$0001,A1
		SUBA.W	#$0001,A2
		SUBA.W	#$0001,A3	
	
	*ADDA.L	
		ADDA.L (A0)+,A2
		ADDA.L (A1)+,A3
		
		ADDA.L -(A0),A2
		ADDA.L -(A1),A3

		ADDA.L D0,A0
		ADDA.L D1,A1
		
		ADDA.L A0,A0
		ADDA.L A1,A1
		
		ADDA.L (A0),A4
		ADDA.L (A1),A5
		
		ADDA.L $2000,A6
		ADDA.L $3000,A7
	
		ADDA.L $00002990,A0
		ADDA.L $FFFF9110,A1
		
		ADDA.L #$001292,A2
		ADDA.L #$0000A920,A3
	
	* NEED SUBA TO ADJUST
*		SUBA.L	#$00AA0001,A0
*		SUBA.L	#$00AA0001,A1
*		SUBA.L	#$00AA0001,A2
*		SUBA.L	#$00AA0001,A3
*	
	*ADD.B	
		ADD.B D0,D7
		ADD.B D1,D6
		ADD.B D2,D5
		ADD.B D3,D4

		ADD.B (A1),D0
		ADD.B (A2),D1
		ADD.B (A3),D2
		ADD.B (A4),D3
		
		ADD.B (A1)+,D4
		ADD.B (A2)+,D5
		ADD.B (A3)+,D6
		ADD.B (A4)+,D7
		
		ADD.B -(A1),D0
		ADD.B -(A2),D1
		ADD.B -(A3),D2
		ADD.B -(A4),D3
		
		ADD.B	$1020,D0
		ADD.B	$1800,D1
		ADD.B	$FFFF8500,D2
		ADD.B	$FFFFA200,D3
		
		ADD.B	$0000A030,D4
		ADD.B	$00031810,D5
		ADD.B	$FFFF2580,D6
		ADD.B	$F0000210,D7
		
		ADD.B	#$E2,D4
		ADD.B	#$42,D5
		ADD.B	#$F4,D6
		ADD.B	#$CD,D7
		
		ADD.B	D0,(A0)
		ADD.B	D1,(A1)
		ADD.B	D2,(A2)
		ADD.B	D3,(A3)
		
		ADD.B	D4,(A4)+
		ADD.B	D5,(A5)+
		ADD.B	D6,(A6)+
		ADD.B	D7,(A7)+
		
		ADD.B	D4,-(A4)
		ADD.B	D5,-(A5)
		ADD.B	D6,-(A6)
		ADD.B	D7,-(A7)

		ADD.B	D0,$1020
		ADD.B	D1,$1800
		ADD.B	D2,$FFFF8500
		ADD.B	D3,$FFFFA200
		
		ADD.B	D4,$0000A030
		ADD.B	D5,$00031810
		ADD.B	D6,$FFFF2580
		ADD.B	D7,$F0000210		
	
		
		*ADD.W
		
		ADD.W	D0,D7
		ADD.W	D1,D6
		ADD.W	D2,D5
		ADD.W	D3,D4
		ADD.W	D4,D3
		ADD.W	D5,D2
		ADD.W	D6,D1
		ADD.W	D7,D0
		
		ADD.W	A4,D3
		ADD.W	A5,D2
		ADD.W	A6,D1
		ADD.W	A7,D0
		
		ADD.W	(A1),D0
		ADD.W	(A2),D1
		ADD.W	(A3),D2
		ADD.W	(A4),D3
		
		ADD.W	(A1)+,D4
		ADD.W	(A2)+,D5
		ADD.W	(A3)+,D6
		ADD.W	(A4)+,D7
		
		ADD.W	-(A1),D0
		ADD.W	-(A2),D1
		ADD.W	-(A3),D2
		ADD.W	-(A4),D3
		
		ADD.W	$1020,D0
		ADD.W	$1800,D1
		ADD.W	$FFFF8500,D2
		ADD.W	$FFFFA200,D3
		
		ADD.W	$00AA1030,D4
		ADD.W	$00231810,D5
		ADD.W	$FFFF2580,D6
		ADD.W	$F0000210,D7
		
		ADD.W	#$12E2,D4
		ADD.W	#$4542,D5
		ADD.W	#$77F4,D6
		ADD.W	#$FFCD,D7		
		
		ADD.W	D0,(A0)
		ADD.W	D1,(A1)
		ADD.W	D2,(A2)
		ADD.W	D3,(A3)

		ADD.W	D4,(A4)+
		ADD.W	D5,(A5)+
		ADD.W	D6,(A6)+
		ADD.W	D7,(A7)+
		
		ADD.W	D4,-(A4)
		ADD.W	D5,-(A5)
		ADD.W	D6,-(A6)
		ADD.W	D7,-(A7)

		ADD.W	D0,$1020
		ADD.W	D1,$1800
		ADD.W	D2,$FFFF8500
		ADD.W	D3,$FFFFA200
		
		ADD.W	D4,$0000A030
		ADD.W	D5,$00031810
		ADD.W	D6,$FFFF2580
		ADD.W	D7,$F0000210		
		
		
		
		*ADD.L
		
		ADD.L	D0,D7
		ADD.L	D1,D6
		ADD.L	D2,D5
		ADD.L	D3,D4
		ADD.L	D4,D3
		ADD.L	D5,D2
		ADD.L	D6,D1
		ADD.L	D7,D0
		
		ADD.L	A4,D3
		ADD.L	A5,D2
		ADD.L	A6,D1
		ADD.L	A7,D0
		
		ADD.L	(A1),D0
		ADD.L	(A2),D1
		ADD.L	(A3),D2
		ADD.L	(A4),D3
		
		ADD.L	(A1)+,D4
		ADD.L	(A2)+,D5
		ADD.L	(A3)+,D6
		ADD.L	(A4)+,D7
		
		ADD.L	-(A1),D0
		ADD.L	-(A2),D1
		ADD.L	-(A3),D2
		ADD.L	-(A4),D3
		
		ADD.L	$1020,D0
		ADD.L	$1800,D1
		ADD.L	$FFFF8500,D2
		ADD.L	$FFFFA200,D3
		
		ADD.L	$00AA1030,D4
		ADD.L	$00231810,D5
		ADD.L	$FFFF2580,D6
		ADD.L	$F0000210,D7
		
		ADD.L	#$001203E2,D4
		ADD.L	#$20042242,D5
		ADD.L	#$12FFFFF4,D6
		ADD.L	#$FFCC23CD,D7

		ADD.L	D0,(A0)
		ADD.L	D1,(A1)
		ADD.L	D2,(A2)
		ADD.L	D3,(A3)

		ADD.L	D4,(A4)+
		ADD.L	D5,(A5)+
		ADD.L	D6,(A6)+
		ADD.L	D7,(A7)+
		
		ADD.L	D4,-(A4)
		ADD.L	D5,-(A5)
		ADD.L	D6,-(A6)
		ADD.L	D7,-(A7)

		ADD.L	D0,$1020
		ADD.L	D1,$1800
		ADD.L	D2,$FFFF8500
		ADD.L	D3,$FFFFA200
		
		ADD.L	D4,$0000A030
		ADD.L	D5,$00031810
		ADD.L	D6,$FFFF2580
		ADD.L	D7,$F0000210		
		
	*ADDI.B
		ADDI.B	#$22,D0
		ADDI.B	#$A1,D1
		
		ADDI.B	#$45,(A2)
		ADDI.B	#$A5,(A3)
		
		ADDI.B	#$12,(A2)+
		ADDI.B	#$2D,(A3)+
		
		ADDI.B	#$24,-(A2)
		ADDI.B	#$1C,-(A3)
		
		ADDI.B	#$9,$3050
		ADDI.B	#$A2,$1500
		
		ADDI.B	#$20,$002456D2
		ADDI.B	#$10,$00FF23D0
				
		NOP
	*ADDI.W
		ADDI.W	#$2212,D0
		ADDI.W	#$A122,D1
		
		ADDI.W	#$7654,(A2)
		ADDI.W	#$5AA5,(A3)
		
		ADDI.W	#$1212,(A2)+
		ADDI.W	#$2D2D,(A3)+
		
		ADDI.W	#$2423,-(A2)
		ADDI.W	#$1C56,-(A3)
		
		ADDI.W	#$2419,$3050
		ADDI.W	#$77A2,$1500
		
		ADDI.W	#$1220,$002456D2
		ADDI.W	#$CC10,$00FF23D0

	*ADDI.L
		ADDI.L	#$FF232212,D0
		ADDI.L	#$0024AA6A,D1
		
		ADDI.L	#$0000000A,(A2)
		ADDI.L	#$0A2412A5,(A3)
		
		ADDI.L	#$12348812,(A2)+
		ADDI.L	#$55552D00,(A3)+
		
		ADDI.L	#$AAAA2423,-(A2)
		ADDI.L	#$00000C56,-(A3)
		
		ADDI.L	#$0048ABCE,$3330
		ADDI.L	#$000000A2,$1520
		
		ADDI.L	#$98731220,$002456D2
		ADDI.L	#$7777CC10,$00FF23D0
	

		RTS
		NOP

add_start	ADDI.W	#$4E71,D1
		ADDQ.L	#07,D7		
		ADDA.L	-(SP),A2
		ADDA.W	(A6)+,A3
		ADDA.L	#$3000AAAA,A6
		ADDI.L	#$D50000AA,D5
		ADDI.W	#$5555,D6
		ADDI.B	#$FE,D0
		
* Group is random data

*data7		DC.B		$FF,$AA,$45,$0A
*data8		DC.B		$00,00,01,00,00,00
*data9		DC.W		$AAAA,$5555,0000,$FFFF

* This is an illegal instruction, MOVE.B    #$0F,A6

* illegal		DC.W		$1C7C,$000F

* Move instructions

moves		MOVE.B	D0,D1
		MOVE.W	A6,$F30045BB
		MOVE.L	D0,D0
		MOVE.L	D7,(A6)+
		MOVE.W	#$FFD0,(A3)
		MOVE.L	$C00022AA,$3000A0F8
		MOVE.L	A0,-(A5)
		MOVEA.W	(A6),A0
		MOVEM.W	A0/A1/A2/D5/D6/D7,$3A(A6,D4.L)
		MOVEM.L	(A0)+,D0/D1/D2/A4/A3/A0/A1
*		MOVEA.L	#$AAAA00AA,A2
		
* Divide and multiple optional instructions

ands		AND.B	#$01,$4568
		AND.L	$8000A000,D3
shifts		LSL.B	D0,D0
		LSL.W	#4,D0
		LSL.W	(A2)+
		ASR.B	D6,D7
rolls		ROL.L	D2,D3
		ROR.L	#4,D6

clear		CLR.B	D4
load_addr	LEA	$DC00FF00,A2
		LEA	(A5),A4
		LEA	(ands,PC),A3
		LEA	-$20(A2,D7),A2

* random data	
*		DC.W	2949,0411,2848

compares	CMP.B	(A3),D5
		CMP.L	$ABC0FF00,D2
*		CMPA.W	D2,A4
* Branches	
		

* Jump and branch instructions

*jmplabel	BSR	compares	* BSR long test
*		BSR	rolls	        * BSR short test	
		JSR	(A3)		* Address register indirect
*		BSR	multiply
		*BSR	$7000
		BCC	clear		
		BGT	compares		
		BLE	multiply	

		
		
		
*These are not required instructions
multiply	MULS	D0,D3		*Optional instruction
		MULS	(A6),D0		*Optional instruction
		MULS	#$4567,D1	*Optional instruction
		DIVU	(A3)+,D5	*Optional instruction
		NOP
		NOP
		SUB.L	#$00000055,D4
		SUB.L	#$FFFFFFEE,D7
	

		END	start
		BRA	GOTOEND
* Put variables and constants here
CLEAR_REGISTER
		CLR	D0
		CLR	D1
		CLR	D2
		CLR	D3
		CLR	D4
		CLR	D5
		CLR	D6
		CLR	D7
		RTS
GOTOEND
    END    START        ; last line of source





















*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
