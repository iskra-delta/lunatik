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
#include <game/lander.h>

/* a table of all prerotated landers */
static void *landers[]={
    &ship0, &ship1, &ship2, &ship3, 
    &ship4, &ship5, &ship6, &ship7, 
    &ship8, &ship9, &ship10, &ship11, 
    &ship12, &ship13, &ship14, &ship15, 
    &ship16, &ship17, &ship18, &ship19, 
    &ship20, &ship21, &ship22, &ship23
};

/* draw the rotated lander */
void lander_draw(uint8_t angle, int x, int y) {
    /* select the lander image */
    signed char *lander=(signed char *)landers[angle];
    signed char *lines=(signed char *)&shiplines;
    signed char i=0, len;
    len=*lines++; /* get ship lines */
    signed char prev=-1, idx=0, pidx=0;  
    while (i<len) {
        int line=lines[i];
        if (line==0) prev=-1;
        else if (prev==-1) {
            prev=i;
            pidx=2*(line-1);
            gxy(x+lander[pidx],y+lander[pidx+1]);
        } else {
            idx=2*(line-1);
            signed char
                dx = lander[idx]-lander[pidx],
                dy = lander[idx+1]-lander[pidx+1];
            gdrawdelta(dx,dy);
            pidx=idx;
        }
        i++;
    }
}