global _start


section .text
_start:

	mov ebx, 0
	mov ecx, 9; // Sum of first N numbers N=9
	
loop_begin:
	cmp ecx, 0
	je loop_end
	add ebx, ecx
	dec ecx
	jg loop_begin
	
loop_end:
	mov eax, 1
	int 0x80
