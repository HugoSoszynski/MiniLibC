BITS 64

section .text

global	strstr


strstr:
	xor rax, rax
	xor r11, r11

.loupe:
	cmp byte[rdi + r11], 0
	jz .equesite_faillelure
	xor r10, r10
	mov r8, r11

.la_chenille_qui_redemarre:
	cmp byte[rsi + r10], 0
	jz .equesite_suquecesse
	mov al, byte[rsi + r10]
	cmp al, byte[rdi + r8]
	jnz .innecrise_la_variable
	inc r10
	inc r8
	jmp .la_chenille_qui_redemarre

.innecrise_la_variable:
	inc r11
	jmp .loupe

.equesite_suquecesse:
	mov rax, rdi
	add rax, r11
	ret

.equesite_faillelure:
	xor rax, rax
	ret
