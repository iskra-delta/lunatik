/*
 * score.h
 *
 * scoreboard drawing header
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 12.07.2022   tstih
 *
 */
#ifndef __SCORE_H__
#define __SCORE_H__

#include <stdint.h>
#include <stdbool.h>

/* score ids */
#define SCORE_FUEL      0
#define SCORE_ALT       1
#define SCORE_HSPEED    2
#define SCORE_VSPEED    3
#define SCORE_LIVES     4
#define SCORE_RESULT    5

/* score number offset */
#define SCORE_NUM_W     70
#define SCORE_NUM_H     16

/* score positions */
#define SCORE_FUEL_X    50
#define SCORE_FUEL_Y    0
#define SCORE_ALT_X     50
#define SCORE_ALT_Y     16
#define SCORE_HSPEED_X  400
#define SCORE_HSPEED_Y  0
#define SCORE_VSPEED_X  400
#define SCORE_VSPEED_Y  16
#define SCORE_LIVES_X   750
#define SCORE_LIVES_Y   0
#define SCORE_RESULT_X  750
#define SCORE_RESULT_Y  16

/* scoreboard def. */
#define SCORES 6
typedef struct score_s {
    uint8_t id;
    char *title;
    int x;
    int y;
    int num;
    int offsx;
    int8_t semaphore;
} score_t;

/* scoreboard font */
extern void astro_font;

/* convert int to score ascii (with 5 leading 0) */
extern char *scorez(int i, char *a);

/* draw scores' label */
extern void score_draw_label(uint8_t id);

/* update all scores that need update... */
extern void score_draw_board();

/* set the score */
extern void score_set(uint8_t id, int num);

/* get the score */
extern int score_get(uint8_t id);

#endif /* __SCORE_H__ */