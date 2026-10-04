.MODEL SMALL          
.STACK 200H

.DATA
    ;Store all varialble
    ;BH BL .. 8 bit Reg  1byte
    ;BX AX .. 16 bit reg 1 word
    

    

.CODE
    ;CODE Segment

    MAIN PROC ;INT MAIN
        ;STATEMENT...
        ;Statement...
        
        
        
       MOV BL , 53 ;ascci 5
       MOV BH , 55 ;ascci 7
       
       
       XCHG BL, BH
       
       
       ;print
       MOV AH , 2
       MOV DL , BH
       INT 21H
       
       
       MOV AH, 2
       MOV DL,BL
       INT 21H
        
        
        
        
        ;RET 0
        MOV AH , 4CH
        INT 21H
    MAIN ENDP        
END MAIN ;EXIT(0)