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
    
    
    
    
    
    mov dl , 'A'
    mov cx, 80
    mov ah, 2
            
    
    for:
    int 21h
    printn
    loop for
    

    

    

    


exit:
    mov ax, 4ch
    int 21h    

main endp


define_print_num
define_print_num_uns


end main