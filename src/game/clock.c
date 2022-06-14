/*
 * clock.c
 *
 * game master clock!
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

#define MAX_CLOCK   10
int clock;

void clk_init() { clock=MAX_CLOCK; }

void clk_tick() {
    clock--;
    if (clock==0)
        clock=MAX_CLOCK;
}