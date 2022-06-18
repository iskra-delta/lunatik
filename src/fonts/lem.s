        ;;  lem.s
        ;;  
        ;;  lem_font
        ;; 
        ;;  notes: see font.h for format details
        ;;  
        ;;  MIT License (see: LICENSE)
        ;;  copyright(c) 2021 tomaz stih
        ;;  
        ;;  14.06.2022   tstih
        .module lem_font

        .globl _lem_font

        .area _CODE
_lem_font::
        ;; font header
        .db 0                   ; font flags
        .db 15                  ; width (max width for proportional)
        .db 13                  ; height
        .db 65                  ; first ascii
        .db 90                  ; last ascii

        ;; glpyh offsets
        .dw 0x0039, 0x003D, 0x005D, 0x0087, 0x00A9, 0x00B0, 0x00B4, 0x00DA
        .dw 0x010C, 0x0132, 0x0136, 0x013A, 0x016D, 0x01A2, 0x01D2, 0x01D6
        .dw 0x01F8, 0x021C, 0x025A, 0x0281, 0x029D, 0x02BE, 0x02C5, 0x02F0
        .dw 0x02F7, 0x0039

        ;; ascii 65: 'A'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 0                   ; # moves
        ;; ascii 66: 'B'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 28                  ; # moves
        .db 2                   ; x origin
        .db 13                  ; y origin
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 67: 'C'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 38                  ; # moves
        .db 6                   ; x origin
        .db 3                   ; y origin
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 68: 'D'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 30                  ; # moves
        .db 0                   ; x origin
        .db 9                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 69: 'E'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 3                   ; # moves
        .db 0                   ; x origin
        .db 13                  ; y origin
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 70: 'F'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 0                   ; # moves
        ;; ascii 71: 'G'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 34                  ; # moves
        .db 3                   ; x origin
        .db 0                   ; y origin
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 72: 'H'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 46                  ; # moves
        .db 0                   ; x origin
        .db 1                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 73: 'I'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 34                  ; # moves
        .db 15                  ; x origin
        .db 0                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 74: 'J'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 0                   ; # moves
        ;; ascii 75: 'K'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 0                   ; # moves
        ;; ascii 76: 'L'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 47                  ; # moves
        .db 5                   ; x origin
        .db 5                   ; y origin
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 86                  ; move dx=-2, dy=-2, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 77: 'M'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 49                  ; # moves
        .db 13                  ; x origin
        .db 8                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 122                 ; move dx=-3, dy=3, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 78: 'N'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 44                  ; # moves
        .db 11                  ; x origin
        .db 1                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 79: 'O'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 0                   ; # moves
        ;; ascii 80: 'P'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 30                  ; # moves
        .db 15                  ; x origin
        .db 0                   ; y origin
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 81: 'Q'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 32                  ; # moves
        .db 15                  ; x origin
        .db 12                  ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 82: 'R'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 58                  ; # moves
        .db 13                  ; x origin
        .db 13                  ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 83: 'S'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 35                  ; # moves
        .db 15                  ; x origin
        .db 4                   ; y origin
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 84: 'T'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 24                  ; # moves
        .db 0                   ; x origin
        .db 11                  ; y origin
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 85: 'U'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 29                  ; # moves
        .db 11                  ; x origin
        .db 9                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 86: 'V'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 3                   ; # moves
        .db 15                  ; x origin
        .db 2                   ; y origin
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 87: 'W'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 39                  ; # moves
        .db 6                   ; x origin
        .db 7                   ; y origin
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 88: 'X'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 3                   ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 89: 'Y'
        .db 32                  ; class(bits 5-7)
        .db 15                  ; width
        .db 13                  ; height
        .db 30                  ; # moves
        .db 1                   ; x origin
        .db 0                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
