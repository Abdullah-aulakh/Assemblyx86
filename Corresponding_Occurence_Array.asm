;This Program count occurence of a number and stores them onto another on corresponding index

.model small
.stack 100h
.data
     A dw 1,2,3,4,5,6,7,8,9,10,11,12,13,13,14,15,16,17,17,17
     B dw 20 dup(0h)
     
.code
     mov ax,@data
     mov ds,ax
     
     mov bx,offset A
     mov si,offset B
     
     mov cx,20
     
loop1:
      mov ax,[bx]
      mov dh,20 
      mov di,offset A
      
loop2:
      cmp ax,[di]
      JE equal
      JMP last
      
equal:
      inc [si]
      
last:
     add di,2
     dec dh
     JNZ loop2      
      
      
     add bx,2
     add si,2
     
     loop loop1

.exit