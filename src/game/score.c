/*
 * score.c
 *
 * scoreboard drawing
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 12.07.2022   tstih
 *
 */
#include <ugpx.h>

#include <game/score.h>

static score_t scoreboard[SCORES] = {
    { 0x01, "GORIVO",   SCORE_FUEL_X,   SCORE_FUEL_Y,   0, true },
    { 0x02, "DO TAL",   SCORE_ALT_X,    SCORE_ALT_Y,    0, true },
    { 0x04, "HOR.HITR.",SCORE_HSPEED_X, SCORE_HSPEED_Y, 0, true },
    { 0x08, "VER.HITR.",SCORE_VSPEED_X, SCORE_VSPEED_Y, 0, true },
    { 0x10, "POSKUSI",  SCORE_LIVES_X,  SCORE_LIVES_Y,  0, true },
    { 0x20, "REZULTAT", SCORE_RESULT_X, SCORE_RESULT_Y, 0, true }
};

void score_draw_label(uint8_t id) {
    /* draw game text... */
    gputtext(
        &astro_font,
        scoreboard[id].title,
        scoreboard[id].x,
        scoreboard[id].y);
}

void score_draw_board() {
    char ss[10];
    for(int id=SCORE_FUEL; id<=SCORE_RESULT;id++)
        if (scoreboard[id].updated) {
            rect_t r={
                scoreboard[id].x + SCORE_NUM_OFF, 
                scoreboard[id].y,
                scoreboard[id].x + SCORE_NUM_OFF + SCORE_NUM_W, 
                scoreboard[id].y + SCORE_NUM_H};
            gsetcolor(CO_BACK);
            gfillrect(&r);
            gsetcolor(CO_FORE);
            gputtext(&astro_font,scorez(scoreboard[id].num, ss),r.x0,r.y0);
            scoreboard[id].updated=false;
        }
}

void score_invalidate_board() {
    for(int id=SCORE_FUEL; id<=SCORE_RESULT;id++)
        scoreboard[id].updated=true;
}

void score_set(uint8_t id, int num) {
    scoreboard[id].num=num;
    scoreboard[id].updated=true;
}

int score_get(uint8_t id) {
    return scoreboard[id].num;
}