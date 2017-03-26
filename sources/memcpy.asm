BITS 64

section .text

	global memcpy

memcpy:
	mov rax, rdi
	xor r11, r11
	xor r8, r8

.loop:
	cmp r11, rdx
	jz .exit
	mov r8b, byte[rsi + r11]
	mov byte[rdi + r11], r8b
	inc r11
	jmp .loop

.exit:
	ret
