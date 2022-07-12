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

#include <game/terrain.h>

static int eps[TERRAIN_EL_POINTS];
static void terrain_fill_gap(uint8_t start, uint8_t end, int *terrain) {
    uint8_t mid = start + (end-start) / 2;
    /* generate mid point elevation... */
    /* ...and recurse */
    if (mid>start) terrain_fill_gap(start,mid,terrain);
    if (mid<end) terrain_fill_gap(mid,end,terrain);

}
int * terrain_generate(uint8_t level) {
    level;
    return eps;
}


void terrain_draw(int *terrain) {
    /* how many points */
    int count=*terrain++;
    /* go to x,y */
    gxy(terrain[0],terrain[1]);
    /* and draw them all using delta */
    for (int i=2;i<count;i+=2) {
        int dx=terrain[i]-terrain[i-2],
            dy=terrain[i+1]-terrain[i-1];
        /* and draw the delta! */
        gdrawdelta(dx,dy);
    }
}