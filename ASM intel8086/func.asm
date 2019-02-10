data segment

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
   
   mov ax,500
   
afficher_num proc
   
   mov cx,0 
   
   repete:
   mov bx,10
   div bx
   push dx
   inc cx
   cmp ax,0
   jne repete
   
   
   loopa:
    pop dx
    mov ax,dx
    add ax,48
    mov dx,ax
    mov ah,02
    int 21h
   
    loop loopa
    
    
afficher_num endp    

mov ax, 4c00h
int 21h  

ends

end start