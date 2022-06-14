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

/* ----- definitions ------------------------------------------------------- */
extern void clk_init();
extern bool intro_run(g_t *g);
extern void game_run(g_t *g);

/* ----- main loop --------------------------------------------------------- */
int main() {

    /* initialize game clock */
    clk_init();

    /* enter graphics mode */
    g_t* g=ginit(RES_1024x512);

    /* show intial page... */
    while (intro_run(g)) {
        game_run(g);
        while(kbhit()==0);
    }

    /* clear screen */
    gcls(g);

    /* exit graphics mode */
    gexit(g);

    /* all well.. */
    return 0;
}