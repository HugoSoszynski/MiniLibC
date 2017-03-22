BITS 64

section .text

global	strcasecmp


strcasecmp:
	xor rax, rax
	xor r11, r11
	xor rdx, rdx
	jmp .loop

.inc:
	inc r11

.loop:
	cmp byte[rdi + r11], 0
	jz  .exit_success
	cmp byte[rsi + r11], 0
	jz  .exit_success
	mov al, byte[rdi + r11]
	mov dl, byte[rsi + r11]
	cmp al, 'A'
	jl  .lower1
	cmp al, 'Z'
	jg  .lower1
	add al, 32
	
.lower1:
	cmp dl, 'A'
        jl  .lower
        cmp dl, 'Z'
        jg  .lower
        add dl, 32

.lower:
	sub al, dl
	cmp al, 0
	jz .inc

.exit_failure:
	movsx rax, al
	ret

.exit_success:
	xor rax, rax
	ret
