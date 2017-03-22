BITS 64

section .text

global	strncmp


strncmp:
	xor rax, rax
	xor r11, r11
	sub rdx, 1

.loop:
	mov al, byte[rdi + r11]
	cmp al, byte[rsi + r11]
	jnz .exit
	cmp byte[rdi + r11], 0
	jz  .exit
	cmp byte[rsi + r11], 0
	jz  .exit
	cmp r11, rdx
	jz .exit
	inc r11
	jmp .loop

.exit:
	sub al, byte[rsi + r11]
	movsx rax, al
	ret
