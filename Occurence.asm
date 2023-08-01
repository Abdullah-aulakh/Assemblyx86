.model small
.stack 100h

.data
     arr dw 1,2,3,1,5,6,7,8,9,10,11,12,13,14,15,16,17,18,1,1
     
.code

     mov ax,@data
     mov ds,ax
     
     
     mov ax,1             ;find occurence of a number stored in ax
     mov bx,offset arr
     mov cx,20 
     mov dx,0 
     
label:
      cmp ax,[bx]
      JE label2
      jmp label3 
     

          
label2:
       inc dx                 ;dx represents the occurence
       
       
label3:
       add bx,2
      
       loop label
.exit     
     