; call ret指令
; 此节涉及到c语言的 函数的调用
; 模块化涉及的流程里面 流程转移指令他们通过修改IP 或者同时修改CS+IP
mov ax,0
call segmentmov ax,4c00h
int 21h
s:add ax,1
ret
; CALL指令执行 进行两步操作 将当前的IP 或者CS+IP压入栈中
; 转移到标号处执行指令
; 压入栈中的地址 为call 下一条
; call far ptr 实现的是段间转移



; (sp)=(sp)-2
; (ss)*16+(sp)=(ip)
; (ip)=(ip)+16位位移


; push ip 
; jmp near ptr 标号

; 返回指令 ret ref
; ret : pop ip
; ref : pop ip pop cs