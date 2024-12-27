mov eax, [ebp+8]
cmp eax, 100 ; Check if the value is within bounds
jge overflow_handler ; Jump to overflow handler if out of bounds
add eax, 1
mov [ebp+8], eax
jmp end
overflow_handler:
; Handle the overflow error
end: