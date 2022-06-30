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
#include <game/intro.h>


static void *letters[]={&title_L,&title_U, &title_N, &title_A, &title_T, &title_I, &title_K};
void intro_title(coord x, coord y, uint8_t spacing) {
    int n=sizeof (letters)/sizeof(void *);
    uint8_t width, height;
    for (int i=0;i<n;i++) {
        gputglyph(letters[i],x,y);
        gmeasureglyph(letters[i],&width,&height);
        if (i==3) width-=32; /* hardcoded kerning */
        x=x+width+spacing;
    }
}


void intro_subtitle(coord x, coord y, int vspacing, int moff, int koff) {
    /* subtitle */
    gputtext(&idp8x16_font, "Kapitan LUNATIK, potrebujemo vas!", x, y);
    /* meni */
    x+=moff;
    gputtext(&idp8x16_font, "PRESLEDEK", x, y+vspacing);
    gputtext(&idp8x16_font, "PRESLEDEK", x+1, y+vspacing);
    gputtext(&idp8x16_font, "za igro.", x+koff, y+vspacing);
    
    gputtext(&idp8x16_font, "CTRL + C", x, y+2*vspacing);
    gputtext(&idp8x16_font, "CTRL + C", x+1, y+2*vspacing);
    gputtext(&idp8x16_font, "za konec.", x+koff, y+2*vspacing);
}


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


void intro_draw_star(int x[NO_LAYERS][NO_STARS], int i, int j, bool remove) {
    if (remove)
        gsetcolor(CO_BACK);
    else
        gsetcolor(CO_FORE);
    intro_drawstar(x[j][i],sy[j][i],j);
}


void intro_draw_starfield(bool cls) {
    if (cls) gcls();
    for(int i=0;i<NO_STARS;i++) 
        for(int j=0;j<NO_LAYERS;j++) {
            intro_draw_star(prevsx,i,j,true);
            intro_draw_star(sx,i,j,false);
        }
}


void intro_move_stars() {
    intro_draw_starfield(false);
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


bool intro_run() {

    /* intialize stars! */
    intro_init_starfield();

    /* show stars */
    intro_draw_starfield(true); 

    /* show title and subtitle */
    intro_title(140, 180, 8);
    intro_subtitle(380, 300, 25, 40, 80);

    /* main loop */
    while (true) {
        char ch=kbhit();
        if (ch==3)
            return false;
        else if (ch==' ')
            return true;
        intro_move_stars();
    }
}