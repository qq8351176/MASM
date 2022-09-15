assume cs:codesg
codesg segment
start: mov ax,2000h
mov ds,ax
mov bx,0
s:mov cx,[bx]
jcxz ok
inc bx
inc bx
jmp short s
ok:mov dx,bx
mov ax,4c00h
int 21h
codesg ends
end start

; jcxz 如果cx 等于 0 则转移到标号出执行代码
; 如果 cx != 0 什么也不做(程序向下执行)