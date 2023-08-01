.model small


.stack 100h
.data
variable dw 19765
.code    

mov ax,@data
mov ds,ax


mov di,offset variable
mov ax, [di] ; Load number into the ax register
mov bx,16

    mov cx, 0 ;initializing counter
    mov dx, 0 

digit:
    div bx
    add dx,30h  ;Adjusting ascii
    cmp dx,39h ; Comparing the digit to '9'
    jle store ; If the digit is less than or equal to '9', it is a decimal digit and can be printed
    ;Else
    add dx, 7 ; Otherwise, add 7 to the ASCII value to get the ASCII value of the hexadecimal letter

store:
    push dx
    inc cx
    mov dx,0;Clearing dx for remainder
    cmp ax,0 ; if the quotient is 0 exit loop
    jne digit ; else repeat the loop
     
     
   print:
    pop dx ; Popping the number from the stack
    mov ah,02
    int 21h
    loop print
     
     
   
   
     


.exit