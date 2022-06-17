		;; drawdelta.s
        ;; 
        ;; delta drawing functions!
		;;
        ;; MIT License (see: LICENSE)
        ;; copyright (c) 2022 tomaz stih
        ;;
		;; 17.06.2022    tstih
		.module drawdelta

        .globl  _drawdelta
        .globl  _gotoxy

        .area	_CODE
        ;; --------------------------------------------------
		;; void drawdelta(g_t *g, uint8_t dx, uint8_t dy)
        ;; --------------------------------------------------
        ;; idealised quick draw delta line (from left to right, always!!!)
_drawdelta:
        pop     de                      ; ret addr
        pop     hl                      ; g(ignore)
        pop     bc                      ; c=dx, b=dy                      
        push    bc
        push    hl
        push    de
        ;; check the sign of dy
        xor     a                       ; a=0
        add     b                       ; add dy
        jp      m,dd_negdy              ; is positive?
        ;; due to reverse axis this is good! 
        ld      a,#0b00010101
        jr      dd_testx
dd_negdy:
        ld      a,b
        neg
        ld      b,a
        ld      a,#0b00010001 
dd_testx:
        push    af                      ; store command
        xor     a                       ; a=0
        add     c                       ; add dx
        jp      m,dd_negdx              ; is it positive?
        pop     af
        jr      dd_draw                 ; if positive all is done!
dd_negdx:
        ld      a,c             
        neg
        ld      c,a
        pop     af
        or      #2                      ; set neg bit for x
dd_draw:
        push    af
        call    gdp_set_dxdy            ; move to
        pop     af
        call    gdp_exec_cmd            ; and draw!
        ret

        ;; -------------------------------------
		;; void gotoxy(g_t *g, coord x, coord y)
        ;; -------------------------------------
_gotoxy:
        pop     bc                      ; ret addr
        pop     hl                      ; g (ignore)
        pop     hl                      ; hl=x
        pop     de                      ; de=y
        ;; restore stack
        push    de
        push    hl
        push    hl
        push    bc
        call    gdp_set_xy
        ret