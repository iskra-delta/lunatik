/*
 * lander.c
 *
 * ship drawing
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 20.02.2022   tstih
 *
 */
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <ugpx.h>

extern void gotoxy(g_t *g, coord x, coord y);
extern void drawdelta(g_t *g, uint8_t dx, uint8_t dy);

extern void 
    ship0, ship1, ship2, ship3, ship4,
    ship5, ship6, ship7, ship8, ship9,
    ship10, ship11, ship12, ship13, ship14,
    ship15, ship16, ship17, ship18, ship19,
    ship20, ship21, ship22, ship23;
void *landers[]={
    &ship0, &ship1, &ship2, &ship3, &ship4, &ship5, &ship6,
    &ship7, &ship8, &ship9, &ship10, &ship11, &ship12, &ship13,
    &ship14, &ship15, &ship16, &ship17, &ship18, &ship19, &ship20,
    &ship21, &ship22, &ship23
};
extern void shiplines;
void draw_lander(g_t *g, uint8_t angle, int x, int y) {
    /* select the lander image */
    char *lander=(char *)landers[angle];
    char *lines=(char *)&shiplines;
    char i=0, len;
    len=*lines++; /* get ship lines */
    int prev=-1, idx=0, pidx=0;  
    while (i<len) {
        int line=lines[i];
        if (line==0) prev=-1;
        else if (prev==-1) {
            prev=i;
            pidx=2*(line-1);
            gxy(g,x+lander[pidx],y+lander[pidx+1]);
        } else {
            idx=2*(line-1);
            char
                dx = lander[idx]-lander[pidx],
                dy = lander[idx+1]-lander[pidx+1];
            gdrawdelta(g,dx,dy);
            pidx=idx;
        }
        i++;
    }
}