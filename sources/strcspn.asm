BITS 64

section .text

	global strcspn

strcspn:
	xor rax, rax
	xor r11, r11

.loop:
	cmp byte[rdi, r11], 0
	jz .exit
	xor r8, r8
	mov r9b, byte[rdi + r11]

.reject:
	cmp byte[rsi + r8], r9b
	jz .exit
	cmp byte[rsi + r8], 0
	jz .not_in
	inc r8
	jmp .reject

.not_in:
	inc rax
	inc r11
	jmp .loop

.exit:
	ret
