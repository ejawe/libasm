section .text
	global ft_strdup
	extern ft_strlen
	extern ft_strcpy
	extern malloc

ft_strdup:	

	call ft_strlen				; s'exerce sur rdi
	inc rax						; "rax" : stock le retour d'une fonction. inc rax : pour rajouter le \0
	push rdi 					; "push" : permet d'empiler un mot dans la pile. On sauvegarde rdi avant l'appel d'une fonction
	mov	rdi, rax 				; rdi = rax; (car rdi sera utilise par malloc), on alloue nb de bytes
	call malloc					; malloc nb bytes, renvoie une adresse, dans rax
	test rax, rax 				; je test rax, si jz 
	jz return
	pop rdi 					; return mon rdi (ma src) ;je peux pop dans rsi directement
	mov rsi, rdi				; je mets ma src dans rsi, deuxieme arg qui sera appele par strcpy
	mov rdi, rax				; je mets rax, mon adresse, dans rdi pour utilisation dans strcpy come dst, rsi etant ma src
	call ft_strcpy

return:
	ret