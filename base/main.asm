include "hardware.inc"

;header is at position $0100
section "header", rom0[$0100] 
entrypoint:
    di
    jp main
    ;ds = data store, ($0150 - @), 0 computes the number of times that the value 0
    ;must be stored to fill the header exactly. @ means the current address
    ds ($0150 - @), 0 

section "main", rom0
main:
    call InitSample
    .loop
        call UpdateSample
        jr .loop