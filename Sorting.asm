.model small
.stack 100h
.data
     arr dw 1,4,3,2,5,9,8,7,6,10,19,18,17,16,15,14,13,12,20,11
     
.code
     mov ax,@data
     mov ds,ax
     
     mov ax,0 
     mov dl,0
     mov cx,19
     
outer:
      mov di,offset arr
      mov dh,19          ;Outer Loop
      sub dh,dl

inner:
      mov ax,[di]        
      cmp ax,[di+2]
      jg move 
      jmp label
      
move:
      mov bx,[di+2]      
      xchg ax,[di+2]     ;Exchange
      xchg [di],bx       ;Exchange 
      
label:
      add di,2            ;Inner Loop inc
      dec dh              ;Dec for every Iteration
      cmp dh,0            ;
      jne inner
      
      inc dl              ;outer loop++
      loop outer
           
.exit
     
     
     
     
     
     
     