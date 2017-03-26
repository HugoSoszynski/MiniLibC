BITS 64

section .text

	global memset

memset:
	mov rax, rdi
	xor r11, r11

.loop:
	cmp r11, rdx
	jz .exit
	mov byte[rdi + r11], sil
	inc r11
	jmp .loop

.exit:
	ret
