org 07c00h

jmp _start

_start:
    mov ax, cs
    mov ds, ax
    mov es, ax
    call DispStr
    jmp $

DispStr:
    mov ax, BootMessage
    mov bp, ax
    mov cx, StrLen
    mov ax, 01301h
    mov bx, 000ch
    mov dl, 0
    int 10h
    ret

BootMessage: db "Hello, ToyOs!"
StrLen: equ $ - BootMessage

times 510-($-$$) db 0
dw 0xAA55
