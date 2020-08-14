section .text
global ft_strcmp

ft_strcmp :
    mov rcx, 0
    mov dl, 0                   ; met dl à zéro pour retour si chaine vide
    mov dh, 0                   ; met dl à zéro pour retour si chaine vide

comp :
    mov dl, byte[rdi + rcx]     ; met s1 dans tmp
    mov dh, byte[rsi + rcx]     ; met s2 dans tmp
    cmp dl, 0                   ; "cmp" : change ZF à 1 si vraie, compare s1 à zéro
    je end                      ; "j" fait un saut si la condition est vrai, "e" = equal
    cmp dh, 0                   ; change ZF à 1 si vraie, compare s2 à zero
    je end                      ; "j" fait un saut si la condition est vrai, "e" = equal
    cmp dl, dh                  ; compare s1 a s2
    jne end                     ; "j" fait un saut si la condition est vrai, "ne" = not equal
    inc rcx                     ; sinon incrementer l'index
    jmp comp                    ; "jmp" saut qui ne depend pas d'une condition

end :
    sub dl, dh
    movsx rax, dl
    ret