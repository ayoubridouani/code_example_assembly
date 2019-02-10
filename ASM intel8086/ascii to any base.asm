

code segment
start:
    mov ax,500
    mov bx,10
    mov cx,0
    for:
    cmp ax,0
    je boucle
    mov dx,0 
    div bx
    push dx
    inc cx 
    
   jnz for
   
   
    boucle:
    mov cx,cx
    pop dx 
    add dx,48
    mov ah,02
    int 21h
     
    loop boucle
    
   endf: 
    mov ax, 4c00h 
    int 21h    
ends

end start
