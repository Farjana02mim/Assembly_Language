.MODEL SMALL          
.STACK 200H

.DATA
    ;Store all varialble
    ;BH BL .. 8 bit Reg  1byte
    ;BX AX .. 16 bit reg 1 word
    
    NUM1 DB ? ;only declear var
    NUM2 DB 100 ;with assign data var ascci store only 
    NUM3 DB 'd'
    CHAR DB '#'
    STR DB "MY NAME IS RAFI"
    CHAR2 DB ?
    
    
    
    
    
    
    

.CODE
    ;CODE Segment

    MAIN PROC ;INT MAIN
        ;STATEMENT...
        ;Statement...
        
        
        
        ;Data Impoting Dome Data section:
        MOV AX , @DATA
        MOV DS , AX
        
        
        
      
        
        
        
        
        
        
        ;RET 0
        MOV AH , 4CH
        INT 21H
    MAIN ENDP
    
    
END MAIN ;EXIT(0)