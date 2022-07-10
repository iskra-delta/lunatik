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
#include <string.h>

#include <ugpx.h>

#include <game/game.h>
#include <game/kbd.h>
#include <game/events.h>
#include <game/lander.h>

static game_t _game;
game_t *game_init() {
    /* start the game at level 1 */
    _game.level=1;
    /* calcuate remaining fuel based on level and
       set initial score to 0 */
    _game.fuel= (GAME_LEVELS - _game.level + 1) * FUEL_UNIT;
    _game.score=0;
    /* set initial velocity and thrust */
    _game.vx = LANDER_INIT_VX;
    _game.vy = LANDER_INIT_VY;
    _game.thrust = THRUST_NONE;
    /* create game clocks */
    clk_clr();
    _game.vxclk=clk_attach( LANDER_MAX_VEL-_game.vx, (clk_handler_t)ev_clk_hmove);
    _game.vyclk=clk_attach( LANDER_MAX_VEL-_game.vy, (clk_handler_t)ev_clk_vmove);
    _game.gravityclk=clk_attach( CLK_GRAVITY, (clk_handler_t)ev_clk_gravity);
    _game.thrustclk=clk_attach( CLK_THRUST, (clk_handler_t)ev_clk_thrust);
    /* set pages */
    _game.page = INVALID_PAGE;
    /* initial lander position */
    _game.lpos.angle=LANDER_INIT_A;
    _game.lpos.x=LANDER_MIN_X + LANDER_INIT_X;  
    _game.lpos.y=LANDER_MIN_Y + LANDER_INIT_Y;
    /* same for prev position */
    memcpy(&(_game.lprevpos), &(_game.lpos), sizeof(lpos_t));
    /* initial repaint */
    _game.update_lander=true;
    /* return pointer to initialized game! */
    return &_game;
}

uint8_t game_draw_background(game_t *g) {
    g;
    /* screen rectangle! */
    rect_t screen={0,0,1023,511};
    /* set write page to 1
       assumption: current page is 0 */
    gsetpage(PG_WRITE,1);
    /* draw rect around screen... */
    gdrawrect(&screen);
    /* now clear screen 0 and switch display to page 1 */
    gcls();
    gsetpage(PG_DISPLAY,1);
    /* finally, draw background for screen 0 */
    gsetpage(PG_WRITE,0);
    gdrawrect(&screen);
    /* and return current page! */
    return 0;
}

uint8_t game_next_page(uint8_t page) {
    if (page) return 0; else return 1;
}


extern char *scorez(int i, char *a);
void game_run() {

    /* initialize game! */
    game_t *g=game_init();

    /* draw background, it returns current
       display page and we want to start on next page... */
    g->page = game_next_page(game_draw_background(g));
    gsetpage(PG_WRITE, g->page);

    /* main game loop! */
    bool exit=false;
    while(!exit) {

        /* handle drawing to display page */
        if (g->page!=INVALID_PAGE
            || g->update_lander) {
                
                /* erase on previous and draw on current position! */
                lander_erase(g->lprevpos.x, g->lprevpos.y);
                lander_draw(g->lpos.x, g->lpos.y, g->lpos.angle,g->thrust);

                /* remember current position as prev. position*/
                memcpy(&(g->lprevpos), &(g->lpos), sizeof(lpos_t));

                /* signal end of paing cycle */
                g->update_lander=false;
            }

        /* process keyboard events */
        exit=!kbd_scan(
            g,
            (kbd_handler_t)ev_kbd_left,
            (kbd_handler_t)ev_kbd_right,
            NULL,
            NULL,
            (kbd_handler_t)ev_kbd_space,
            NULL,
            NULL
        );
        /* process timed events */
        clk_tick(g);

        /* switch pages? */
        if (g->update_lander) {
            gsetpage(PG_DISPLAY, g->page);
            g->page=game_next_page(g->page);
            gsetpage(PG_WRITE, g->page);
        }
    }
    /* clear page 1 before leaving */
    gsetpage(PG_DISPLAY|PG_WRITE,1);
    gcls();
    /* leave the game! prepare for intro page... */
    gsetpage(PG_DISPLAY|PG_WRITE,0);
}