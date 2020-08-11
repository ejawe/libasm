global ft_strcpy

ft_strcpy :
    mov rax, 0

copy :
    cmp byte[rsi + rax], 0      ; change ZF 1 si vraie
    je end
    mov rdi, rsi
    inc rax
    jmp copy

end :
    mov rdi, 0
    ret
