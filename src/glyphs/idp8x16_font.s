        ;;  idp8x16_font.s
        ;;  
        ;;  idp8x16_font
        ;; 
        ;;  notes: see font.h for format details
        ;;  
        ;;  MIT License (see: LICENSE)
        ;;  copyright(c) 2021 tomaz stih
        ;;  
        ;;  11.06.2022   tstih
        .module idp8x16_font

        .globl _idp8x16_font

        .area _CODE
_idp8x16_font::
        ;; font header
        .db 131                 ; font flags
        .db 7                   ; width (max width for proportional)
        .db 15                  ; height
        .db 32                  ; first ascii
        .db 127                 ; last ascii

        ;; glpyh offsets
        .dw 0x00C5, 0x00C9, 0x00D4, 0x00DD, 0x00F8, 0x010E, 0x0128, 0x0143
        .dw 0x014A, 0x0155, 0x0160, 0x0170, 0x017E, 0x0186, 0x018E, 0x0195
        .dw 0x01A4, 0x01B8, 0x01C7, 0x01D8, 0x01EC, 0x0201, 0x0214, 0x0227
        .dw 0x0236, 0x024D, 0x0261, 0x026A, 0x0274, 0x0283, 0x028F, 0x029E
        .dw 0x02AF, 0x02C4, 0x02D7, 0x02EE, 0x02FF, 0x030F, 0x0321, 0x0331
        .dw 0x0343, 0x0356, 0x0367, 0x0376, 0x038E, 0x039A, 0x03AB, 0x03BE
        .dw 0x03CF, 0x03E1, 0x03F6, 0x040B, 0x041E, 0x042B, 0x043B, 0x044B
        .dw 0x045D, 0x0478, 0x048E, 0x04A2, 0x04AE, 0x04BD, 0x04CA, 0x04DA
        .dw 0x04E3, 0x04F6, 0x0507, 0x0518, 0x0524, 0x0535, 0x0546, 0x0553
        .dw 0x0565, 0x0575, 0x0582, 0x058F, 0x05A1, 0x05AC, 0x05BD, 0x05CA
        .dw 0x05D9, 0x05EA, 0x05FB, 0x0605, 0x0615, 0x0623, 0x0631, 0x0641
        .dw 0x0654, 0x0669, 0x067B, 0x0689, 0x0698, 0x06A2, 0x06B3, 0x06BC

        ;; ascii 32: ' '
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 15                  ; height
        .db 0                   ; # moves
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
        ;; ascii 34: '"'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 15                  ; height
        .db 5                   ; # moves
        .db 0                   ; x origin
        .db 4                   ; y origin
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 35: '#'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 23                  ; # moves
        .db 1                   ; x origin
        .db 12                  ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 36: '$'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 18                  ; # moves
        .db 4                   ; x origin
        .db 4                   ; y origin
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 37: '%'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 22                  ; # moves
        .db 1                   ; x origin
        .db 3                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 38: '&'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 23                  ; # moves
        .db 5                   ; x origin
        .db 7                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 39: '''
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 15                  ; height
        .db 3                   ; # moves
        .db 1                   ; x origin
        .db 2                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 40: '('
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 15                  ; height
        .db 7                   ; # moves
        .db 1                   ; x origin
        .db 2                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 41: ')'
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 15                  ; height
        .db 7                   ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 42: '*'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 12                  ; # moves
        .db 3                   ; x origin
        .db 5                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 43: '+'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 10                  ; # moves
        .db 2                   ; x origin
        .db 5                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 44: ','
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 15                  ; height
        .db 4                   ; # moves
        .db 1                   ; x origin
        .db 11                  ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 45: '-'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 4                   ; # moves
        .db 0                   ; x origin
        .db 7                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 46: '.'
        .db 32                  ; class(bits 5-7)
        .db 0                   ; width
        .db 15                  ; height
        .db 3                   ; # moves
        .db 0                   ; x origin
        .db 12                  ; y origin
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 47: '/'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 11                  ; # moves
        .db 4                   ; x origin
        .db 3                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 48: '0'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 16                  ; # moves
        .db 4                   ; x origin
        .db 5                   ; y origin
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 49: '1'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 11                  ; # moves
        .db 0                   ; x origin
        .db 3                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 50: '2'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 0                   ; x origin
        .db 3                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 51: '3'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 16                  ; # moves
        .db 0                   ; x origin
        .db 3                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 52: '4'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 17                  ; # moves
        .db 3                   ; x origin
        .db 9                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 53: '5'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 15                  ; # moves
        .db 5                   ; x origin
        .db 2                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 54: '6'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 15                  ; # moves
        .db 5                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 55: '7'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 11                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 56: '8'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 19                  ; # moves
        .db 5                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 57: '9'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 16                  ; # moves
        .db 5                   ; x origin
        .db 7                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 58: ':'
        .db 32                  ; class(bits 5-7)
        .db 0                   ; width
        .db 15                  ; height
        .db 5                   ; # moves
        .db 0                   ; x origin
        .db 6                   ; y origin
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 59: ';'
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 15                  ; height
        .db 6                   ; # moves
        .db 1                   ; x origin
        .db 6                   ; y origin
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 60: '<'
        .db 32                  ; class(bits 5-7)
        .db 2                   ; width
        .db 15                  ; height
        .db 11                  ; # moves
        .db 2                   ; x origin
        .db 3                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 61: '='
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 8                   ; # moves
        .db 0                   ; x origin
        .db 5                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 122                 ; move dx=-3, dy=3, color=none (move only!)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 62: '>'
        .db 32                  ; class(bits 5-7)
        .db 2                   ; width
        .db 15                  ; height
        .db 11                  ; # moves
        .db 0                   ; x origin
        .db 3                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 63: '?'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 0                   ; x origin
        .db 4                   ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 64: '@'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 17                  ; # moves
        .db 4                   ; x origin
        .db 5                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 65: 'A'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 15                  ; # moves
        .db 5                   ; x origin
        .db 8                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 66: 'B'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 19                  ; # moves
        .db 5                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 67: 'C'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 68: 'D'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 12                  ; # moves
        .db 4                   ; x origin
        .db 11                  ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 69: 'E'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 14                  ; # moves
        .db 5                   ; x origin
        .db 2                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 70: 'F'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 12                  ; # moves
        .db 5                   ; x origin
        .db 2                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 71: 'G'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 14                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 72: 'H'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 15                  ; # moves
        .db 0                   ; x origin
        .db 12                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 73: 'I'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 74: 'J'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 11                  ; # moves
        .db 5                   ; x origin
        .db 2                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 75: 'K'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 20                  ; # moves
        .db 4                   ; x origin
        .db 2                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 76: 'L'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 8                   ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 77: 'M'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 0                   ; x origin
        .db 12                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 78: 'N'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 15                  ; # moves
        .db 5                   ; x origin
        .db 2                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 254                 ; move dx=-3, dy=-3, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 79: 'O'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 5                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 80: 'P'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 14                  ; # moves
        .db 0                   ; x origin
        .db 7                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 81: 'Q'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 17                  ; # moves
        .db 5                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 82: 'R'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 17                  ; # moves
        .db 0                   ; x origin
        .db 12                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 83: 'S'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 15                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 84: 'T'
        .db 32                  ; class(bits 5-7)
        .db 6                   ; width
        .db 15                  ; height
        .db 9                   ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 85: 'U'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 12                  ; # moves
        .db 5                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 86: 'V'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 12                  ; # moves
        .db 2                   ; x origin
        .db 12                  ; y origin
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        ;; ascii 87: 'W'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 14                  ; # moves
        .db 5                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        ;; ascii 88: 'X'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 23                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 89: 'Y'
        .db 32                  ; class(bits 5-7)
        .db 6                   ; width
        .db 15                  ; height
        .db 18                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 90: 'Z'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 16                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 91: '['
        .db 32                  ; class(bits 5-7)
        .db 2                   ; width
        .db 15                  ; height
        .db 8                   ; # moves
        .db 2                   ; x origin
        .db 2                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 92: '\'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 11                  ; # moves
        .db 0                   ; x origin
        .db 3                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 93: ']'
        .db 32                  ; class(bits 5-7)
        .db 2                   ; width
        .db 15                  ; height
        .db 9                   ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 94: '^'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 12                  ; # moves
        .db 0                   ; x origin
        .db 7                   ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 95: '_'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 15                  ; height
        .db 5                   ; # moves
        .db 0                   ; x origin
        .db 14                  ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 96: '`'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 15                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 97: 'a'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 1                   ; x origin
        .db 5                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 98: 'b'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 4                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 99: 'c'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 15                  ; height
        .db 8                   ; # moves
        .db 3                   ; x origin
        .db 5                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 100: 'd'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 4                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 101: 'e'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 4                   ; x origin
        .db 7                   ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 102: 'f'
        .db 32                  ; class(bits 5-7)
        .db 2                   ; width
        .db 15                  ; height
        .db 9                   ; # moves
        .db 2                   ; x origin
        .db 2                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 103: 'g'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 14                  ; # moves
        .db 3                   ; x origin
        .db 12                  ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 104: 'h'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 12                  ; # moves
        .db 0                   ; x origin
        .db 12                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 105: 'i'
        .db 32                  ; class(bits 5-7)
        .db 2                   ; width
        .db 15                  ; height
        .db 9                   ; # moves
        .db 1                   ; x origin
        .db 2                   ; y origin
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 106: 'j'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 15                  ; height
        .db 9                   ; # moves
        .db 3                   ; x origin
        .db 2                   ; y origin
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 107: 'k'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 15                  ; height
        .db 14                  ; # moves
        .db 0                   ; x origin
        .db 12                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 86                  ; move dx=-2, dy=-2, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 108: 'l'
        .db 32                  ; class(bits 5-7)
        .db 2                   ; width
        .db 15                  ; height
        .db 7                   ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 109: 'm'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 1                   ; x origin
        .db 5                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 110: 'n'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 9                   ; # moves
        .db 0                   ; x origin
        .db 12                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 111: 'o'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 11                  ; # moves
        .db 4                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 112: 'p'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 4                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 113: 'q'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 3                   ; x origin
        .db 12                  ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 114: 'r'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 15                  ; height
        .db 6                   ; # moves
        .db 3                   ; x origin
        .db 5                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 115: 's'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 12                  ; # moves
        .db 3                   ; x origin
        .db 5                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 116: 't'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 15                  ; height
        .db 10                  ; # moves
        .db 1                   ; x origin
        .db 2                   ; y origin
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 117: 'u'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 10                  ; # moves
        .db 4                   ; x origin
        .db 11                  ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 118: 'v'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 12                  ; # moves
        .db 1                   ; x origin
        .db 10                  ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 119: 'w'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 15                  ; # moves
        .db 0                   ; x origin
        .db 5                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 120: 'x'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 17                  ; # moves
        .db 0                   ; x origin
        .db 5                   ; y origin
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 121: 'y'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 14                  ; # moves
        .db 3                   ; x origin
        .db 12                  ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 122: 'z'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 10                  ; # moves
        .db 0                   ; x origin
        .db 5                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 123: '{'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 11                  ; # moves
        .db 4                   ; x origin
        .db 2                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 124: '|'
        .db 32                  ; class(bits 5-7)
        .db 0                   ; width
        .db 15                  ; height
        .db 6                   ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 125: '}'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 15                  ; height
        .db 13                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 126: '~'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 15                  ; height
        .db 5                   ; # moves
        .db 0                   ; x origin
        .db 3                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 127: '<non standard>'
        .db 32                  ; class(bits 5-7)
        .db 6                   ; width
        .db 15                  ; height
        .db 36                  ; # moves
        .db 1                   ; x origin
        .db 11                  ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
