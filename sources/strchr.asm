BITS 64

section .text

	global strchr

strchr:
	xor rax, rax
	xor r11, r11

.loop:
	mov al, byte[rdi + r11]
	cmp sil, al
	jz .exit_success
	cmp byte[rdi + r11], 0
	jz .exit_failure
	inc r11
	jmp .loop

.exit_success:
	mov rax, rdi
	add rax, r11
	ret

.exit_failure:
	xor rax, rax
	ret
