.model small
.stack 100h
.data
msg db 'hello world$'

.code
mov ax,@data
mov ds,ax
Mov ax,0xb800
Mov es,ax
Mov si,2000
MOV ah,2
XOR bH,BH
MOV DX, 0C27h
int 10h
mov ah,01101011b
mov bx,offset msg
l:
mov al,ds:[bx]
 cmp al,'$'
    je endd
Mov  es:[si],ax
    add si,2
    inc bx
   
    jmp l
    
    
    endd:
.exit