BITS 64

section .text

	global rindex

rindex:
	xor rax, rax
	xor r11, r11

.loop:
	cmp byte[rdi + r11], sil
	jnz .not_equal
	mov rax, r11

.not_equal:
	cmp byte[rdi + r11], 0
	jz .exit
	inc r11
	jmp .loop

.exit:
	add rax, rdi
	ret
