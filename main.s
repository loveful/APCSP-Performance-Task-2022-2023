global main
extern printf
extern scanf

section .data
	board	db "   A   B   C   D   E   F   G   H", 0xa,
		db "  _________________________________", 0xa,
		db "8 | ♜ | ♞ | ♝ | ♛ | ♚ | ♝ | ♞ | ♜ |", 0xa,
		db "  |___|___|___|___|___|___|___|___|", 0xa,
		db "7 | ♟ | ♟ | ♟ | ♟ | ♟ | ♟ | ♟ | ♟ |", 0xa,
		db "  |___|___|___|___|___|___|___|___|", 0xa,
		db "6 |   |   |   |   |   |   |   |   |", 0xa,
		db "  |___|___|___|___|___|___|___|___|", 0xa,
		db "5 |   |   |   |   |   |   |   |   |", 0xa,
		db "  |___|___|___|___|___|___|___|___|", 0xa,
		db "4 |   |   |   |   |   |   |   |   |", 0xa,
		db "  |___|___|___|___|___|___|___|___|", 0xa,
		db "3 |   |   |   |   |   |   |   |   |", 0xa,
		db "  |___|___|___|___|___|___|___|___|", 0xa,
		db "2 | ♙ | ♙ | ♙ | ♙ | ♙ | ♙ | ♙ | ♙ |", 0xa,
		db "  |___|___|___|___|___|___|___|___|", 0xa,
		db "1 | ♖ | ♘ | ♗ | ♕ | ♔ | ♗ | ♘ | ♖ |", 0xa,
		db "  |___|___|___|___|___|___|___|___|", 0xa, 0x0

		input_buf		db 64		      ; Reserve 64 bytes for the input buffer
		move_prompt		db "Move Input: ", 0  ; Reserves a move prompt string

section .text

get_input:
	mov rdi, move_prompt			; Set the address of the move prompt
	mov rax, 0				; Clear the rax register
	call printf				; Print the move prompt

	mov rdi, input_buf			; Set the destination address for scanf
	mov rax, 0				; Clear the rax register
	call scanf				; Read in the user's input
	ret

main:
	mov rdi, board
	mov rax, 0
	call printf
	call get_input
	mov rax, 0
	ret
