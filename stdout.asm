global _start

section .data
	msg db "Hello", 0x0a
	len equ $-msg

section .text
_start:
	mov eax, 4  ; system write call
	mov ebx, 1  ; std out file descriptor
	mov ecx, msg
	mov edx, len
	
	int 0x80
	
	mov eax, 1  
	mov ebx, 42
	int 0x80
	
