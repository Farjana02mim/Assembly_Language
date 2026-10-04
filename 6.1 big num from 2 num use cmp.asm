include 'emu8086.inc'
.model small
.stack 100h


.data

  msg dw  "I'm Md. Tanvir Ahmed Rafi. JSTU CSE4th $"

  stars dw "**********$"

  

.code
main proc
    
    mov ax, @data
    mov ds, ax
    

    printn "Enter 2 num:  "
    
    
    
    MOV AH , 1
    INT 21H
    MOV BL, AL
    
    printn
    
    MOV AH, 1
    INT 21H
    MOV BH, AL
    
    
    printn 
    
    cmp BL,BH
    JG num1
    JL num2
    JE equal
    
    
    
    
    num1:        
     MOV DL, BL
     MOV AH, 2
     INT 21H
     printn " is Big"
     jmp exit  
    
    num2:        
     MOV DL, BH
     MOV AH, 2
     INT 21H
     printn " is Big"
     jmp exit  
             
    

    equal:        
     printn " BOTH num are equal"
     jmp exit 
     
             
        
  exit:

mov ax, 4ch
int 21h    
main endp





end main


