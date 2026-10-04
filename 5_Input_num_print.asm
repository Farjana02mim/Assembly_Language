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
        
        
        
        
        ;input A num:
        MOV AH , 1 ; for inp
        INT 21H    ;it's Termina and input store in AL register
        

        

      
        ;new line
        ;MOV AH, 2
        ;MOV DL , 0AH
        ;INT 21H
        ;MOV DL , 0DH
        ;INT 21H 
        
        
        
        
        MOV AH , 2 ;For Output
        MOV DL , AL
        INT 21H
        
    
        
        
        
        
        
        
        ;RET 0
        MOV AH , 4CH
        INT 21H
    MAIN ENDP        
END MAIN ;EXIT(0)