global ft_strcmp

ft_strcmp :
    mov rax, 0

comp :
    mov dl, byte[rdi + rax]     ; met s1 dans tmp
    cmp dl, 0                   ; "cmp" : change ZF à 1 si vraie, compare s1 à zéro
    je end                      ; "j" fait un saut si la condition est vrai, "e" = equal
    mov dh, byte[rsi + rax]     ; met s2 dans tmp
    cmp dh, 0                   ; change ZF à 1 si vraie, compare s2 à zero
    je end                      ; "j" fait un saut si la condition est vrai, "e" = equal
    cmp dl, dh                  ; compare s1 a s2
    jne end                     ; "j" fait un saut si la condition est vrai, "ne" = not equal
    inc rax                     ; sinon incrementer l'index
    jmp comp                    ; "jmp" saut qui ne depend pas d'une condition

end :
    sub dl, dh
    movsx rax, dl
    ret