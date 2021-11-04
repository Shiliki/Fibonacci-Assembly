.386P
.model flat
extern _ExitProcess@4:near

.data

prev	dword	1
curr	dword	1
next	dword	0
count	byte	5

.code
main PROC near
_main:
	
	mov		ebx, prev
	mov		ecx, curr
	mov		edx, next

	add		edx, ebx
	mov		next, edx
	mov		prev, ecx
	mov		curr, edx
	mov		eax, curr
	
	dec		count
	jnz		_main

	push	0
	call	_ExitProcess@4

main ENDP
END