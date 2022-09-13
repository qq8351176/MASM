; JMP学习
;jmp 无条件的转移 只修改IP 同时修改cs和ip
;jmp 2000:1000 段间转移 远转移
;段内短转移 jmp short 标号 ip修改范围 -128 ~127 8位
;段内近转移 jmp near ptr 标号 标号的修改范围位 -32768 ` 32767 16位的转移
assume cs:codesg
codesg segment
start:mov ax,0
jmp short s
add ax,1
s:inc ax
codesg ends
end start