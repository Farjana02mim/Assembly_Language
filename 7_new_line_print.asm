

INCLUDE 'IMU8086.INC'
.MODEL SMALL          
.STACK 200H

.DATA
    ;Store all varialble
    ;BH BL .. 8 bit Reg  1byte
    ;BX AX .. 16 bit reg 1 word
    

    

.CODE
    ;CODE Segment

    MAIN PROC ;INT MAIN
        ;STATEMENT...
        ;Statement...
        

        ;PRINT "AMI TANVIR "
        
        
        
        ;RET 0
        MOV AH , 4CH
        INT 21H
    MAIN ENDP        
END MAIN ;EXIT(0)