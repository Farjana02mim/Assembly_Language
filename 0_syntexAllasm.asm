include 'emu8086.inc'
.model small
.stack 100h
.data

msg dw "HELLO World!$"
var dw ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    printn "YOU Type: "
    LEA dx, msg
    mov ah , 9
    int 21h   
    printn
      
    call scan_num
    mov var, cx 
    
    printn "finished"  

    mov ax  , cx
    call print_num

    printn
    
    for:
        cmp al , 0Dh ;or use ' ' for space
        je ex
        
        mov ah, 1
        int 21h
     jmp for
     
     
   mov dl , 7
   mov ah , 2
   int 21h
      
   ex:
   mov ah, 4ch
   int 21h 
    
main endp

define_scan_num
define_print_num
define_print_num_uns
end main




