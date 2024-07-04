section .data
    string db "Hola %d", 0x0A, 0

section .text
    global main
    extern printf

main:
    push    ebp
    mov     ebp, esp

    push    dword [ebp + 8]
    push    string
    call    printf
 
    mov     esp, ebp
    pop     ebp
    ret
