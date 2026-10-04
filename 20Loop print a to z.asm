include 'emu8086.inc'
.model small
.stack 100h
.data
msg db 'Hello, World!$'
n1 db ?
n2 db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Print the message
    ;mov dx, offset msg
    ;mov ah, 09h
    ;int 21h
    
    
    mov ah, 1
    int 21h
    mov n1 , al
    ;sub n1, 48
    
    printn
    
    mov al , 1
    int 21h
    mov n2 , al
    ;sub n1, 48
    
    printn
    
    
    mov bl , n1
    mov bh , n2
    
    
    cmp bl,bh
    jg num1
    je n1n2
    jl num2
    
    
    num1:
    print "the big num1 is "
    mov dl, n1
    mov ah , 2
    int 21h
    printn
    jmp exiti
    
    
    




    num2:
    print "the big num2 is "
    mov dl, n2
    mov ah , 2    
    int 21h
    printn
    jmp exiti
    
    
    
    
    n1n2:
    printn "Both number is Equal "
    jmp exiti    
    
    
        
    
    exiti:
    
    
    

    ; Exit the program
    mov ax, 4Ch
    int 21h
main endp
end main