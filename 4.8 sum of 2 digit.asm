include 'emu8086.inc'
.model small
.stack 100h


.data

msg dw  "Hello Rafi$"

  let db ?
  s db ?


.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    printn '?'
    
    
    
    mov ah , 1
    int 21h


    
    mov s, al
    sub s, 48
    
    
    printn
    
    
    
    mov ah , 1
    int 21h
    
    add s, al
    
    
    printn
    
    mov dl , s
    mov ah ,2
    int 21h    
    
        
    


mov ax, 4ch
int 21h    
main endp





end main


