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

extern void title_L;
void draw_title(g_t *g) {
    gputsprite(g,&title_L,100,100);
}

/* ----- main loop --------------------------------------------------------- */
int main() {

    /* enter graphics mode */
    g_t* g=ginit(RES_1024x512);

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