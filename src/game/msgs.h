/*
 * msgs.h
 *
 * life lost messages header
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 16.07.2022   tstih
 *
 */
#ifndef __MSGS_H__
#define __MSGS_H__

#include <stdint.h>

/* result flags */
#define R_SUCCESS       0x00
#define R_BAD_ANGLE     0x01
#define R_BAD_VSPEED    0x02
#define R_BAD_HSPEED    0x04
#define R_BAD_TERRAIN   0x08
#define R_NO_COLLISION  0xff

/* row spacing */
#define MSG_ROW_H       20

/* explain result */
extern int msg_explain(int x, int y, uint8_t flags);

/* failure */
extern int msg_failure(int x, int y);

/* success */
extern int msg_success(int x, int y);

/* level 5 finished */
extern int msg_the_end(int x, int y);

/* press any key */
extern int msg_press_any_key(int x, int y);

/* astro font */
extern void astro_font;

#endif /* __MSGS_H__ */