.model small

.stack 100h

.data
       
       word db 'racecar$'
       
.code
  
  
     mov ax,@data
     mov ds,ax
     xor ax,ax
     mov bx,0
     size:
     cmp word[bx],'$'
     je exit_loop
     inc bx
     jmp size
     exit_loop:
     
     
     
     
     mov cx,bx
     mov di,bx
     dec di
     push cx
     mov si,offset word
     palindrom:
     mov al,[si]
     mov bl,[di]
     cmp al,bl
     jne again
     inc dh
     again:
     inc si
     dec di
     loop palindrom
      pop cx
     cmp cl,dh
     jne notpalindrom
     mov dl,1
     jmp endd
     notpalindrom:
     mov dl,0
     endd:
     
     
       
   
     
  
  
  
  
  
  
  
  
  

.exit
   