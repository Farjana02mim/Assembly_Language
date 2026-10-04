
;Md. Tanvir Ahemd Rafi (JSTU CSE'4th)

INCLUDE 'EMU8086.INC'
.MODEL SMALL          
.STACK 200H

.DATA
    ;Store all varialble
    ;BH BL .. 8 bit Reg  1byte
    ;BX AX .. 16 bit reg 1 word    
    ;myVar DB ?


    

    

.CODE
    ;CODE Segment

    MAIN PROC ;INT MAIN
        ;STATEMENT...
        ;Statement... 
        
        
        
        ;if use Data segment
        ;MOV AX , @DATA
        ;MOV DS, AX
        
        
        printn "main funtion"
        
        call my_func
        
        printn "main funtion end!"
        
        

        
        

        
        
        
                
        
        ;RET 0
        MOV AH , 4CH
        INT 21H
    MAIN ENDP
    
    
    
    my_func proc
        
      mov ax , 3
      mov bx, 5
      
      mul bx
      
      
      print "MULIPLY IS: "
      mov ah, 2
      mov DL, bl
      int 21h

      
      printn
      ret  
        
    my_func endp
    
    
    
    
    
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