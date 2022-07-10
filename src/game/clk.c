/*
 * clk.c
 *
 * game clock, enables various counters
 * based on same clock...
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 03.07.2022   tstih
 *
 */
#include <stdint.h>
#include <stdlib.h>

#include <game/clk.h>

/* clock handler array and current len */
static clk_t _clkh[MAX_CLK_HANDLERS];
static uint8_t _clkhlen = 0;

clk_t* clk_attach(uint8_t ticks, clk_handler_t handler) {
    
    /* overflow? */
    if (_clkhlen>=MAX_CLK_HANDLERS) return NULL;
    
    /* initialize struct. */
    _clkh[_clkhlen].counter=0;
    _clkh[_clkhlen].ticks=ticks;
    _clkh[_clkhlen].handler=handler;

    /* ret value */
    clk_t *retv=&(_clkh[_clkhlen]);

    /* allocate! */
    _clkhlen++;

    /* and return it. */
    return retv;
}

void clk_tick(void *clkhpar) {
    /* for each registered handler */
    for (uint8_t i=0; i<_clkhlen; i++) {
        if (_clkh[i].counter>=_clkh[i].ticks) {
            _clkh[i].counter=0;
            _clkh[i].handler(clkhpar);
        }
        else _clkh[i].counter =_clkh[i].counter + 1;
    }
}

void clk_setticks(clk_t *clkh, uint8_t ticks) {
    clkh->ticks=ticks;
}

void clk_clr() {
    _clkhlen = 0;
}