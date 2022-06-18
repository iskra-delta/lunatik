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

#define LANDER_MIN_X 4
#define LANDER_MAX_X (768-24-4)
#define LANDER_MIN_Y 16
#define LANDER_MAX_Y 460
static int landerx, landery;
static int landercx, landercy;
static char landera, landerca;

#define GRAVITY_CYCLE 70
static int cycle_x, cycle_y, cycle_g;
static int vx, vy;

#define THRUST_DURATION 30
static char thrust;

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
    game_draw_lem(g, 800, 10);
    
    /* draw scores */
    game_draw_score(g, 800, 100, 25, 140);

    /* draw demo */
    gputtext(g,&led_font,"DEMO                       LUNATIK PRIHAJA!            1.JULIJA 2022",10,480);
}


void game_run(g_t *g) {

    /* game parameters! */
    landery=LANDER_MIN_Y;
    landerx=LANDER_MIN_X;
    landera=0;
    vx=6; vy=0;
    cycle_x=cycle_y=0;
    cycle_g=0;

    /* clear screen */
    gcls(g);

    /* draw background */
    game_draw_background(g);

    bool clear=false;
    bool exit=false;
    while(!exit) {

        if (clear) {
            gsetcolor(g,CO_BACK);
            draw_lander(g,
                landerca, 
                landercx, 
                landercy);
            gsetcolor(g,CO_FORE);
            clear=false;
        }

        /* draw lander */
        draw_lander(g,
            landera, 
            landerx, 
            landery);

        /* remember previous position */
        landerca=landera;
        landercx=landerx;
        landercy=landery;

        /* increase game cycles */
        cycle_x++;
        cycle_y++;

        /* main game loop */
        char c=kbhit();
        switch(c) {
            case 'p':
            case 'P':
                break;
            case 'o':
            case 'O':
                break;
            case 27:
                if (!kbhit()) /* escape? */
                    exit=true;
                else {
                    c=kbhit();
                    if (c=='A' || c=='B') { /*up*/
                        clear=true;
                        if (!thrust) thrust=1;
                    } else if (c=='C') { /* right */
                        clear=true;
                        if (landera==23)
                            landera=0;
                        else
                            landera++;
                    } else if (c=='D') { /* left */
                        clear=true;
                        if (landera==0)
                            landera=23;
                        else
                            landera--;
                    }
                }
                break;
            case 3: /* CTRL+C */
                exit=true;
            case ' ':
                clear=true;
                if (!thrust) thrust=1;
                break;
        }

        /* cycle logic */
        if (!exit) {
            /* test for x cycle */
            if (10 - abs(vx) <= cycle_x)
            {
                if (vx >= 0)
                    landerx++;
                else
                    landerx--;

                if (landerx == LANDER_MAX_X) 
                    landerx=LANDER_MIN_X + 1;
                else if (landerx < LANDER_MIN_X)
                    landerx=LANDER_MAX_X - 1;
                cycle_x=0;
                clear=true;
            }

            /* test for y cycle */
            if (10 - abs(vy) <= cycle_y)
            {
                if (vy >= 0)
                    landery++;
                else
                    landery--;
                if (landery>LANDER_MAX_Y)
                    landery=LANDER_MAX_Y;
                if (landery<LANDER_MIN_Y)
                    landery=LANDER_MIN_Y;
                cycle_y = 0;
                clear=true;
            }

            /* thrust cycle */
            if (thrust > 0  && thrust < THRUST_DURATION) 
                thrust = thrust + 1;
            if (thrust >= THRUST_DURATION)
            {
                thrust = 0;

                /* calculate thrust */
                int thrustx=0;
                int thrusty=3;
                
                vy = vy - thrusty;
                if (vy < -10) vy = -10;
                if (vy > 10) vy = 10;
                vx = vx - thrustx;
                if (vx < -10)vx = -10;
                if (vx > 10) vx = 10;
            }

            /* gravity cycle */
            cycle_g++;
            if (cycle_g>= GRAVITY_CYCLE)
            {
                cycle_g = 0;
                if (vy<10) vy++;
            }
        }
    }
}