;Md. Tanvir Ahmed Rafi
;JSTU CSE 4th (2021-22)
;ID: 22111128

include 'emu8086.inc'

.model small
.stack 100h

.data
sum1 dw ?
sum2 dw ? 
 
 
 
 
.code
main proc
    mov ax, @data
    mov ds, ax
    
    ;1+4+7...+148
    ;n = (l-a)/d +1
    mov bx, 0d
    mov cx,1d
            
    for1:
    cmp cx , 148d
    jg ck1
    add bx, cx
    add cx, 3d
    jmp for1
    
    
    ck1:
    mov sum1 , bx
    
    
    ;100+95+90...+5
    mov bx, 0d
    mov cx,5d
            
    for2:
    cmp cx , 100d
    jg ck2
    add bx, cx
    add cx, 5d
    jmp for2
    
        
    
    ck2:
    mov sum2 , bx
    
    
    
    
    
    printn "SUM of Both: " 
    MOV AX, sum1
    call print_num
    printn
    MOV ax , sum2
    call print_num
    


exit:
    mov ax, 4ch
    int 21h    

main endp


define_print_num
define_print_num_uns


end main