;Md. Tanvir Ahmed Rafi
;JSTU CSE 4th (2021-22)
;ID: 22111128

include 'emu8086.inc'

.model small
.stack 100h

.data
    xs db 'XXXXX$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 5
    mov ah, 1
    
read_loop:
    int 21h
    loop read_loop
    
    mov ah, 2
    mov dl, 0Dh
    int 21h
    
    lea dx, xs
    mov ah, 9
    int 21h

    mov ax, 4c00h
    int 21h    

main endp

define_print_num
define_print_num_uns

end main


