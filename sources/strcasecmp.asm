BITS 64

section .text

global	strcasecmp


strcasecmp:
	xor rax, rax
	xor r11, r11
	jmp .loop

.inc:
	inc r11

.loop:
	cmp byte[rdi + r11], 0
	jz  .exit_success
	cmp byte[rsi + r11], 0
	jz  .exit_success
	mov al, byte[rdi + r11]
	sub al, byte[rsi + r11]
	cmp al, 0
	jz .inc
	cmp al, 32
	jz .inc
	cmp al, -32
	jz .inc

.exit_failure:
	movsx rax, al
	ret

.exit_success:
	xor rax, rax
	ret
