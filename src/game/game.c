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

static int score, fuel, time, height, hspeed, vspeed;

extern void led_font;
char *score_titles[]={
    "REZULTAT", 
    "GORIVO", 
    "PREOST.CAS", 
    "VISINA",
    "HOR.HITROST", 
    "VER.HITROST"};
int *scores[] = {
    &score,
    &fuel,
    &time,
    &height,
    &hspeed, 
    &vspeed
};
void game_draw_score(g_t *g, int x, int y, int ystep, int noff) {
    for(int i=0;i<sizeof(score_titles)/sizeof(char *);i++) {
        /* first print score title */
        gputtext(g,&led_font,score_titles[i],x,y);
        /* now print score */
        gputtext(g,&led_font,"00000",x+noff,y);
        gputtext(g,&led_font,"00000",x+noff+1,y);
        y+=ystep;
    }
}

extern void lem_font;
char *lem[]={"ABCDE","FGHIJ","KLMNO","PQRST","UVWXY"};
void game_draw_lem(g_t *g, int x, int y) {
    for(int i=0;i<sizeof(lem)/sizeof(char *);i++) {
        gputtext(g,&lem_font,lem[i],x,y);
        y+=14;
    }
}

void game_draw_background(g_t *g) {
    
    /* draw game workspace */

    /* draw some stars in the background */
    //gputtext(g,&stars_font,"ABCDEFGH",100,100);

    /* draw lem */
    game_draw_lem(g, 896, 10);
    
    /* draw scores */
    game_draw_score(g, 766, 100, 24, 140);
}

void game_run(g_t *g) {
    
    /* clear screen */
    gcls(g);

    /* draw background */
    game_draw_background(g);


}