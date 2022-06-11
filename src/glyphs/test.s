        .module test

        .area   _CODE
_test::
        ;; ascii 33: '!'
        .db 32                  ; class(bits 5-7)
        .db 0                   ; width
        .db 15                  ; height
        .db 7                   ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)