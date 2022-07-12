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
#define TERRAIN_EL_POINTS   128
#define TERRAIN_START_GAP   8

/* generate the terrain */
extern int* terrain_generate(uint8_t level);

/* draw the terrain! */
extern void terrain_draw(int *terrain);

#endif /* __TERRAIN_H__ */