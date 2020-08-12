global ft_strcmp

ft_strcmp :
    mov rax, 0

comp :
    mov dl, byte[rdi + rax]
    cmp dl, 0                   ; change ZF à 1 si vraie, compare s2 à zéro
    je end                      ; "j" fait un saut si la condition est vrai, "e" = equal
    cmp byte[rsi + rax], dl     ; change ZF à 1 si vraie, compare s1 à s2
    jne end                     ; "j" fait un saut si la condition est vrai, "ne" = not equal
    inc rax                     ; sinon incrementer l'index
    jmp comp                    ; "jmp" saut qui ne depend pas d'une condition

end :
    sub dl, byte[rsi]
    movsx rax, dl
    ret