def ROM_HEADER_ADDRESS      equ $0100
def ROM_MAIN_ADDRESS        equ $0150

section "header", rom0[ROM_HEADER_ADDRESS]
    di
    jr main

section "main", rom0[ROM_MAIN_ADDRESS]
main:
    ld a, 0
    .loop
        ld [$C000], a
        inc a
        jr .loop
        

