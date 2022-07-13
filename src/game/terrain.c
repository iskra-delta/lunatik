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

void terrain_draw(int *terrain) {
    int x=0, dx=(TERRAIN_MAX_X+1)/TERRAIN_LINES, i;
    for (i=0;i<=TERRAIN_LINES;i++) { 
        gdrawline(
            x,
            terrain[i],
            x + dx,
            terrain[i+1]);
        x+=dx;
    }
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

/* find affected terrain lines */
static void get_affected_lines(rect_t *rect, int *i0, int *i1) {
    /* calculate "affected lines" of the terrain */
    uint8_t dx=(TERRAIN_MAX_X+1) / TERRAIN_LINES;
    *i0=rect->x0 / dx;
    *i1=rect->x1 / dx;
}

/* calculate height */
int terrain_height(int *terrain, rect_t *rect) {
    /* get affected lines */
    int i0,i1;
    get_affected_lines(rect,&i0,&i1);
    /* calc average height */
    unsigned int sum=0, n=0;
    for (int i=i0;i<i1;i++) {
        sum+=terrain[i];n++;
    }
    /* and subtract from rect */
    return (sum/n)-(rect->y0+LANDER_H/2);
}

void terrain_collision(int *terrain, rect_t *rect) {
    
    

    
}