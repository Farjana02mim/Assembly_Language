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
    
    print "ENTER A LINE: "
    
    mov cx, 0
    
    mov ah, 1
    int 21h
    
while_loop:
    cmp al, 0Dh
    je end_loop
    
    inc cx
    
    int 21h
    jmp while_loop
    
end_loop:
    printn
    print "TOTAL CHARACTERS: "
    
    mov ax, cx
    call print_num
    
    printn

    mov ax, 4c00h
    int 21h    
main endp

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end main