        ;;  led.s
        ;;  
        ;;  led_font
        ;; 
        ;;  notes: see font.h for format details
        ;;  
        ;;  MIT License (see: LICENSE)
        ;;  copyright(c) 2021 tomaz stih
        ;;  
        ;;  14.06.2022   tstih
        .module led_font

        .globl _led_font

        .area _CODE
_led_font::
        ;; font header
        .db 0                   ; font flags
        .db 11                  ; width (max width for proportional)
        .db 11                  ; height
        .db 32                  ; first ascii
        .db 96                  ; last ascii

        ;; glpyh offsets
        .dw 0x0087, 0x008B, 0x009C, 0x00A6, 0x00C3, 0x00DF, 0x0101, 0x011C
        .dw 0x0123, 0x0130, 0x013D, 0x0155, 0x0163, 0x016C, 0x0175, 0x017C
        .dw 0x0189, 0x019E, 0x01A7, 0x01BC, 0x01D2, 0x01E3, 0x01FA, 0x020E
        .dw 0x021B, 0x0237, 0x024A, 0x0253, 0x025F, 0x026C, 0x027A, 0x0287
        .dw 0x0299, 0x02B3, 0x02CA, 0x02E6, 0x02F7, 0x030F, 0x0323, 0x0333
        .dw 0x0349, 0x035C, 0x036F, 0x0380, 0x0397, 0x03A9, 0x03BE, 0x03D6
        .dw 0x03EB, 0x0400, 0x0419, 0x0431, 0x0448, 0x0456, 0x0469, 0x047D
        .dw 0x0496, 0x04AD, 0x04BE, 0x04D3, 0x04E0, 0x04ED, 0x04FB, 0x0504
        .dw 0x0087

        ;; ascii 32: ' '
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 0                   ; # moves
        ;; ascii 33: '!'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 13                  ; # moves
        .db 7                   ; x origin
        .db 3                   ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 122                 ; move dx=-3, dy=3, color=none (move only!)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 34: '"'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 6                   ; # moves
        .db 5                   ; x origin
        .db 4                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 35: '#'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 25                  ; # moves
        .db 7                   ; x origin
        .db 6                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 36: '$'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 24                  ; # moves
        .db 2                   ; x origin
        .db 10                  ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 37: '%'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 30                  ; # moves
        .db 8                   ; x origin
        .db 1                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 38: '&'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 23                  ; # moves
        .db 8                   ; x origin
        .db 9                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 126                 ; move dx=-3, dy=-3, color=none (move only!)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 39: '''
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 3                   ; # moves
        .db 5                   ; x origin
        .db 1                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 40: '('
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 9                   ; # moves
        .db 8                   ; x origin
        .db 1                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 41: ')'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 9                   ; # moves
        .db 2                   ; x origin
        .db 1                   ; y origin
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 42: '*'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 20                  ; # moves
        .db 8                   ; x origin
        .db 1                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 43: '+'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 10                  ; # moves
        .db 2                   ; x origin
        .db 5                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 120                 ; move dx=3, dy=3, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 44: ','
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 5                   ; # moves
        .db 4                   ; x origin
        .db 6                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 45: '-'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 5                   ; # moves
        .db 2                   ; x origin
        .db 5                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 46: '.'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 3                   ; # moves
        .db 5                   ; x origin
        .db 7                   ; y origin
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 47: '/'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 9                   ; # moves
        .db 8                   ; x origin
        .db 1                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 48: '0'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 17                  ; # moves
        .db 9                   ; x origin
        .db 9                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 49: '1'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 5                   ; # moves
        .db 9                   ; x origin
        .db 1                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 50: '2'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 17                  ; # moves
        .db 2                   ; x origin
        .db 0                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 51: '3'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 18                  ; # moves
        .db 2                   ; x origin
        .db 0                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 52: '4'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 13                  ; # moves
        .db 9                   ; x origin
        .db 4                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 53: '5'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 19                  ; # moves
        .db 8                   ; x origin
        .db 0                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 54: '6'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 16                  ; # moves
        .db 9                   ; x origin
        .db 9                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 55: '7'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 9                   ; # moves
        .db 2                   ; x origin
        .db 0                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 56: '8'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 24                  ; # moves
        .db 9                   ; x origin
        .db 9                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 57: '9'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 15                  ; # moves
        .db 9                   ; x origin
        .db 4                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 58: ':'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 5                   ; # moves
        .db 5                   ; x origin
        .db 1                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 59: ';'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 8                   ; # moves
        .db 5                   ; x origin
        .db 1                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 60: '<'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 9                   ; # moves
        .db 8                   ; x origin
        .db 1                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 61: '='
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 10                  ; # moves
        .db 8                   ; x origin
        .db 5                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 62: '>'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 9                   ; # moves
        .db 2                   ; x origin
        .db 1                   ; y origin
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 63: '?'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 14                  ; # moves
        .db 2                   ; x origin
        .db 0                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 64: '@'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 22                  ; # moves
        .db 4                   ; x origin
        .db 0                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 65: 'A'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 19                  ; # moves
        .db 9                   ; x origin
        .db 4                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 66: 'B'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 24                  ; # moves
        .db 2                   ; x origin
        .db 10                  ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 86                  ; move dx=-2, dy=-2, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 67: 'C'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 13                  ; # moves
        .db 8                   ; x origin
        .db 0                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 68: 'D'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 20                  ; # moves
        .db 2                   ; x origin
        .db 10                  ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 86                  ; move dx=-2, dy=-2, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 69: 'E'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 16                  ; # moves
        .db 8                   ; x origin
        .db 0                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 70: 'F'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 12                  ; # moves
        .db 8                   ; x origin
        .db 0                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 71: 'G'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 18                  ; # moves
        .db 9                   ; x origin
        .db 9                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 72: 'H'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 15                  ; # moves
        .db 1                   ; x origin
        .db 9                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 73: 'I'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 15                  ; # moves
        .db 2                   ; x origin
        .db 0                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 74: 'J'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 13                  ; # moves
        .db 9                   ; x origin
        .db 9                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 122                 ; move dx=-3, dy=3, color=none (move only!)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 75: 'K'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 19                  ; # moves
        .db 8                   ; x origin
        .db 1                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 86                  ; move dx=-2, dy=-2, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 76: 'L'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 14                  ; # moves
        .db 1                   ; x origin
        .db 1                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 77: 'M'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 17                  ; # moves
        .db 1                   ; x origin
        .db 9                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 78: 'N'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 20                  ; # moves
        .db 9                   ; x origin
        .db 1                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 86                  ; move dx=-2, dy=-2, color=none (move only!)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 79: 'O'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 17                  ; # moves
        .db 9                   ; x origin
        .db 9                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 80: 'P'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 17                  ; # moves
        .db 9                   ; x origin
        .db 4                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 81: 'Q'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 21                  ; # moves
        .db 6                   ; x origin
        .db 6                   ; y origin
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 82: 'R'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 20                  ; # moves
        .db 1                   ; x origin
        .db 9                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 83: 'S'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 19                  ; # moves
        .db 8                   ; x origin
        .db 0                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 84: 'T'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 10                  ; # moves
        .db 2                   ; x origin
        .db 0                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 85: 'U'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 15                  ; # moves
        .db 9                   ; x origin
        .db 9                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 86: 'V'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 16                  ; # moves
        .db 2                   ; x origin
        .db 1                   ; y origin
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 87: 'W'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 21                  ; # moves
        .db 9                   ; x origin
        .db 1                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 126                 ; move dx=-3, dy=-3, color=none (move only!)
        .db 126                 ; move dx=-3, dy=-3, color=none (move only!)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 88: 'X'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 19                  ; # moves
        .db 2                   ; x origin
        .db 1                   ; y origin
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 124                 ; move dx=3, dy=-3, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 89: 'Y'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 13                  ; # moves
        .db 9                   ; x origin
        .db 1                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 126                 ; move dx=-3, dy=-3, color=none (move only!)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        ;; ascii 90: 'Z'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 17                  ; # moves
        .db 2                   ; x origin
        .db 0                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 91: '['
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 9                   ; # moves
        .db 8                   ; x origin
        .db 0                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 92: '\'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 9                   ; # moves
        .db 2                   ; x origin
        .db 1                   ; y origin
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 93: ']'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 10                  ; # moves
        .db 2                   ; x origin
        .db 0                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 94: '^'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 5                   ; # moves
        .db 2                   ; x origin
        .db 1                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 95: '_'
        .db 32                  ; class(bits 5-7)
        .db 11                  ; width
        .db 11                  ; height
        .db 5                   ; # moves
        .db 2                   ; x origin
        .db 10                  ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
