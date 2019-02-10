data segment
    n dw 3
    m dw 3 
data ends  

stack segment
    dw   128  dup(0)
ends

code segment
    
        assume cs:code,ds:data
  start:
    mov ax,data
    mov ds,ax
    
    mov ax,n
    mov cx,m 
    dec cx
    mov bx,n     
    
    sss: 
    
       mul bl
                
    loop sss
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

code ends