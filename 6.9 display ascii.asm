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
    
    mov cx, 128
    mov bl, 80h
    mov bh, 0
    
print_loop:
    mov ah, 2
    mov dl, bl
    int 21h
    
    mov dl, ' '
    int 21h
    
    inc bl
    inc bh
    
    cmp bh, 10
    jne continue_loop
    
    mov ah, 2
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h
    
    mov bh, 0
    
continue_loop:
    loop print_loop
    
    mov ax, 4c00h
    int 21h    

main endp

define_print_num
define_print_num_uns

end main









