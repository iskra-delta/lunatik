/*
 * terrain.h
 *
 * terrain generation header
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 12.07.2022   tstih
 *
 */
#ifndef __TERRAIN_H__
#define __TERRAIN_H__

#include <stdint.h>

/* how many elevation points */
#define TERRAIN_LINES       128

/* terrain limits */
#define TERRAIN_MAX_Y       500
#define TERRAIN_MAX_X       1023

/* terrain var. level multiplier */
#define TERRAIN_LEVEL_MUL   20
#define TERRAIN_VAR         200

/* collision codes (cohen sutherland) */
#define PT_INSIDE           0 /* 0000 */
#define PT_LEFT             1 /* 0001 */
#define PT_RIGHT            2 /* 0010 */
#define PT_BOTTOM           4 /* 0100 */
#define PT_TOP              8 /* 1000 */

/* generate the terrain */
extern int* terrain_generate(uint8_t level);

/* draw the terrain! */
extern void terrain_draw(int *terrain);

/* distance from lander to terrain */
extern int terrain_height(int *terrain, rect_t *rect);

#endif /* __TERRAIN_H__ */