; 汇编的双重循环 loop 第一层要记得保存 cx的值
; assume cs:code,ds:data
; data segment
; db 'ibm'
; db 'dec'
; db 'dos'
; db 'vax'
; data ends

; code segment
; start:
; mov ax,data
; mov ds,ax
; mov bx,0
; mov cx,4
; s0:mov dx,cx
; mov si,0
; mov cx,3
; s:mov al,[bx+si]
; and al,11011111hb
; mov [bx+si],al
; inc si
; loop s0
; add bx,16
; mov cx,dx
; loop s0
; code ends
; end start
; 以上的做法存在 缺陷 会占用一个寄存器


; assume cs:code,ds:data
; data segment
; db 'ibm'
; db 'dec'
; db 'dos'
; db 'vax'
; data ends

; code segment
; start:
; mov ax,data
; mov ds,ax
; mov bx,0
; mov cx,4
; s0:mov ds:[40h],cx
; mov si,0
; mov cx,3
; s:mov al,[bx+si]
; and al,11011111hb
; mov [bx+si],al
; inc si
; loop s0
; add bx,16
; mov cx,ds:[40h]
; loop s0
; code ends
; end start
; 以上的做法是用固定的内存空间 保存数据



stacksg segment
    dw 0,0,0,0,0,0,0,0
stacksg ends
; 也可以用用数据结构 利用 push pop 