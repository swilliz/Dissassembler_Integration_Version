*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $7000
 BEGIN:                  ; first instruction of program

		DIVU.W D0,D1
		DIVU.W D2,D3
		
		DIVU.W (A1),D1
		DIVU.W (A2),D3
		
		DIVU.W (A1)+,D5
		DIVU.W (A2)+,D6
		
		DIVU.W -(A1),D5
		DIVU.W -(A2),D6
		
		DIVU.W $500,D0
		DIVU.W $200,D2
		
		DIVU.W $A204,D0
		DIVU.W $FFFF5000,D2
	
		DIVU.W #$50,D0
		DIVU.W #$700,D2

				
    
*JSR_TEST
    
    
* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    BEGIN        ; last line of source




















*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
