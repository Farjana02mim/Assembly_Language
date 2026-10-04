;Md. Tanvir Ahmed Rafi
;JSTU CSE 4th (2021-22)
;ID: 22111128

include 'emu8086.inc'

.model small
.stack 100h

.data
    ; No variables

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov AX, 10
    mov BX,20
    mov cx, 30
    
    
    cmp AX, BX
    jl ck1
    jge done
    
    
    ck1:
      cmp BX,CX
      jl ck2
      mov BX , 0
      jmp done
      
    
    ck2:
    Mov AX, 0
    jmp done 
    

      
    
    done:
    
    ; Exit safely
    mov ax, 4c00h
    int 21h    

main endp
end main