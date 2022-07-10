/*
 * lander.h
 *
 * lander drawing and logic header.
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 09.07.2022   tstih
 *
 */
#ifndef __LANDER_H__
#define __LANDER_H__

#include <stdint.h>

#include <ugpx.h>

/* lander size */
#define LANDER_W        32
#define LANDER_H        32
#define LANDER_ANGLES   24

/* ship font! */
extern void ship_font;

/* delete lander */
extern void lander_erase(coord x, coord z);

/* draw lander */
extern void lander_draw(coord x, coord y, uint8_t angle, uint8_t thrust);

/* calculate lander thrust in x and y directions */
void lander_calc_thrust(uint8_t angle, int8_t *tx, int8_t *ty);

#endif /* __LANDER_H__ */