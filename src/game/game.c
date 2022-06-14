/*
 * game.c
 *
 * the game logic
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 14.06.2022   tstih
 *
 */
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <ugpx.h>



void game_draw_background(g_t *g) {
    

    /* draw game workspace */

    /* draw some stars in the background */
    //gputtext(g,&stars_font,"ABCDEFGH",100,100);

}

void game_run(g_t *g) {
    
    /* clear screen */
    gcls(g);

    /* draw background */
    game_draw_background(g);


}