BITS 16
ORG 0x0

welcome:	db "TRAITORS !", 13, 10, 0

init_seg:
	mov ax, 0x07C0 		;amorçage du bios
	mov ds, ax
	mov es, ax
	mov ax, 0x8000		;on set le début de la stack
	mov ss, ax
	mov sp, 0xf000		;on set la fin de la stack

	mov si, welcome
	call write		;on va au label write

_end:
	jmp _end

write:
	push ax
	push bx

.start:
	lodsb			;on load dans al les caractère compris dans ds:si
	cmp al, 0		;on verifie la fin de la chaîne
	jz .end
	mov ah, 0x0E
	mov bx, 0x07
	int 0x10		;syscall du bios
	jmp .start		;on boucle

.end:
	pop bx
	pop ax
	ret


	times 510-($-$$) db 144
    	dw 0xAA55
