; 计算2的n次方 计算前 n的值由cx提供
assume cs:codesg
code segment
start:
mov ax,1
mov cx,3
call s
mov bx,ax
mov ax,4c00h
int 21h
s:
add ax,ax
loop s
ret

code ends
end start