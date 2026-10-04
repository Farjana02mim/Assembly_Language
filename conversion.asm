.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    ; Input uppercase letter
    MOV AH, 01H
    INT 21H

    ; Convert uppercase to lowercase
    ADD AL, 20H

    ; Display lowercase letter
    MOV DL, AL
    MOV AH, 02H
    INT 21H

    ; Exit
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN