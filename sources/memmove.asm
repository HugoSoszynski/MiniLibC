BITS 64

section .text

	global memmove

memmove:
	mov rax, rdi
	xor r11, r11
	xor r8, r8

	cmp rdi, rsi
	jge .forward_cpy

	mov r11, rdx

.backward_cpy:
	dec r11
	cmp r11, -1
	jz .exit
	mov r8b, byte[rsi + r11]
	mov byte[rdi + r11], r8b
	jmp .backward_cpy

.forward_cpy:
	cmp r11, rdx
	jz .exit
	mov r8b, byte[rsi + r11]
	mov byte[rdi + r11], r8b
	inc r11
	jmp .forward_cpy

.exit:
	ret
