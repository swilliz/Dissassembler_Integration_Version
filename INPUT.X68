*-----------------------------------------------------------
* Title      : Disaasembly 
* Written by : Ko Fukushima, Sam Williams, Damian Banki
* Date       : 4/24/2016
* Description: 
*-----------------------------------------------------------
    * I/O 
START_OF_PROGRAM    
    * Welcome message
        LEA WELCOME_MESSAGE, A1
        MOVE.B #14, D0
        TRAP #15
        
STARTING_MESSAGE    
    * Printing out the Starting address message
        LEA STARTING, A1
        MOVE.B #14, D0
        TRAP #15
    
    * Code for input
        MOVEA.L #$200, A1 *we have to change this addr later
        MOVE.B #2, D0
        TRAP #15
        MOVE.B #MAX_USER_INPUT, D2
    
    * JSR to convert string function
        JSR CONVERT_STRING   
    * check if the address is even number
        ROR #1, D4   * C now holds 0 (if even) or 1 (if odd)
        BCS STARTING_MESSAGE   *if carry is set then the user typed in an odd address
        ROL #1, D4     *PUT D4 BACK
       
    * store hex value of inputted string 
        MOVE.L D4, STARTING_ADDR 
    * reset the D4
        CLR.L  D4
        
ENDING_MESSAGE
    * message user to input
        LEA ENDING, A1   
        MOVE.B #14, D0
        TRAP #15
    * read user input
        MOVEA.L #$200, A1 *we have to change this addr later
        MOVE.B #2, D0   
        TRAP #15
    * counter for loop
        MOVE.B #MAX_USER_INPUT, D2   
    * JSR to convert string function
        JSR CONVERT_STRING 
        
    * check if the address is even number
        ROR #1, D4   * C now holds 0 (if even) or 1 (if odd)
        BCS ENDING_MESSAGE   *if carry is set then the user typed in an odd address
        ROL #1, D4     *PUT D4 BACK        
        
    * Check if the starting and ending address is the same
       ; CMP.L #STARTING_ADDR, D4
       * MOVE.L #STARTING_ADDR, D5
        MOVE.L STARTING_ADDR, D6
        CMP.L  D6, D4
        BLE   ENDING_MESSAGE
    * store hex value of inputted string   
        MOVE.L D4, ENDING_ADDR   
        
    * clear the unused data in the data and address regisgter
        CLR.L D0
        CLR.L D4
        
        * Do error handling here Sam
        
        JMP GO_THROUGH_MEMORY
    
    * Get each char
CONVERT_STRING 
        MOVE.B (A1)+, D1
    
    * Go to next instruction for converting
        CMP.B #$39, D1
        BLE NUMBER
        
        CMP.B #$3A, D1
        BGE CHAR   
    
    * Convert Ascii numbers to hex
NUMBER  
        CMP.B #$2F, D1
    * Number is out of range
        BLE ERROR       
        SUB.B #48, D1
        
    * Need to be changed the name of label
        BRA STORE_ADDR    
    
    * Convert Ascii charaters to hex
CHAR    
        CMP #$40, D1
    * Number is out of range
        BLE ERROR
        
        CMP #$47, D1
    * Number is out of range
        BGE ERROR
        
        SUB.B #55, D1
        BRA STORE_ADDR
        
STORE_ADDR
    * Add converted nibble to overall number
        ADD.B D1, D4
    * Clear D1 for reuse 
        CLR.B D1
    * Subtract from counter
        SUB #1, D2
    * If counter is 0, we compared all 8 hex numbers
        CMP.B #0, D2
        BEQ ENDCONV
    * Shift the overall number to the left by 1 nibble, so it will fit next hex number
        LSL.L #4, D4
        BRA CONVERT_STRING
        
    * Error handling
ERROR
    LEA   ERROR_MSG, A1 
    MOVE.B #14, D0
    TRAP #15
    JMP   STARTING_MESSAGE

    
ENDCONV * Next instruction starts 
        RTS
       * MOVE.L D4, STARTING_ADDR 
        
GO_THROUGH_MEMORY



























*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
