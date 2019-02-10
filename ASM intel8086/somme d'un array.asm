size_array EQU 5

.MODEL small

data segment 
    msg db 'la somme de cette array est : $'
    array db 5,4,7,2,10
data ends

code segment
     assume cs:code,ds:data  
    start1:     
     mov ax,data
     mov ds,ax
     mov dx,offset msg
     mov ah,09h
     int 21h  
    
    start2:
     mov ax,0
     mov bx,0
     mov cx,0
     mov dx,0 
     mov DI,0
     
     mov cx,size_array
     
     sss:
      mov al,array[DI]
      add bl,al
      inc DI   
     loop sss

     
  
  
  
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

code ends