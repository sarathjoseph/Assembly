global _start


section .text
_start:
	sub esp, 4 ; allocate space on the stack 4bytes
	
	mov [esp]  , byte 'P'
	mov [esp+1], byte 'I'
	mov [esp+2], byte 'N'
	mov [esp+3], byte 'G'
	
	mov eax, 4 ; write sys call
	mov ebx, 1 ; std out fd
	mov ecx, esp; pointer to start loc for write
	mov edx, 4; num of bytes to write
	
	int 0x80 ; sys call interrupt
	
	mov eax, 1; exit sys call
	mov ebx, 0; exit code
	int 0x80
