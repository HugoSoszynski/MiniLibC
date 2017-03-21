	section .text

	global	strcmp


stcmp:
	xor rax, rax
	jmp .loop

.inc:
	inc rdi
	inc rsi

.loop:
	mov rax, [rdi]
	sub rax, [rsi]
	cmp rax, byte 0
	jz .inc
	cmp rax, byte 32
	jz .inc
	cmp rax, byte -32
	jz .inc
	cmp [rdi], byte 0
	jz  .exit
	cmp [rsi], byte 0
	jz  .exit

.exit:
	ret
