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
    
    
    
    mov ax , 50d
    mov bx , 5d
    
    div bx
    
    mov cx, ax
    call print_num
    


    mov ax, 4ch
    int 21h    

main endp

define_print_num
define_print_num_uns

end main


