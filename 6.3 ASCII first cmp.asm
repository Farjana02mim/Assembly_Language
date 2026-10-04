include 'emu8086.inc'

.model small
.stack 100h

.data
    

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    
    print "ENTER 2 char: "
    
    
    mov ah, 1
    int 21h
    mov bl, al
    
    printn
    
    mov ah, 1
    int 21h
    
    printn
    
    
    cmp al,bl
    jle go1
    jg go2
    
    
    go1:
     mov dl , al
     mov ah, 2
     int 21h
    jmp exit
   
    
    
    go2:
        mov dl,bl
        mov ah, 2
        int 21h
    jmp exit
    
    
    
  exit:  
    

main endp

; We must declare these at the bottom to use the emu8086 I/O functions
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end main