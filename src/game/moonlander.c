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
extern bool intro_run();
extern void game_run();

/* ----- main loop --------------------------------------------------------- */
int main() {

    /* enter graphics mode */
    ginit(RES_1024x512);

    /* show intial page... */
    while (intro_run())
        game_run();

    /* clear screen */
    gcls();

    /* exit graphics mode */
    gexit();

    /* all well.. */
    return 0;
}