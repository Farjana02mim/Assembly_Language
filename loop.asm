
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

ORG 100H

MOV AX,0      
MOV BX,1      
MOV CX,10     

L1:
    ADD AX,BX
    INC BX
    LOOP L1


MOV AH,4CH
INT 21H




