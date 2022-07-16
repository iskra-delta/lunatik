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
#include <limits.h>
#include <ugpx.h>

#include <game/terrain.h>
#include <game/lander.h>

static int eps[TERRAIN_LINES + 1];
static void terrain_evolve(int *terrain, int loops) {
    int i0,i; 
    while (loops>0) {
        i=0; i0=-1;
        while (i<=TERRAIN_LINES) {
            if (terrain[i]) {
                if (i0<0) i0=i;
                else if (i-i0 >= 2){
                    /* we have two points: i0 and i */
                    int mid=(i+i0)/2;
                    int midval=abs( terrain[i0]-terrain[i] ) / 2;
                    int rnd = midval?rand()%midval:0;
                    if (terrain[i0]>terrain[i])
                        terrain[mid]=terrain[i]+rnd;
                    else
                        terrain[mid]=terrain[i0]+rnd;
                    i0=i;
                }
            }
            i++;
        }
        loops/=2;
    }
}

static uint8_t level_gap[]={ 16, 16, 8, 8, 4 };
int * terrain_generate(uint8_t level) {
    int i, gap=level_gap[level-1];
    /* first set all to max y */
    for(i=0; i<=TERRAIN_LINES;i++)
        eps[i]=0;
    /* "variance" */
    int var = TERRAIN_VAR + TERRAIN_LEVEL_MUL * level;
    /* now populate points */
    eps[0] = TERRAIN_MAX_Y - rand()%var;
    for(i=gap;i<=TERRAIN_LINES;i+=gap)
        eps[i] = TERRAIN_MAX_Y - rand()%var;
    /* evolve terrain */
    terrain_evolve(eps,gap);
    /* last height is equal to first height */
    eps[TERRAIN_LINES]=eps[0];
    return eps;
}

void terrain_draw(int *terrain, int i0, int i1, bool bold) {
    /* make sure we are not outside */
    if (i0<0||i1<0) return;
    /* delta */
    int x = i0 * TERRAIN_DX, i;
    /* first erase! */
    gsetcolor(CO_BACK);
    for (i=i0;i<=i1;i++) { 
        gdrawline(x,terrain[i],x + TERRAIN_DX,terrain[i+1]);
        gdrawline(x,terrain[i]+1,x + TERRAIN_DX,terrain[i+1]+1);
        gdrawline(x,terrain[i]-1,x + TERRAIN_DX,terrain[i+1]-1);
        x+=TERRAIN_DX;
    }
    /* now draw */
    x = i0 * TERRAIN_DX;
    gsetcolor(CO_FORE);
    for (i=i0;i<=i1;i++) { 
        gdrawline(x,terrain[i],x + TERRAIN_DX,terrain[i+1]);
        if (bold) {
            gdrawline(x,terrain[i]+1,x + TERRAIN_DX,terrain[i+1]+1);
            gdrawline(x,terrain[i]-1,x + TERRAIN_DX,terrain[i+1]-1);
        }
        x+=TERRAIN_DX;
    }
}

/* find affected terrain lines */
void terrain_affected_lines(rect_t *rect, int *i0, int *i1) {
    /* calculate "affected lines" of the terrain */
    *i0=rect->x0 / TERRAIN_DX;
    *i1=rect->x1 / TERRAIN_DX;
}

/* calculate height */
int terrain_height(int *terrain, rect_t *rect) {
    /* get affected lines */
    int i0,i1;
    terrain_affected_lines(rect,&i0,&i1);
    /* calc average height */
    unsigned int sum=0, n=0;
    for (int i=i0;i<i1;i++) {
        sum+=terrain[i];n++;
    }
    /* and subtract from rect */
    return (sum/n)-(rect->y0+LANDER_H/2);
}

/* cohen sutherland */
static uint8_t clip_code(int x, int y, rect_t *rect) {
    /* assume pt inside rect */
    int code = PT_INSIDE;
    if (x < rect->x0) /* to the left of rectangle */
        code |=PT_LEFT;
    else if (x > rect->x1) /* to the right of rectangle */
        code |= PT_RIGHT;
    if (y < rect->y0) /* below the rectangle */
        code |= PT_BOTTOM;
    else if (y > rect->y1) /* above the rectangle */
        code |= PT_TOP;
    return code;
}

bool terrain_collision(int *terrain, int i0, int i1, rect_t *rect, int *miny, int *maxy) {
    /* make sure we are not outside */
    if (i0<0||i1<0) return false;
    /* detect collision */
    bool collision=false;
    uint8_t cc0,cc1;
    /* delta */
    int x = i0 * TERRAIN_DX, i;
    *miny=INT_MAX; *maxy=INT_MIN;
    for (i = i0+1; i<=i1;i++) {
        cc0=clip_code(x,terrain[i-1],rect);
        cc1=clip_code(x+TERRAIN_DX,terrain[i],rect);
        if ((cc0==0) && (cc1==0)) 
            collision=true;
        /* toggle min and max */
        if (*miny>terrain[i]) *miny=terrain[i];
        if (*miny>terrain[i-1]) *miny=terrain[i-1];
        if (*maxy<terrain[i]) *maxy=terrain[i];
        if (*maxy<terrain[i-1]) *maxy=terrain[i-1];
        /* next x */
        x+=TERRAIN_DX;
    }
    return collision;
}