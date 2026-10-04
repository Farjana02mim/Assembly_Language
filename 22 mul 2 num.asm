include 'emu8086.inc'
.model small
.stack 100h
.data
   msg db 'Hello, World!$'
   ;chr db ?
   
   n1 db ?
   n2 db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    print msg
    
    mov ah , 1
    int 21h    
    sub al , 48
    mov n1 , al        
    printn
    
    ;
    mov ah , 1
    int 21h    
    sub al , 48
    mov n2 , al        
    printn
        
        
    mov al, n1
    mul n2
    
    mov dl , al
    add dl , 48
    
    
    mov ah, 2
    int 21h
        
    
    exit:
    ; Exit the program
    mov ax, 4Ch
    int 21h
main endp
end main