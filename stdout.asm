global _start ; export the label so its accessible to the linker

section .data
	msg db "Hello", 0x0a
	len equ $-msg

section .text
_start:
	mov eax, 4  ; system write call code
	mov ebx, 1  ; std out file descriptor
	mov ecx, msg
	mov edx, len
	
	int 0x80    ; interrupt for sys call
	
	mov eax, 1  ; system exit call code
	mov ebx, 42 ; 
	int 0x80    ; interrupt
	
