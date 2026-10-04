.MODEL SMALL          
.STACK 200H

.DATA
    ;Store all varialble
    ;BH BL .. 8 bit Reg  1byte
    ;BX AX .. 16 bit reg 1 word
    
    
    n1 DB ?
    n2 DB ?
    ans DB ?
    

.CODE
    ;CODE Segment

    MAIN PROC ;INT MAIN
        ;STATEMENT...
        ;Statement...
        
        
        
        
        ;input A num:
        MOV AH , 1
        INT 21H
        
        
        MOV n1 , AL     ;acumulator  to var
        SUB n1 , 48     ;suntruct 48 from var
        
        
        
        INT 21H    ;input again
        MOV  n2 , AL
        SUB n2,48
         
                   
        
        
        ;addition oparation
        MOV BH , n1
        ADD BH , n2
        ADD BH , 48
        MOV ans , BH;
           
      
        ;new line
        MOV AH, 2
        MOV DL , 0AH
        INT 21H
        MOV DL , 0DH
        INT 21H
        
        
        
        
        MOV DL , ans
        INT 21H        
        
        
        
        
        
        
        ;RET 0
        MOV AH , 4CH
        INT 21H
    MAIN ENDP
    
    
END MAIN ;EXIT(0)