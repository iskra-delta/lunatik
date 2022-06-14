/*
 * moonlander.c
 *
 * the moon lander!
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

extern void title_L, title_U, title_N,
    title_A, title_T, title_I, title_K;
void *letters[]={&title_L,&title_U, &title_N,
    &title_A, &title_T, &title_I, &title_K};
void intro_title(g_t *g, coord x, coord y, uint8_t spacing) {
    int n=sizeof (letters)/sizeof(void *);
    uint8_t width, height;
    for (int i=0;i<n;i++) {
        gputglyph(g,letters[i],x,y);
        gmeasureglyph(letters[i],&width,&height);
        if (i==3) width-=32; /* hardcoded kerning */
        x=x+width+spacing;
    }
}

extern void idp8x16_font;
void intro_subtitle(g_t *g, coord x, coord y, int vspacing, int moff, int koff) {
    /* subtitle */
    gputtext(g, &idp8x16_font, "Kapitan LUNATIK, potrebujemo vas!", x, y);
    /* meni */
    x+=moff;
    gputtext(g, &idp8x16_font, "PRESLEDEK", x, y+vspacing);
    gputtext(g, &idp8x16_font, "PRESLEDEK", x+1, y+vspacing);
    //gputtext(g, &idp8x16_font, "PRESLEDEK", x, y+vspacing-1);
    //gputtext(g, &idp8x16_font, "PRESLEDEK", x+1, y+vspacing-1);
    gputtext(g, &idp8x16_font, "za igro.", x+koff, y+vspacing);

    gputtext(g, &idp8x16_font, "TIPKA 'K'", x, y+2*vspacing);
    gputtext(g, &idp8x16_font, "TIPKA 'K'", x+1, y+2*vspacing);
    //gputtext(g, &idp8x16_font, "TIPKA 'Q'", x, y+2*vspacing-1);
    //gputtext(g, &idp8x16_font, "TIPKA 'Q'", x+1, y+2*vspacing-1);
    gputtext(g, &idp8x16_font, "za konec.", x+koff, y+2*vspacing);
}

#define NO_STARS        5
#define NO_LAYERS       3
static int sx[NO_LAYERS][NO_STARS];
static int prevsx[NO_LAYERS][NO_STARS];
static int sy[NO_LAYERS][NO_STARS];
static int sclk[NO_LAYERS][NO_STARS];
static int sclkmax[NO_LAYERS];
void intro_init_starfield() {

    /* smart initalization, don't overlap titles! */
    
    /* layer 0 */
    sx[0][0]=512; sy[0][0]=20;
    sx[0][1]=128; sy[0][1]=280;
    sx[0][2]=700; sy[0][2]=345;
    sx[0][3]=70; sy[0][3]=550;
    sx[0][4]=150; sy[0][4]=135;

    /* layer 1 */
    sx[1][0]=256; sy[1][0]=100;
    sx[1][1]=10; sy[1][1]=290;
    sx[1][2]=950; sy[1][2]=400;
    sx[1][3]=160; sy[1][3]=170;
    sx[1][4]=320; sy[1][4]=470;

    /* layer 2 */
    sx[2][0]=400; sy[2][0]=70;
    sx[2][1]=600; sy[2][1]=140;
    sx[2][2]=800; sy[2][2]=450;
    sx[2][3]=300; sy[2][3]=500;
    sx[2][4]=200; sy[2][4]=120;

    /* initialize clock! */
    for(int j=0;j<NO_LAYERS;j++) {
        for(int i=0;i<NO_STARS;i++) { 
            sclk[j][i] = 0; /* init clock */
            prevsx[j][i]=sx[j][i];
        }
        sclkmax[j]= j + j;
    }
}

extern void drawstar(g_t *g, coord x, coord y, int layer);
void intro_draw_star(g_t *g, int x[NO_LAYERS][NO_STARS], int i, int j, bool remove) {
    if (remove)
        gsetcolor(g,CO_BACK);
    else
        gsetcolor(g,CO_FORE);
    drawstar(g,x[j][i],sy[j][i],j);
}

void intro_draw_starfield(g_t *g) {
    for(int i=0;i<NO_STARS;i++) 
        for(int j=0;j<NO_LAYERS;j++) {
            intro_draw_star(g,prevsx,i,j,true);
            intro_draw_star(g,sx,i,j,false);
        }
}

#define STAR_STEP 2
extern void clk_tick();
void intro_move_stars(g_t *g) {
    intro_draw_starfield(g);
    for(int i=0;i<NO_STARS;i++) 
        for(int j=0;j<NO_LAYERS;j++) {
            /* increase star clock */
            sclk[j][i] = sclk[j][i] + 1; 
            if (sclk[j][i]>sclkmax[j]) {
                /* move star and increase clock */
                prevsx[j][i]=sx[j][i]; /* remember previous */
                if (sx[j][i]>0)
                    sx[j][i] = sx[j][i] - STAR_STEP;
                else 
                    sx[j][i] = 1023;
                sclk[j][i] = 0;
            } 
        }
}

bool intro_run(g_t *g) {

    /* intialize stars! */
    intro_init_starfield();

    /* clear screen */
    gcls(g);
    
    /* show stars and titles */
    intro_draw_starfield(g); 

    intro_title(g, 140, 180, 8);
    intro_subtitle(g, 380, 300, 25, 40, 80);

    /* main loop */
    while (true) {
        char ch=kbhit();
        if (ch=='K' || ch=='k')
            return false;
        else if (ch==' ')
            return true;
        intro_move_stars(g);
    }
}