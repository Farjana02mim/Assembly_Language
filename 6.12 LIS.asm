;Md. Tanvir Ahmed Rafi
;JSTU CSE 4th (2021-22)
;ID: 22111128

include 'emu8086.inc'

.model small
.stack 100h

.data
    max_len db 0
    max_end db 0
    cur_len db 0
    prev_ch db 0

.code
main proc
    mov ax, @data
    mov ds, ax
    
    printn "ENTER A STRING OF CAPITAL LETTERS: "
    
read_loop:
    mov ah, 1
    int 21h
    
    cmp al, 0Dh
    je end_loop
    
    cmp cur_len, 0
    jne check_seq
    
    mov cur_len, 1
    mov prev_ch, al
    jmp read_loop
    
check_seq:
    mov bl, prev_ch
    inc bl
    
    cmp al, bl
    je consecutive
    
    mov bl, cur_len
    cmp bl, max_len
    jle reset
    
    mov max_len, bl
    mov bl, prev_ch
    mov max_end, bl
    
reset:
    mov cur_len, 1
    mov prev_ch, al
    jmp read_loop
    
consecutive:
    inc cur_len
    mov prev_ch, al
    jmp read_loop
    
end_loop:
    mov bl, cur_len
    cmp bl, max_len
    jle show_result
    
    mov max_len, bl
    mov bl, prev_ch
    mov max_end, bl
    
show_result:
    printn
    printn "THE LONGEST CONSECUTIVELY INCREASING STRING IS: "
    
    cmp max_len, 0
    je exit
    
    ; Math trick: Start Letter = End Letter - Length + 1
    mov dl, max_end
    sub dl, max_len
    inc dl
    
    mov cl, max_len
    mov ch, 0
    
print_seq:
    mov ah, 2
    int 21h
    inc dl
    loop print_seq
    
    
    
exit:
    printn
    mov ax, 4c00h
    int 21h    

main endp


define_print_num
define_print_num_uns



end main











