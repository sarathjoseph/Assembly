global _start


section .text


_start:
	
	call func
	
	mov eax, 1; exit sys call
	mov ebx, 0; exit code
	int 0x80
	

func:
	push ebp        ; push bp onto stack to save previous bp state
	mov ebp, esp    ; save stack pointer state (this contains the value of the instruction pointer ie next instruction after func call returns)
	
	sub esp, 2
	mov [esp]  , byte 'H'
	mov [esp+1], byte 'I'

	mov eax, 4 ; write sys call
	mov ebx, 1 ; std out fd
	mov ecx, esp; pointer to start loc for write
	mov edx, 4; num of bytes to write
	int 0x80 ; sys call interrupt
	
	mov esp, ebp   ; restore stack pointer 
	pop ebp        ; restore base pointer
	ret            ; pops stack pointer to eax and does a jump to address contained in eax
