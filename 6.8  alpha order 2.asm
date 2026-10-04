;Md. Tanvir Ahmed Rafi
;JSTU CSE 4th (2021-22)
;ID: 22111128

include 'emu8086.inc'

.model small
.stack 100h

.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 2
    mov dl, '?'
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    int 21h
    mov cl, al
    
    mov ah, 2
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h
    
    cmp bl, cl
    jle print_chars
    
    xchg bl, cl

print_chars:
    mov ah, 2
    mov dl, bl
    int 21h
    
    mov dl, cl
    int 21h
    
    mov ax, 4c00h
    int 21h    

main endp

define_print_num
define_print_num_uns

end main







