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
    
    mov ah, 1
    int 21h
    
    cmp al, 'A'
    je case_A
    
    cmp al, 'B'
    je case_B
    
    jmp exit

case_A:
    mov ah, 2
    mov dl, 0Dh
    int 21h
    jmp exit

case_B:
    mov ah, 2
    mov dl, 0Ah
    int 21h

exit:
    mov ax, 4c00h
    int 21h    

main endp
end main