BITS 64

section .text

	global write

write:
	mov rax, 1
	syscall

exit:
	ret
