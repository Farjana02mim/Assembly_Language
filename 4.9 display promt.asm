include 'emu8086.inc'
.model small
.stack 100h


.data

msg dw  "I'm Md. Tanvir Ahmed Rafi. JSTU CSE4th $"

  let db ?
  
  c1 db ?
  c2 db ?
  c3 db ?


.code
main proc
    
    mov ax, @data
    mov ds, ax
    

    print "ENTER THREE INITIALS: "
    
    mov ah , 1
    int 21h
    mov c1 , al    
    
    
    
    mov ah , 1
    int 21h
    mov c2 , al    
    
    
    
    mov ah , 1
    int 21h
    mov c3 , al    
       
    
    
    
    printn
    
    mov DL , c1
    mov ah ,2
    int 21h
    printn    
    
        
    mov DL , c2
    mov ah ,2
    int 21h
    printn 
    
    
    mov DL , c3
    mov ah ,2
    int 21h
    printn         


mov ax, 4ch
int 21h    
main endp





end main


