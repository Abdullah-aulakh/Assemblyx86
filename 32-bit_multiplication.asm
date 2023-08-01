.model small

.stack 100h

.data
     num1 db 2Eh,0F0h,0A1h,0C0h
     num2 db 98h,03h,54h,1fh
     num3 db 8 dup(0h)
     
.code
     mov ax,@data
     mov ds,ax
     
     lea si,num1
     lea di,num2
     lea bx,num3
     mov cx,2
    
    
    ;solving this multiplication using PQSR method
    ;let P=F02EH
    ;let Q=C0A1
    ;let R=0398h
    ;let S=1F54H
  
     
     
     ;this loop is perfomring P*S and Q*R
     ;Genrating a 64 bit number with some values
     outer:
    
     mov ax,[si]
     mov dx,[di]
     
     mul dx
     mov [bx],ax
     mov [bx+2],dx
     add bx,4
     add si,2
     add di,2
           
     loop outer
     
     
                ;Reloading addresses
     lea si,num1
     lea di,num2
     lea bx,num3
      
      mov ax,[si]
      mov dx,[di+2]
      mul dx            ;P*S
    
        add ax,[bx+2]
        adc dx,[bx+4]
        mov [bx+2],ax
        mov [bx+4],dx   ;Adding missing terms
     
     
                   ;Reloading addresses
     lea si,num1
     lea di,num2
     lea bx,num3
      
      mov ax,[si+2]
      mov dx,[di]
      mul dx          ;Q*R
     
     add ax,[bx+2]
     adc dx,[bx+4]
     mov [bx+2],ax
     mov [bx+4],dx  ;Adding missing terms
     





.exit