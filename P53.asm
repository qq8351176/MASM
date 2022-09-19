assume cs:code
data segment
    db 'conversation'
data ends
code segment
start:
    mov ax,data
    mov ds,ax
    mov si,0
    call capital
    mov ax,4c00h
    int 21h
capital:
    mov cl,[si]
    mov ch,0
    jcxz ok
    and byte ptr [si],11011111b
    inc si
    jmp short capital
  ok:ret
code ends
end start 

; 子程序标准框架:
; 子程序开始 子程序的标准的框架 子程序中使用的寄存器入栈
; 子程序内容
; 子程序使用的寄存器出栈
; 返回 ret retf
; ret指令用栈中的数据，修改ip的内容，从而实现近转移；
; retf指令用栈中的数据，修改cs和ip的内容，从而实现远转移