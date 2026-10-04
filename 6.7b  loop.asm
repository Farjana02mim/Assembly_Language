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
    
    mov cx, 80
    mov ah, 1
    
read_loop:
    int 21h
    cmp al, 0Dh ;enter asscii
    je exit
    loop read_loop
    
    
    exit:
    
    mov ax, 4c00h
    int 21h    
main endp

define_print_num
define_print_num_uns

end main



