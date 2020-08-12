global ft_strcpy

ft_strcpy :
    mov rax, 0

copy :
    mov dl, byte[rsi + rax]              ; copie src dans temp
    cmp dl, 0                            ; change ZF 1 si vraie
    je end                               ; "j" fait un saut si la condition est vrai, "e" = equal
    mov byte[rdi + rax], dl              ; copie temp dans dst
    inc rax                              ; incremente l'index
    jmp copy                             ; "jmp" saut qui ne depend pas d'une condition

end :
    mov byte[rdi + rax], 0                ; met /0 dans dst
    mov rax, rdi                          ; copie dst dans rax pour return
    ret
