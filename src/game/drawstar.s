		;; drawstar.s
        ;; 
        ;; draw single star
		;;
        ;; MIT License (see: LICENSE)
        ;; copyright (c) 2022 tomaz stih
        ;;
		;; 14.06.2022    tstih
		.module drawstar

        .globl  _drawstar

        .area	_CODE
        ;; --------------------------------------------------
		;; void drawstar(g_t *g, coord x, coord y, int layer)
        ;; --------------------------------------------------
        ;; places star at x,y
_drawstar:
        ld      iy,#4
        add     iy,sp
        ld      l,(iy)
        ld      h,1(iy)
        ld      e,2(iy)
        ld      d,3(iy)
        ;; go to position
        call    gdp_set_xy
        ;; and draw...
        ld      a,4(iy)                 ; layer to a
        cp      #0                      ; 0?
        jr      z,ds_l0
        cp      #1
        jr      z,ds_l1
        jr      ds_l2plus
ds_l2plus:
        ld      a,#0b10100000
        call    gdp_exec_cmd
        ld      a,#0b10001100
        call    gdp_exec_cmd
        ld      a,#0b10100110
        call    gdp_exec_cmd
        ret
ds_l1:
        ld      a,#0b11000000
        call    gdp_exec_cmd
        ld      a,#0b10101011
        call    gdp_exec_cmd
        ld      a,#0b10010100
        call    gdp_exec_cmd
        ret
ds_l0:
        ld      a,#0b11010001
        call    gdp_exec_cmd
        ld      a,#0b11010101
        call    gdp_exec_cmd
        ld      a,#0b11010111
        call    gdp_exec_cmd
        ld      a,#0b11010011
        call    gdp_exec_cmd
        ld      a,#0b11100000
        call    gdp_exec_cmd
        ld      a,#0b10101011
        call    gdp_exec_cmd
        ld      a,#0b10010100
        call    gdp_exec_cmd
		ret