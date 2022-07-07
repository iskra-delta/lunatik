/*
 * events.c
 *
 * game timed and keyboard events...
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 06.07.2022   tstih
 *
 */
#include <stdio.h>
#include <game/events.h>

void ev_clk_hmove(game_t *g)  {
    /* change lander position */
    if (g->vx > 0) g->lpos.x++; else g->lpos.x++;
    /* if beyond limits */
    if (g->lpos.x + LANDER_W > LANDER_MAX_X - LANDER_INIT_X) 
        g->lpos.x = LANDER_MIN_X + LANDER_INIT_X;
    else if (g->lpos.x < LANDER_MIN_X + LANDER_INIT_X)
        g->lpos.x=LANDER_MAX_X - LANDER_INIT_X - LANDER_W;
    /* notify update */
    g->update_lander=true;
}

void ev_clk_vmove(game_t *g) {}

void ev_clk_gravity(game_t *g) {}

void ev_clk_thrust(game_t *g) {}

/* the user has pressed the left key */
void ev_kbd_left(game_t *g) { 
    /* increase lander angle */
    if ( g->lpos.angle==LANDER_MAX_ANG )
        g->lpos.angle=0;
    else
        g->lpos.angle = g->lpos.angle + 1;
    /* signal the game to repaint (lander only) */
    g->update_lander=true;
}  

void ev_kbd_right(game_t *g) {
    /* decrease lander angle */
    if ( g->lpos.angle==0 )
        g->lpos.angle=LANDER_MAX_ANG;
    else
        g->lpos.angle = g->lpos.angle - 1;
    /* signal the game to repaint (lander only) */
    g->update_lander=true;
}  

void ev_kbd_space(game_t *g) {} 