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

void game_erase_ship(game_t *g) {
    /* no previous page or no need to update? */
    if (g->page==INVALID_PAGE
        || !g->update_lander) return;
    /* clear area! */
    rect_t sr={
        g->lprevpos.x,
        g->lprevpos.y,
        g->lprevpos.x+32,
        g->lprevpos.y+32 };
    gsetcolor(CO_BACK); gfillrect(&sr);
}

void game_draw_ship(game_t *g) {
    /* no page or no need to update? */
    if (g->page==INVALID_PAGE
        || !g->update_lander) return;
    /* get the right lander based on thrust */
    uint8_t offset=g->thrust * 24;
    /* create ship string */
    char shipstr[2] = { offset + 32 + g->lpos.angle, 0 };
    /* draw ship! */
    gsetcolor(CO_FORE);
    gputtext(
        &ship_font,
        shipstr,
        g->lpos.x,
        g->lpos.y);
}

uint8_t game_next_page(uint8_t page) {
    if (page) return 0; else return 1;
}

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
        game_erase_ship(g);
        game_draw_ship(g);
        g->update_lander=false;

        /* remember last current position */
        memcpy(&(g->lprevpos), &(g->lpos), sizeof(lpos_t));

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