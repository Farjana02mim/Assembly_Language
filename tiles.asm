ORG 100H

MOV AX,20
MOV BX,20
MUL BX         

MOV CX,AX     


MOV AX,2
MOV BX,2
MUL BX          

MOV BX,AX      
MOV AX,CX       
MOV DX,0
DIV BX          


MOV AH,4CH
INT 21H