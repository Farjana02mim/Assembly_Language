;Md. Tanvir Ahmed Rafi
;JSTU CSE 4th (2021-22)
;ID: 22111128

include 'emu8086.inc'

.model small
.stack 100h

.data
    ; No variables needed for this simple check!

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; 1. Prompt the user and read a character
    print "ENTER A CHARACTER: "
    mov ah, 1
    int 21h         ; The typed character is now stored in the AL register
    
    printn          ; Print a newline to make it look clean
    
    ; --------------------------------------------------
    ; --- Logic for Example 6.7 ---
    
    ; Check for lowercase 'y'
    CMP AL, 'y'
    JE  SHOW_IT     ; If it IS 'y', jump down to SHOW_IT
    
    ; Check for uppercase 'Y'
    CMP AL, 'Y'
    JE  SHOW_IT     ; If it IS 'Y', jump down to SHOW_IT
    
    ; If it is NOT 'y' and NOT 'Y', the code just continues to the next line.
    ; We want to terminate, so we jump straight to the end!
    JMP DONE
    
SHOW_IT:
    print "YOU TYPED: "
    mov ah, 2       ; Setup for printing a single character
    mov dl, al      ; Move the character from AL into DL so it can be printed
    int 21h
    printn

DONE:
    ; --- End of Logic ---
    ; --------------------------------------------------

    ; Exit safely
    mov ax, 4c00h
    int 21h    

main endp
end main