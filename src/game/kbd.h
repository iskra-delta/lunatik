/*
 * kbd.h
 *
 * in game keyboard processing.
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 03.07.2022   tstih
 *
 */
#ifndef __KBD_H__
#define __KBD_H__

#include <stdbool.h>

#include <game/game.h>

/* esc seq. */
#define K_ESC       27
#define K_CTRLC     3

/* keyboard handler */
typedef void (*kbd_handler_t)(void *);

/* return false if Ctrl+C, calls appropriate
   keyboard handler for left/right/up/down/space/enter */
extern bool kbd_scan(
    game_t *g,
    kbd_handler_t left,
    kbd_handler_t right,
    kbd_handler_t up,
    kbd_handler_t down,
    kbd_handler_t space,
    kbd_handler_t enter,
    kbd_handler_t esc
);

#endif /* __KBD_H__ */