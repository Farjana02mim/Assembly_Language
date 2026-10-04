include 'emu8086.inc'
.model small
.stack 100h


.data

  msg dw  "I'm Md. Tanvir Ahmed Rafi. JSTU CSE4th $"

  
  hx db ?
  dc db ?



.code
main proc
    
    mov ax, @data
    mov ds, ax
    

    print "ENTER A HEX LETTER (A - F): "
    
    mov ah , 1
    int 21h
    mov hx , al
    sub hx , 17 ; sub for assci 0 will for A
    
    
    
    printn
    mov DL , hx
    
    print "1"
    MOV AH , 2
    INT 21H    
    
 
             
    
        
        


mov ax, 4ch
int 21h    
main endp





end main


