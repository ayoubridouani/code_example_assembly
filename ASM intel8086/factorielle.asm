data segment
    n dw 6 
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
    mov cx,ax
    mov bx,cx     
    
    sss:
   
        sub bx,1 
        
        cmp bx,0
        je multi
            mul bx
        multi: 
                
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