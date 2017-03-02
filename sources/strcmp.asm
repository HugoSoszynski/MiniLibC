	section .text

	global	strcmp


stcmp:
	xor rax, rax

.loop:
	mov rax, [rdi]
	sub rax, [rsi]
	cmp rax, byte 0
	jnz .exit
	cmp [rdi], byte 0
	jz  .exit
	cmp [rsi], byte 0
	jz  .exit
	inc rdi
	inc rsi
	jmp .loop

.exit:
	ret
