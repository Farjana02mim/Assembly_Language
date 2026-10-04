include 'emu8086.inc'
.model small
.stack 100h


.data

msg dw  "Hello Rafi$"





.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    
    
    mov dx, offset msg
    mov AH, 09h
    int 21H
    
    print    
        
    


mov ax, 4ch
int 21h    
main endp





end main


