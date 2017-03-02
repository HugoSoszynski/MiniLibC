	section .text

	global strlen

strlen:
	xor rax, rax

.loop:
	cmp [rdi], byte 0
	jz exit
	inc rax
	inc rdi
	jmp .loop

exit:
	ret
