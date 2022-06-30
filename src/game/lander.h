/*
 * lander.h
 *
 * ship drawing header
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 20.02.2022   tstih
 *
 */
#ifndef __LANDER_H__
#define __LANDER_H__

#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <ugpx.h>

/* ship prerotated points */
extern void 
    ship0, ship1, ship2, ship3, 
    ship4, ship5, ship6, ship7, 
    ship8, ship9, ship10, ship11, 
    ship12, ship13, ship14, ship15, 
    ship16, ship17, ship18, ship19,
    ship20, ship21, ship22, ship23;

/* connecting lines (between points) */
extern void shiplines;

/* lander drawing stuff */
extern void lander_draw(uint8_t angle, int x, int y);

#endif /* __LANDER_H__ */