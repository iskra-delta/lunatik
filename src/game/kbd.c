/*
 * kbd.c
 *
 * in game keyboard processing.
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 03.07.2022   tstih
 *
 */
#include <stdlib.h>
#include <stdio.h>

#include <game/kbd.h>

static void _kbd_exec(kbd_handler_t handler, game_t *g) {
    if (handler!=NULL) handler(g);
}

bool kbd_scan(
    game_t *g,
    kbd_handler_t left,
    kbd_handler_t right,
    kbd_handler_t up,
    kbd_handler_t down,
    kbd_handler_t space,
    kbd_handler_t enter,
    kbd_handler_t esc
) {
    char c=kbhit();
    bool retcode=true;
    switch(c) {
        case ' ':
            _kbd_exec(space, g);
            break;
        case '\n':
            _kbd_exec(enter, g);
            break;
        case K_CTRLC:
            retcode=false;
            break;
        case K_ESC:
            if (!kbhit()) /* escape? */
                _kbd_exec(esc, g);
            else {
                /* directional keys */
                c=kbhit();
                if (c=='A') /*up*/
                    _kbd_exec(up, g);
                else if (c=='B') /* down */
                    _kbd_exec(down, g);
                else if (c=='C') /* right */
                    _kbd_exec(right, g);
                else if (c=='D') /* left */
                    _kbd_exec(left, g);
            }
            break;
        default:
            retcode=true;
    }
    return retcode;
}