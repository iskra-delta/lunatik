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
#include <game/score.h>
#include <game/intro.h>
#include <game/terrain.h>


static game_t _game;
game_t *game_init() {
    /* start the game at level 1 */
    _game.level=1;
    /* calcuate remaining fuel based on level and
       set initial score to 0 */
    score_set(SCORE_FUEL,(GAME_LEVELS - _game.level + 1) * FUEL_UNIT);
    score_set(SCORE_RESULT,0);
    /* set initial velocity and thrust */
    _game.vx = LANDER_INIT_VX;
    _game.vy = LANDER_INIT_VY;
    _game.thrust = THRUST_NONE;
    /* update score board */
    score_set(SCORE_HSPEED,10 * _game.vx);
    score_set(SCORE_VSPEED,10 * _game.vy);
    /* lives */
    _game.lives=3;
    score_set(SCORE_LIVES,_game.lives);
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
    _game.lpos.lr.x0=LANDER_MIN_X + LANDER_INIT_X;  
    _game.lpos.lr.y0=LANDER_MIN_Y + LANDER_INIT_Y;
    lander_upd_rect(&(_game.lpos.lr));
    _game.lpos.tx0=-1;
    _game.lpos.tx1=-1;
    /* same for prev position on both pages */
    memcpy(&(_game.lprevpos[0]), &(_game.lpos), sizeof(lpos_t));
    memcpy(&(_game.lprevpos[1]), &(_game.lpos), sizeof(lpos_t));
    /* initial repaint of game elemets*/
    _game.update_lander=true;
    /* return pointer to initialized game! */
    return &_game;
}



uint8_t game_draw_background(game_t *g) {
    /* set write page to 1
       assumption: current page is 0 */
    gsetpage(PG_WRITE,1);
    /* draw scoreboard... */
    score_draw_board();
    for (int id=SCORE_FUEL; id<=SCORE_RESULT; id++)
        score_draw_label(id);
    terrain_draw(g->terrain, 0, TERRAIN_LINES, false);
    /* now clear screen 0 and switch display to page 1 */
    gcls();
    gsetpage(PG_DISPLAY,1);
    /* finally, draw background for screen 0 */
    gsetpage(PG_WRITE,0);
    /* draw scoreboard (on both pages)... */
    score_draw_board();
    for (int id=SCORE_FUEL; id<=SCORE_RESULT; id++)
        score_draw_label(id);
    terrain_draw(g->terrain, 0, TERRAIN_LINES, false);
    /* and return current page! */
    return 0;
}


static uint8_t game_next_page(uint8_t page) {
    if (page) return 0; else return 1;
}


void game_run() {

    /* initialize game! */
    game_t *g=game_init();

    /* generate the terrain */
    g->terrain=terrain_generate(g->level);

    /* draw background, it returns current
       display page and we want to start on next page... */
    g->page = game_next_page(game_draw_background(g));
    gsetpage(PG_WRITE, g->page);

    /* affected terrain, set height */
    score_set(SCORE_ALT,terrain_height(g->terrain,&(g->lpos.lr)));

    /* main game loop! */
    bool exit=false;
    uint8_t result=0;
    while(!exit) {

        /* handle drawing to display page */
        if (g->page!=INVALID_PAGE
            || g->update_lander) {
                
                /* erase on previous and draw on current position! */
                lander_erase(&(g->lprevpos[g->page].lr));
                lander_draw(&(g->lpos.lr), g->lpos.angle,g->thrust);
                
                /* update the scoreboard too */
                score_draw_board();

                /* update previous terrin!  */
                terrain_draw(
                    g->terrain,
                    g->lprevpos[g->page].tx0,
                    g->lprevpos[g->page].tx1,
                    false);

                /* if low altitude, bold affected terrain */
                if (score_get(SCORE_ALT) < 2 * LANDER_H) 
                    /* and draw! */
                    terrain_draw(g->terrain,g->lpos.tx0,g->lpos.tx1,true);

                /* remember current position as prev. position*/
                memcpy(&(g->lprevpos[g->page]), &(g->lpos), sizeof(lpos_t));

                /* signal end of paing cycle */
                g->update_lander=false;
            }

        /* process keyboard events */
        exit=!kbd_scan(
            g,
            (kbd_handler_t)ev_kbd_left,
            (kbd_handler_t)ev_kbd_right,
            (kbd_handler_t)ev_kbd_space,
            (kbd_handler_t)ev_kbd_space,
            (kbd_handler_t)ev_kbd_space,
            NULL,
            NULL
        );
        /* process timed events */
        clk_tick(g);

        /* switch pages? */
        if (g->update_lander) {
            /* and switch page */
            gsetpage(PG_DISPLAY, g->page);
            g->page=game_next_page(g->page);
            gsetpage(PG_WRITE, g->page);
        } 

        /* collision detect with real sprite rect*/
        rect_t real_lander_rect={
            g->lpos.lr.x0+LANDER_H_MARG,
            g->lpos.lr.y0+LANDER_V_MARG,
            g->lpos.lr.x1-LANDER_H_MARG,
            g->lpos.lr.y1-LANDER_V_MARG};
        int miny, maxy;
        if (terrain_collision(
            g->terrain,
            g->lpos.tx0,
            g->lpos.tx1,
            &real_lander_rect,
            &miny,&maxy)
        ) {
            result=0;
            if (g->lpos.angle!=0)
                result|=R_BAD_ANGLE;
            if (g->vx>3)
                result|=R_BAD_HSPEED;
            if (g->vy>4)
                result|=R_BAD_VSPEED;
            if (abs(maxy-miny)>2)
                result|=R_BAD_TERRAIN;
            printf("\n\nres=%02x\n",result);
            if (result) break;
        }
    }
    /* display result */
    gsetpage(PG_WRITE,game_next_page(g->page));
    if (!result) 
        gputtext(&astro_font, "TELEMARK LUNATIK!", 50, 100);
    else
        gputtext(&astro_font, "NA LUNI NIHCE NE SLISI VASIH KRIKOV!", 300, 210);
    while (!kbhit());

    /* clear page 1 before leaving */
    gsetpage(PG_DISPLAY|PG_WRITE,1);
    gcls();
    /* leave the game! prepare for intro page... */
    gsetpage(PG_DISPLAY|PG_WRITE,0);

}