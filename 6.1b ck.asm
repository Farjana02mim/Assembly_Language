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
    
    cmp AH,0
    jl ck1
    mov AH, 0
    jmp ex
    
    
    ck1:
    mov AH, 0FFh
    jmp ex
    
    
    
     ex:

main endp
end main