include 'emu8086.inc'
.model small
.stack 100h


.data

msg dw  "Hello Rafi$"

  let db ?



.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    
    mov ah , 1
    int 21h
    
    
    printn
    
    mov let, al
    sub let , 32
    
    
    mov DL , let
    mov AH, 2
    int 21h
    
    
    
    
    
    print    
        
    


mov ax, 4ch
int 21h    
main endp





end main


