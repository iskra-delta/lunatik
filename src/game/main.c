/*
 * main.c
 *
 * the moon lander main()!
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

#include <game/intro.h>
#include <game/game.h>


/* ----- main loop --------------------------------------------------------- */
int main() {

    /* enter graphics mode */
    ginit(RES_1024x512);

    /* clear screen */
    gcls();

    /* show intial page... */
    uint8_t level, lives, game_score;
    while (intro_run()) {
        /* init variables */
        level=1; lives=3; game_score=0; 
        while (
            game_run( &level, &lives, &game_score)
            && level<=5
            && lives>0) {}
    }

    /* clear screen */
    gcls();

    /* exit graphics mode */
    gexit();

    /* all well.. */
    return 0;
}



