/*
 * game.h
 *
 * the game!
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 03.07.2022   tstih
 *
 */
#ifndef __GAME_H__
#define __GAME_H__

#include <stdint.h>

#include <ugpx.h>

#include <game/clk.h>


/* lander bounding rectangle 
   there is no lander min y because
   of the terrain i.e. lander always
   explodes before going off screen!! */
#define LANDER_MIN_X    0
#define LANDER_MAX_X    1023
#define LANDER_MIN_Y    32
#define LANDER_MAX_Y    511
#define LANDER_MAX_ANG  23

/* initial position and angle */
#define LANDER_INIT_X   10
#define LANDER_INIT_Y   10
#define LANDER_INIT_A   0

/* game velocity */
#define LANDER_MAX_VEL  10
#define LANDER_INIT_VX  10
#define LANDER_INIT_VY  0
#define LANDER_MOVE_LEN 1

/* thrust stages */
#define THRUST_NONE     0
#define THRUST_AVG      1
#define THRUST_FULL     2

/* clock handlers */
#define CLK_GRAVITY     20
#define CLK_THRUST      8

/* game result flags */
#define R_BAD_ANGLE     0x01
#define R_BAD_VSPEED    0x02
#define R_BAD_HSPEED    0x04
#define R_BAD_TERRAIN   0x08

/* lander position */
typedef struct lpos_s {
    rect_t lr;
    uint8_t angle;
    int tx0;    /* affected terrain x0 */
    int tx1;    /* affected terrain x1 */
} lpos_t;

/* screen pages! */
#define SCREEN_PAGES    2
/* how many levels the game has */
#define GAME_LEVELS     5
/* what is 1 fuel unit (each game level has less)
   fuel, this number is the multiplier! */
#define FUEL_UNIT       100

/* invalid page magic value */
#define INVALID_PAGE    (0xff)

/* game structure */
typedef struct game_s {
    /* level 1-10 */
    uint8_t level;                      /* game level! */
    /* lives...*/
    uint8_t lives;
    /* speed / velocity */
    int vx;                             /* horz. speed */
    int vy;                             /* vert. speed */
    /* thrust stage */
    uint8_t thrust;
    /* lander position and prev. position on both pages! */
    lpos_t lpos;
    lpos_t lprevpos[SCREEN_PAGES];
    /* game clocks! */
    clk_t *vxclk;
    clk_t *vyclk;
    clk_t *gravityclk;
    clk_t *thrustclk;
    /* repaint required? */
    bool update_lander;                 /* redraw? */
    /* current display page */
    uint8_t page;
    /* terrain */
    int *terrain;
} game_t;

/* astro font */
extern void astro_font;

/* run game! */
extern void game_run();

#endif /* __GAME_H__ */