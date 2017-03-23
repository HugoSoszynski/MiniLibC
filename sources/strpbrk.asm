BITS 64

section .text

global	strpbrk


strpbrk:
	xor rax, rax
	xor r11, r11

.loop:
	cmp byte[rdi + r11], 0
	jz .exit_failure
	xor r10, r10
	
.hudada:
	cmp byte[rsi + r10], 0
	jz .inc
	mov al, byte[rsi + r10]
	cmp al, byte[rdi + r11]
	jz .exit_success
	inc r10
	jmp .hudada

.inc:
	inc r11
	jmp .loop

.exit_success:
	mov rax, rdi
	add rax, r11
	ret

.exit_failure:
	xor rax, rax
	ret
