;Md. Tanvir Ahmed Rafi
;JSTU CSE 4th (2021-22)
;ID: 22111128

include 'emu8086.inc'

.model small
.stack 200h

.data
sum dw ?

 
 
 
 
.code
main proc
    mov ax, @data
    mov ds, ax
    
    ;1+5+9...
    mov bX, 1d
    mov cx,49d
    mov dx , 0d
            
    
    for:
    add bx , 4d
    add dx, bx
    loop for
    
    mov sum , dx
    

    
    
    
    
    printn "SUM : " 
    MOV ax , sum
    call print_num
    


exit:
    mov ax, 4ch
    int 21h    

main endp


define_print_num
define_print_num_uns


end main