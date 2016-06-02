*-----------------------------------------------------------
* Title      : EQU_Data
* Written by : Samuel Williams, Ko Fukushima, Damian Banki
* Date       : 5/12/16
* Description: A file to hold all of our data stored with EQU
*-----------------------------------------------------------


* these are for input
MAX_USER_INPUT  EQU 8 

* .....      

example          EQU     %0000011000000110

example1         EQU     %1101111001100001    * I made up bits 0 to 11      

shift            EQU     12                   * Shift 12 bits 

mode_dn          EQU     %000

mode_an          EQU     %001

mode_ian         EQU     %010

mode_pian        EQU     %011

mode_pdan        EQU     %100

mode_awd         EQU     %101

mode_awi         EQU     %110

mode_pcwd        EQU     %111

xn_pcwd          EQU     %010

mode_pcwi        EQU     %111

xn_pcwi          EQU     %011

mode_as          EQU     %111

xn_as            EQU     %000

mode_al          EQU     %111

xn_al            EQU     %001

mode_id          EQU     %111

xn_id            EQU     %100

size_byte        EQU     %00

size_word        EQU     %01

size_long        EQU     %11

direction_right  EQU     %0

direction_left   EQU     %1

ro_immedate      EQU     %0

ro_register      EQU     %1

mode_m_dn        EQU     %0

mode_m_pdan      EQU     %1

outputCountMax   EQU     31

outputCountCurr  EQU     0
          
CR  EQU $0D

LF  EQU $0A






*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
