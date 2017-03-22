BITS 64

section .text

global	strcmp


strcmp:
	xor rax, rax
	xor r11, r11

.loop:
	mov al, byte[rdi + r11]
	cmp al, byte[rsi + r11]
	jnz .exit
	cmp byte[rdi + r11], 0
	jz  .exit
	cmp byte[rsi + r11], 0
	jz  .exit
	inc r11
	jmp .loop

.exit:
	sub al, byte[rsi + r11]
	movsx rax, al
	ret
