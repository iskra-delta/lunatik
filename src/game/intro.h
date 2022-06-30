/*
 * intro.h
 *
 * the intro screen for the moonlander header
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 15.06.2022   tstih
 *
 */
#ifndef __INTRO_H__
#define __INTRO_H__

#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <ugpx.h>

/* intro animated stars, layers, and scroll step */
#define NO_STARS        5
#define NO_LAYERS       3
#define STAR_STEP       2

/* title glyphs */
extern void title_L, title_U, title_N, title_A, title_T, title_I, title_K;

/* main font */
extern void idp8x16_font;

/* optimized utils functions */
extern void intro_drawstar(coord x, coord y, int layer);

/* and the run function */
extern bool intro_run();

#endif /* __INTRO_H__ */