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
#include <stdlib.h>

#include <game/lander.h>
#include <game/events.h>
#include <game/score.h>
#include <game/terrain.h>

/* horizontal move cycle: move the lander */
void ev_clk_hmove(game_t *g)  {
    /* change lander position */
    if (g->vx > 0) g->lpos.x+=LANDER_MOVE_LEN; else g->lpos.x-=LANDER_MOVE_LEN;
    /* if beyond limits */
    if (g->lpos.x + LANDER_W > LANDER_MAX_X - LANDER_INIT_X) 
        g->lpos.x = LANDER_MIN_X + LANDER_INIT_X;
    else if (g->lpos.x < LANDER_MIN_X + LANDER_INIT_X)
        g->lpos.x=LANDER_MAX_X - LANDER_INIT_X - LANDER_W;
    /* notify update */
    g->update_lander=true;
    /* update height */
    rect_t lander_rect={g->lpos.x,g->lpos.y,
        g->lpos.x+LANDER_W, g->lpos.y+LANDER_H};
    int h=terrain_height(g->terrain,&lander_rect);
    score_set(SCORE_ALT,h);
}

/* vertical move cycle: move the lander */
void ev_clk_vmove(game_t *g) {
    /* change lander position */
    if (g->vy > 0) g->lpos.y+=LANDER_MOVE_LEN; 
    else g->lpos.y-=LANDER_MOVE_LEN;
    /* if beyond limits */
    if (g->lpos.y < LANDER_MIN_Y +  LANDER_INIT_Y) 
        g->lpos.y = LANDER_MIN_Y + LANDER_INIT_Y;
    /* notify update */
    g->update_lander=true;
    /* update height */
    rect_t lander_rect={g->lpos.x,g->lpos.y,
        g->lpos.x+LANDER_W, g->lpos.y+LANDER_H};
    int h=terrain_height(g->terrain,&lander_rect);
    score_set(SCORE_ALT,h);
}

/* gravity cycle: simply increase vertical speed */
void ev_clk_gravity(game_t *g) {
    /* add vy */
    if (g->vy<LANDER_MAX_VEL) {
        g->vy++;
        /* update clock */
        clk_setticks(g->vyclk,LANDER_MAX_VEL - abs(g->vy));
        /* notify update */
        g->update_lander=true;
        /* and update telemetry */
        score_set(SCORE_VSPEED,10 * g->vy);
    }
}

/* lander thrust clock */
void ev_clk_thrust(game_t *g) {
    if (g->thrust==THRUST_AVG)
        g->thrust=THRUST_FULL;
    else if (g->thrust==THRUST_FULL) 
        g->thrust=THRUST_NONE;
    g->update_lander=true;
}

/* left button: rotate */
void ev_kbd_left(game_t *g) { 
    /* decrease lander angle */
    if ( g->lpos.angle==0 )
        g->lpos.angle=LANDER_MAX_ANG;
    else
        g->lpos.angle = g->lpos.angle - 1;
    /* signal the game to repaint (lander only) */
    g->update_lander=true;
}  

/* right button: rotate */
void ev_kbd_right(game_t *g) {
    /* increase lander angle */
    if ( g->lpos.angle==LANDER_MAX_ANG )
        g->lpos.angle=0;
    else
        g->lpos.angle = g->lpos.angle + 1;
    /* signal the game to repaint (lander only) */
    g->update_lander=true;
}  

/* space, up or down: thrust! */
void ev_kbd_space(game_t *g) {

    /* calulate delta velocity */
    int8_t tx,ty;
    lander_calc_thrust(g->lpos.angle, &tx, &ty);
    
    /* apply it amd reset timers */
    g->vy -= ty; g->vx -= tx;
    /* check bounds */
    if (g->vy<-LANDER_MAX_VEL) g->vy=-LANDER_MAX_VEL;
    if (g->vy>LANDER_MAX_VEL) g->vy=LANDER_MAX_VEL;
    if (g->vx<-LANDER_MAX_VEL) g->vx=-LANDER_MAX_VEL;
    if (g->vx>LANDER_MAX_VEL) g->vx=LANDER_MAX_VEL;
    /* update clock */
    clk_setticks(g->vxclk,LANDER_MAX_VEL - abs(g->vx));
    clk_setticks(g->vyclk,LANDER_MAX_VEL - abs(g->vy));
    /* and score */
    score_set(SCORE_VSPEED,10 * g->vy);
    score_set(SCORE_HSPEED,10 * g->vx);

    /* and notify drawing logic */
    g->thrust=THRUST_AVG;
    g->update_lander=true;
}