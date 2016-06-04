*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $7000
 BEGIN:                  ; first instruction of program
    NOP
    *	*LEA
        BRA CLEAR_REGISTER
		LEA	(A0),A1
		LEA	(A2),A3
		LEA	$00006500,A4
		LEA	$1010,A5
		LEA	$0000AA02,A6
		LEA	$FFFF2102,A7
		CLR.B	D4
		MOVEM.L D0-D7,(A0)
		MOVEM.L A0-A7,(A0)
		MOVEM.L A0-A3/D0-D7,(A0)
		MOVEM.L A0-A3/D0-D2,(A0)
		MOVEM.L A4-A7/D0-D1,(A0)
		MOVEM.L A0/A3/D2/D5,(A0)
		MOVEM.L D1/D5/D7,(A0)	
		BRA  MOVES
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
		
MOVES
		MOVE.B	D0,D1
		MOVE.W	A6,$F30045BB
		MOVE.L	D0,D0
		MOVE.L	D7,(A6)+
		MOVE.W	#$FFD0,(A3)
		MOVE.L	$C00022AA,$3000A0F8
		MOVE.L	A0,-(A5)
		MOVEA.W	(A6),A0
		MOVEM.W	A0/A1/A2/D5/D6/D7,$3A(A6,D4.L)
		MOVEM.L	(A0)+,D0/D1/D2/A4/A3/A0/A1
        RTS
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    BEGIN        ; last line of source





















*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
