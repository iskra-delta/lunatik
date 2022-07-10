/*
 * lander.c
 *
 * lander drawing and logic
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 09.07.2022   tstih
 *
 */

#include <game/lander.h>

/* erase lander */
void lander_erase(coord x, coord y) {
    /* clear area! */
    rect_t sr={x,y,x+LANDER_W,y+LANDER_H};
    gsetcolor(CO_BACK); gfillrect(&sr);
}

/* draw lander */
void lander_draw(coord x, coord y, uint8_t angle, uint8_t thrust) {
    /* create ship string */
    char shipstr[2] = { 
        32 + /* first ascii */
        LANDER_ANGLES * thrust + /* thrust "row" */
        angle, /* angle offset */
        0 }; /* string terminator */
    /* draw ship! */
    gsetcolor(CO_FORE);
    gputtext(&ship_font,shipstr,x,y);
}


/* directed thrusts for angles 0-23 */
static int8_t thrust_x[] = { 
    0, -1, -2, -3, -4, -5, -6, -5, -4, -3, -2, -1, 
    0,  1,  2,  3,  4,  5,  6,  5,  4,  3,  2,  1 };
static int8_t thrust_y[] = {
    6,  5,  4,  3,  2,  1,  0, -1, -2, -3, -4, -5,
    -6, -5,-4, -4, -2, -1,  0,  1,  2,  3,  4,  5 };
/* calculate lander x and y thrust based on angle */
void lander_calc_thrust(uint8_t angle, int8_t *tx, int8_t *ty) {
    *tx = thrust_x[angle];
    *ty = thrust_y[angle];
}