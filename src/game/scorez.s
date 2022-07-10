		;; scorez.s
        ;; 
        ;; (signed) integer to ascii for games
        ;; inlcudes leading zeros
		;;
        ;; based on code from
        ;;  http://map.grauw.nl/sources/external/z80bits.html#5.1
        ;;
        ;; MIT License (see: LICENSE)
        ;; copyright (c) 2022 tomaz stih
        ;;
		;; 10.07.2022    tstih
        .module scorez

        .globl  _scorez

        .area   _CODE
        ;; ----------------------------
        ;; char *scorez(int i, char *a)
        ;; ----------------------------
_scorez:
        pop     bc                      ; ret address
        pop     hl                      ; int
        pop     de                      ; string
        ;; restore stack
        push    de
        push    hl
        push    bc
        ;; store the original string address
        push    de
        ;; check if hl is negative
        ld      a,h
        and     #0b10000000             ; check sign
        jr      z,scz_sgn_done          ; done
        ld      a,#'-'
        ld      (de),a
        inc     de
scz_sgn_done:
        ;; hl=abs(hl)
        call    absraw
        ;; and convert
        ld      bc,#-10000
        call    scz_sub10x
        ld      bc,#-1000
        call    scz_sub10x
        ld      bc,#-100
        call    scz_sub10x
        ld      c,#-10
        call    scz_sub10x
        ld      c,b
        call    scz_sub10x
        ;; zero terminate string
        xor     a
        ld      (de),a
        ;; restore original string pointer
        pop     hl
        ret
scz_sub10x:
        ld      a,#('0'-1)
scz_sub:
        inc     a
        add     hl,bc
        jr      c,scz_sub
        sbc     hl,bc
        ld      (de),a
        inc     de
        ret