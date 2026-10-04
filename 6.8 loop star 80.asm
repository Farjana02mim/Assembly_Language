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
    
    
    
    mov cx , 80
    for:
        print "*"
    loop for
    

    ; Exit safely
    mov ax, 4c00h
    int 21h    

main endp
end main