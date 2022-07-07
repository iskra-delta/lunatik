/*
 * events.h
 *
 * game timed and keyboard events...
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 04.07.2022   tstih
 *
 */
#ifndef __EVENTS_H__
#define __EVENTS_H__

#include <game/game.h>

/* game timed events */
extern void ev_clk_hmove(game_t *g);    /* time for horiz. move */
extern void ev_clk_vmove(game_t *g);    /* time for vert. move */
extern void ev_clk_gravity(game_t *g);  /* time to adjust gravity */
extern void ev_clk_thrust(game_t *g);   /* time for adjust rocket thrust */

/* game keyboard events */
extern void ev_kbd_left(game_t *g);     /* user pressed left */
extern void ev_kbd_right(game_t *g);    /* user pressed right */
extern void ev_kbd_space(game_t *g);    /* user pressed space */

#endif /* __EVENTS_H__ */