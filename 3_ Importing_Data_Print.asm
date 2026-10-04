.MODEL SMALL          
.STACK 200H

.DATA
    ;Store all varialble
    ;BH BL .. 8 bit Reg  1byte
    ;BX AX .. 16 bit reg 1 word
    
    NUM1 DB ? ;only declear var     and DB is Defaine Byte and DW Is Define Word
    NUM2 DB 50 ;with assign data var ascci store only 
    NUM3 DB 'd'
    CHAR DB '#'
    STR DB "MY NAME IS RAFI$"
    CHAR2 DB ?
    
    
    
    
    
    
    

.CODE
    ;CODE Segment

    MAIN PROC ;INT MAIN
        ;STATEMENT...
        ;Statement...
        
        
        
        ;Data Impoting Dome Data section:
        MOV AX , @DATA
        MOV DS , AX
        
        
        
        ;Num2 print
        MOV AH , 2
        MOV DL , NUM2
        INT 21H
        
        
        
        
        
        
        ;New Line:
        MOV AH, 2
        MOV DL , 0AH
        INT 21H
        MOV DL , 0DH
        INT 21H
        
        
        
        
        
        ;Char print
        MOV AH , 2
        MOV DL , CHAR
        INT 21H 
        
        
        
        
        ;New Line:
        MOV AH, 2
        MOV DL , 0AH
        INT 21H
        MOV DL , 0DH
        INT 21H        
        
        
               
        
        
        
        ;Str print
        MOV AH , 9
        LEA DX , STR
        INT 21H        
      
        
        
        
        
        
        
        ;RET 0
        MOV AH , 4CH
        INT 21H
    MAIN ENDP
    
    
END MAIN ;EXIT(0)