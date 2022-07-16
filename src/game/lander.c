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
void lander_erase(rect_t *lr) {
    /* clear area! */
    gsetcolor(CO_BACK); gfillrect(lr);
}

/* draw lander */
void lander_draw(rect_t *lr, uint8_t angle, uint8_t thrust) {
    /* create ship string */
    char shipstr[2] = { 
        32 + /* first ascii */
        LANDER_ANGLES * thrust + /* thrust "row" */
        angle, /* angle offset */
        0 }; /* string terminator */
    /* draw ship! */
    gsetcolor(CO_FORE);
    gputtext(&ship_font,shipstr,lr->x0,lr->y0);
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
    *tx = thrust_x[angle] / 2;
    *ty = thrust_y[angle] / 2;
}

void lander_upd_rect(rect_t *lr) {
    lr->x1=lr->x0+LANDER_W;
    lr->y1=lr->y0+LANDER_H;
}