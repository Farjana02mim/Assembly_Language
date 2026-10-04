include 'emu8086.inc'
.model small
.stack 100h
.data
msg db 'Hello, World!$'
   chr db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov ah , 1
    int 21h
    
    
    mov chr , al
    sub ch , 32
    
    
    printn
    
    mov ah ,2
    mov dl, chr
    int 21h
        
    
    exit:
    ; Exit the program
    mov ax, 4Ch
    int 21h
main endp
end main