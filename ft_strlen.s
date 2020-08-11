global  ft_strlen

ft_strlen :
    mov rax, 0

count :
    cmp byte[rdi + rax], 0          ; "cmp" affecte le drapeux ZF a 1 si rdi = 0, Preciser "byte" car on charge directement une valeur
    je end                          ; "j" fait un saut si la condition est vrai, "e" = equal
    inc rax                         ; incrementer l'index rax
    jmp count                       ; "jmp" saut qui ne depend pas d'une condition

end :
    ret