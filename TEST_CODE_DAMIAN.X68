*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $7000
 BEGIN:                  ; first instruction of program

  *  MOVE.B    #3, D2
    
    *NOP  
    
    CLR.B D0
    CLR.W D0
    CLR.L D0

    CLR.B D1
    CLR.W D1
    CLR.L D1
    
    CLR.B (A0)
    CLR.W (A0)
    CLR.L (A0)

    CLR.B (A0)+
    CLR.W (A0)+
    CLR.L (A0)+    
    *JSR JSR_TEST    
    *RTS
    
*JSR_TEST
    
    
* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    BEGIN        ; last line of source











*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
