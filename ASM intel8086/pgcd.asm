data segment
   n dw 120
   m dw 90
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
    mov bx,m
    mov cx,0
    mov dx,0
    
    cmp ax,bx
    
    jb change  
    
        mov n,bx
        mov m,ax
        
        change:
    
    mov ax,n
    mov cx,n 
    
    sss: 
        mov dx,0
        mov ax,n
        mov bx,cx
        sub bx,1
        div bx
        cmp dx,0
        jne equal
            
            mov ax,m
            mov bx,cx 
            sub bx,1
            div bx
            cmp dx,0
            jne equa
                
                
                      mov ax,bx
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
                
                
                hlt
                
            equa:
            
        equal:
        
    loop sss
    
    
code ends

     
  
