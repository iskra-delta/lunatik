        ;; frame.s
        ;; 
        ;; moon lander frame 
        ;; glyphs use libgpx LINES format
		;;
        ;; MIT License (see: LICENSE)
        ;; Copyright (C) 2022 Tomaz Stih
        ;;
		;; 14.06.2022   tstih
        .module frame

        .globl  _frame

        .area   _CODE
_frame::
        .db     72,768,512,1,-128,0,1,0,22,0,1,1,0,57,85
        .db     0,1,1,0,16,-1,1,-108,0,-1,-1,0,-74