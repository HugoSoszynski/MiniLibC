BITS 64

section .text

	global read

read:
	mov rax, 2
	syscall

exit:
	ret
