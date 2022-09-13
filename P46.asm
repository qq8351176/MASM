; offset 获取段所在的地址
assume cs:codesg
codesg segment
s:mov ax,bx
mov si,offset s
mov di,offset s0

mov ax,cs:[si]
mov cs:[di],ax

so:nop
nop

codesg ends
ends
;nop的机器码占一个字节 起占位的作用