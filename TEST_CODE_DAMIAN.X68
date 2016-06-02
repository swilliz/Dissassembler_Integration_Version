*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $7000
 BEGIN:                  ; first instruction of program

		LEA	(A0),A1
		LEA	(A2),A3
		LEA	$00006500,A4
		LEA	$1010,A5
		LEA	$0000AA02,A6
		LEA	$FFFF2102,A7
				
    
*JSR_TEST
    
    
* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    BEGIN        ; last line of source



















*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
