include 'emu8086.inc'

.model small
.stack 100h

.data
    ; No variables needed!

.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    
    print "Enter a charecter: "
    
    mov ah ,1
    int 21h
    
    printn
    
    
    cmp al,'A'
    JGE ck1
    JL no
    
    
    ck1:
    cmp al, 'Z'
    JLE ck2
    JG no
    
    
    
    ck2:
    
    print "The Letter is Capitel: "
    mov DL , AL
    mov ah, 2
    int 21h
    jmp done
    
    
    no:
      print "The Letter is Samll or Othes: "
      jmp done
      
    
    done:
    


    ; Exit safely
    mov ax, 4c00h
    int 21h    

main endp
end main