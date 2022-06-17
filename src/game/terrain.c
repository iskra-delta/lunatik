/*
 * terrain.c
 *
 * the terrain logic 
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 17.06.2022   tstih
 *
 */
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <ugpx.h>

extern void gotoxy(g_t *g, coord x, coord y);
extern void drawdelta(g_t *g, uint8_t dx, uint8_t dy);

void terra_draw(g_t *g, void *t) {
    int *ptr=(int *)t;
    /* how many points */
    int count=*ptr++;
    /* go to x,y */
    gotoxy(g,ptr[0],ptr[1]);
    /* and draw them all using delta */
    for (int i=2;i<count;i+=2) {
        int dx=ptr[i]-ptr[i-2],
            dy=ptr[i+1]-ptr[i-1];
        /* and draw the delta! */
        drawdelta(g,dx,dy);
    }
}

extern void levelA, levelB, levelC;
void* terra_pick(int level) {
    int p=rand()%3;
    if (p==0) return &levelA;
    else if (p==1) return &levelB;
    else return &levelC;
}