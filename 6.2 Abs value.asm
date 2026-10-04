include 'emu8086.inc'

.model small
.stack 100h

.data
    

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    
    print "ENTER A SIGNED NUMBER (e.g. -25): "
    call scan_num       ; Emu8086 function: reads a number and puts it in the CX register
    mov ax, cx          ; Move the input from CX into the AX register
    
    printn              ; Print a newline
    
    ; 2. Absolute Value Logic using JMP
    cmp ax, 0           ; Compare the number in AX with 0
    jge is_positive     ; JGE (Jump Greater or Equal): If AX >= 0, jump to 'is_positive'
    
    neg ax              ; If we didn't jump, the number is negative. NEG makes it positive.




is_positive:
    ; 3. Print the Result
    print "THE ABSOLUTE VALUE IS: "
    call print_num      ; Emu8086 function: prints whatever number is currently in the AX register
    printn
    
    
    
    

    ; 4. Exit safely
    mov ax, 4c00h
    int 21h    

main endp

; We must declare these at the bottom to use the emu8086 I/O functions
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end main