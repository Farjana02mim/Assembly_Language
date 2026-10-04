.MODEL SMALL
.STACK 100H

.DATA
    NUM DB 9

    EVEN_MSG DB 'Number is EVEN$'
    ODD_MSG  DB 'Number is ODD$'

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    MOV AL, NUM       

    AND AL, 01H      

    JZ EVEN          

ODD:
    LEA DX, ODD_MSG
    MOV AH, 09H
    INT 21H
    JMP EXIT

EVEN:
    LEA DX, EVEN_MSG
    MOV AH, 09H
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN