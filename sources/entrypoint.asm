BITS 64

section .interp

	asm_start_lib db `/lib64/ld-linux-x86-64.so.2`, 0

section .data

message:	db "Alcoolemie Aigue en contexte festif !", 10, 0

len:		equ $-message


section .text

global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, message
	mov rdx, len
	syscall

	mov rax, 60
	xor rdi, rdi
	syscall
