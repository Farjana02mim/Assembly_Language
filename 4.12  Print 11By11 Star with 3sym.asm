include 'emu8086.inc'

.model small
.stack 100h

.data
    ; Variables to store the three initials
    c1 db ?
    c2 db ?
    c3 db ?
    
    ; Strings for the 11x11 box (db used instead of dw for strings)
    full_stars db "***********$"   ; 11 asterisks for top and bottom rows
    half_stars db "****$"          ; 4 asterisks for the sides of the initials

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    
    print "?"
    
    ; read three initials
    mov ah, 1
    int 21h
    mov c1, al    
    
    int 21h
    mov c2, al    

    int 21h
    mov c3, al    
    
    printn
    printn
    
    ;(c) display them in the middle of an 11x11 box ---
    
    ; Print Top 5 Rows
    mov cx, 5    
    top_for:
        LEA DX, full_stars
        MOV AH, 9
        INT 21H
        printn
    LOOP top_for
    
    ; Print Middle Row (4 stars + 3 initials + 4 stars)
    LEA DX, half_stars
    MOV AH, 9
    INT 21H
    
    mov ah, 2
    mov dl, c1
    int 21h
    mov dl, c2
    int 21h
    mov dl, c3
    int 21h
    
    LEA DX, half_stars
    MOV AH, 9
    INT 21H
    printn
    
    ; Print Bottom 5 Rows
    mov cx, 5    
    bot_for:
        LEA DX, full_stars
        MOV AH, 9
        INT 21H
        printn
    LOOP bot_for
    
    ; --- (d) beep the computer ---
    ; ASCII 7 is the beep character
    mov ah, 2
    mov dl, 7
    int 21h
    
    

    ; Exit safely
    mov ax, 4c00h
    int 21h    
main endp

end main