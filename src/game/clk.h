/*
 * clk.h
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
#ifndef __CLK_H__
#define __CLK_H__

#include <stdint.h>

#define MAX_CLK_HANDLERS    5

typedef void (*clk_handler_t)(void *);

typedef struct clk_s {
    uint8_t counter;
    uint8_t ticks;
    clk_handler_t handler;
} clk_t;

/* attach new clock handler */
extern clk_t* clk_attach(uint8_t ticks, clk_handler_t handler);

/* increase all clock counters, if tick, then reset and call handlers */
extern void clk_tick(void *clkhpar);

/* set clock ticks and reset counter */
extern void clk_setticks(clk_t *clkh, uint8_t ticks);

/* remove all handlers, clear clock */
extern void clk_clr();

#endif /* __CLK_H__ */