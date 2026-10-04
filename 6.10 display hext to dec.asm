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
    
    
    for:
    
        print "ENTER HEX : "
        mov ah, 1
        int 21h
        
        printn
        print "your decimal is: 1"
        mov dl, al
        sub dl , 17
        mov ah, 2
        int 21h
        
        printn
        print "Try again (y) ?"        
        mov ah, 1
        int 21h
        printn
        
        cmp al,'y'
        je for
        
        
    

    
    mov ax, 4c00h
    int 21h    

main endp

define_print_num
define_print_num_uns

end main









