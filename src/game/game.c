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

extern void terra_draw(g_t *g, void *t);
extern void * terra_pick(int level);
extern void draw_lander(g_t *g, uint8_t angle, int x, int y);
void game_draw_background(g_t *g) {
    
    /* draw game workspace */
    rect_t r = { 0, 0, 767, 511 };
    gdrawrect(g,&r);

    /* draw game terrain */
    terra_draw(g, terra_pick(0));

    /* draw lem */
    game_draw_lem(g, 10, 10);
    
    /* draw scores */
    game_draw_score(g, 800, 10, 25, 140);

    /* draw demo */
    gputtext(g,&led_font,"DEMO                       LUNATIK PRIHAJA!            1.JULIJA 2022",10,480);

    /* finally, put lander 
    draw_lander(g,0,20,20);
    */
}

void game_run(g_t *g) {
    
    /* clear screen */
    gcls(g);

    /* draw background */
    game_draw_background(g);


}