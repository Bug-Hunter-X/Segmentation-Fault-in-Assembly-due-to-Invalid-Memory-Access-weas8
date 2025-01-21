section .data
array dd 1, 2, 3, 4, 5
array_size equ $-array ; Calculate size of array

section .bss
;Reserve space for result
result resd 1

section .text
    global _start

_start:
    mov ecx, 2 ; index of element to access
    cmp ecx, array_size ;Check bounds
jge error_handling ;if out of bounds go to error handling
    mov eax, [array + ecx*4] ;Access element at index
    mov [result], eax ;Store result
    jmp exit

error_handling:
    ;Handle the out-of-bounds access appropriately
    ;Example: Exit with error code
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80

exit:
    ;Normal exit
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80