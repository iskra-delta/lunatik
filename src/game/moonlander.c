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
#include <stdio.h>
#include <ugpx.h>

extern void title_L, title_U, title_N,
    title_A, title_T, title_I, title_K;
void *letters[]={&title_L,&title_U, &title_N,
    &title_A, &title_T, &title_I, &title_K};

void draw_title(g_t *g, coord x, coord y, uint8_t spacing) {
    int n=sizeof (letters)/sizeof(void *);
    uint8_t width, height;
    for (int i=0;i<n;i++) {
        gputglyph(g,letters[i],x,y);
        gmeasureglyph(letters[i],&width,&height);
        if (i==3) width-=32; /* hardcoded kerning */
        x=x+width+spacing;
    }
}

extern void test;

/* ----- main loop --------------------------------------------------------- */
int main() {

    /* enter graphics mode */
    g_t* g=ginit(RES_1024x512);
    gcls(g);

    /*
    draw_title(g, 140, 180, 8);
    draw_title(g, 141, 180, 8);
    draw_title(g, 140, 181, 8);
    draw_title(g, 141, 181, 8);
    */

   int i=gputglyph(g,&test,100,100);

    /* main loop */
    bool exit=false;
    while (!exit) {
        exit=kbhit()!=0;
    }

    /* exit graphics mode */
    gexit(g);

    /* all well.. */
    return 0;
}