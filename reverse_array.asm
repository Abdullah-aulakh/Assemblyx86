.model small
.stack 100h
.data   
     A db 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
     B db dup(0h)
     
.code

     mov ax,@data
     mov ds,ax
     
     mov bx,offset A
     mov si,offset B
     mov cx,20
     
reverse:
        mov al,[bx]
        inc bx
        
        mov [si+19],al
        dec si
        
        loop reverse
        
   
     
.exit