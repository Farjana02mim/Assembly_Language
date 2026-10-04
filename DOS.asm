.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    MOV DL, 'A'     
    MOV AH, 02H      
    INT 21H         

    MOV AH, 4CH    
    INT 21H

MAIN ENDP
END MAIN