	section .text

	global	strcmp


stcmp:
	xor rax, rax
	xor r11, r11

.loop:
	mov rax, [rdi]
	sub rax, [rsi]
	cmp rax, byte 0
	jnz .exit
	cmp [rdi], byte 0
	jz  .exit
	cmp [rsi], byte 0
	jz  .exit
	cmp r11, word rdx
	jz .exit
	inc r11
	inc rdi
	inc rsi
	jmp .loop

.exit:
	ret
