include 'emu8086.inc'

.model small
.stack 100h

.data
    ; No variables needed!

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; 1. Take Input
    print "ENTER 1, 2, 3, OR 4: "
    mov ah, 1
    int 21h         ; Read a character from keyboard, it goes into AL
    
    printn          ; Print a newline
    
    ; --------------------------------------------------
    ; --- Logic for Example 6.5 ---
    
    ; Check if AL contains '1' or '3'
    CMP AL, '1'
    JE  DISPLAY_O   ; If AL == '1', jump to DISPLAY_O
    CMP AL, '3'
    JE  DISPLAY_O   ; If AL == '3', jump to DISPLAY_O
    
    ; Check if AL contains '2' or '4'
    CMP AL, '2'
    JE  DISPLAY_E   ; If AL == '2', jump to DISPLAY_E
    CMP AL, '4'
    JE  DISPLAY_E   ; If AL == '4', jump to DISPLAY_E
    
    ; If the user typed something else entirely, just exit
    JMP DONE
    
DISPLAY_O:
    mov ah, 2       ; Setup for printing a single character
    mov dl, 'o'     ; Load 'o' into DL
    int 21h         ; Print it
    JMP DONE        ; Jump to the end so we don't accidentally print 'e' too

DISPLAY_E:
    mov ah, 2       ; Setup for printing a single character
    mov dl, 'e'     ; Load 'e' into DL
    int 21h         ; Print it
    
DONE:
    ; --- End of Logic ---
    ; --------------------------------------------------

    ; Exit safely
    mov ax, 4c00h
    int 21h    

main endp
end main