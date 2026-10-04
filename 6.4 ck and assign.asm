include 'emu8086.inc'

.model small
.stack 100h

.data
    ; No variables needed for this logic

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    ; 1. Take Input for AX
    print "ENTER A NUMBER FOR AX (e.g., -5, 0, or 10): "
    call scan_num       ; Reads user input into the CX register
    mov ax, cx          ; Move the input into the AX register
    
    printn              ; Print a newline
    
    ; --------------------------------------------------
    ; --- Logic for Example 6.4 ---
    
    CMP AX, 0           ; Compare the number in AX with 0
    JL  IS_NEGATIVE     ; JL (Jump if Less): If AX < 0, go to IS_NEGATIVE
    JG  IS_POSITIVE     ; JG (Jump if Greater): If AX > 0, go to IS_POSITIVE
    
    ; If the code reaches here, it didn't jump. That means AX must exactly equal 0.
    MOV BX, 0
    JMP DONE            ; We are finished, jump to the end so we don't hit the other blocks
    
IS_NEGATIVE:
    MOV BX, -1
    JMP DONE            ; We are finished, jump to the end

IS_POSITIVE:
    MOV BX, 1
    
DONE:
    ; --- End of Logic ---
    ; --------------------------------------------------

    ; 3. Print the Result stored in BX
    print "THE VALUE PUT INTO BX IS: "
    mov ax, bx          ; Move BX into AX because print_num only prints what is in AX
    call print_num      
    printn

    ; 4. Exit safely
    mov ax, 4c00h
    int 21h    

main endp

; Declare emu8086 I/O functions
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end main