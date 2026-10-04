
;Md. Tanvir Ahemd Rafi (JSTU CSE'4th)

INCLUDE 'EMU8086.INC'
.MODEL SMALL          
.STACK 200H

.DATA
    ;Store all varialble
    ;BH BL .. 8 bit Reg  1byte
    ;BX AX .. 16 bit reg 1 word
    
    myAnd DB ?
    myOR DB ?
    myXOR DB ?

    

    

.CODE
    ;CODE Segment

    MAIN PROC ;INT MAIN
        ;STATEMENT...
        ;Statement... 
        
        
        
        ;if use Data segment
        ;MOV AX , @DATA
        ;MOV DS, AX
        
        
        
        
        
        
        MOV BL , 1011B
        MOV BH , 1011B
        
        
        ;or
        MOV myOR, BL
        OR myOR, BH        
        Print "OR IS: "
        MOV AH , 2
        MOV DL , myOR
        INT 21H
        Printn
        
        
        


        ;and
        MOV myAND, BL
        AND myAND, BH        
        Print "AND IS: "
        MOV AH , 2
        MOV DL , myAND
        INT 21H
        Printn        
       
       
        



        ;XOR
        MOV myXOR, BL
        XOR myXOR, BH        
        Print "XOR IS: "
        MOV AH , 2
        MOV DL , myXOR
        INT 21H
        Printn
        
        
        
        
        
        
        
        
        
                
        
        ;RET 0
        MOV AH , 4CH
        INT 21H
    MAIN ENDP        
END MAIN ;EXIT(0) 






; CMP COMPARED TO COMPARED WITH
; CMP BX, CX: MEANING IS BX > OR < CX OR ==
; JE/JZ Jump Equal or Jump Zero ZF
; JNE/JNZ Jump not Equal or Jump Not Zero ZF
; JG/ JNLE Jump Greater or Jump Not Less/Equal OF, SF, ZF
; JGE/JNL Jump Greater/Equal or Jump Not Less SF
; JL/ JNGE Jump Less or Jump Not Greater/Equal SF
; JLE/ JNG Jump Less/Equal or Jump Not Greater OF, SF, ZF
; JE/JZ Jump Equal or Jump Zero ZF
; JNE/JNZ Jump not Equal or Jump Not Zero ZF
; JA/ JNBE Jump Above or Jump Not Below/Equal CF. ZF
; JAE/JNB Jump Above/Equal or Jump Not Below CF
; JB/ JNAE Jump Below or Jump Not Above/Equal CF
; JBE/JNA Jump Below/Equal or Jump Not Above AF, CF
; JXCZ Jump if CX is Zero none
; JC Jump If Carry CF
; JNC Jump If No Carry CF
; JO Jump If Overflow OF
; JNO Jump If No Overflow OF
; JP/ JPE Jump Parity or Jump Parity Even PF
; JNP /JPO Jump No Parity or Jump Parity Odd PF
; JS Jump Sign (negative value) SF
; JNS Jump No Sign (positive value) SF