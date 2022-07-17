/*
 * msgs.c
 *
 * life lost messages 
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2022 Tomaz Stih
 *
 * 16.07.2022   tstih
 *
 */
#include <stdlib.h>
#include <ugpx.h>

#include <game/msgs.h>

/* you're dead messages */
char *demotivational[]={
    "BOLJE, KOT DA IZVE, DA MU JE SOPROGA POBEGNILA Z JOGA TRENERJEM.",
    "NAREDITE ZAZNAMEK! NJEGOVE ZADNJE BESEDE SO BILE: AAAAA-AA-A.",
    "KAJ JE PA TO ZABOBNELO?",
    "JA KAKO GA BOMO PA ZDAJ SPRAVILI NAZAJ V IZOLO?",
    "DIREKTOR, ALI LAHKO JAZ DOBIM NJEGOVO PARKIRNO MESTO?",
    "SLAVA MU!"
};

/* success messages */
char *victory[]={
    "TELEMARK, LUNATIK. TELEMARK!",
    "MEDALJA JE NA POTI, DENARNA NAGRADA PA SE JE IZGUBILA.",
    "MAESTRO!"
};

/* ouf of level messages */
char *theend="GENERAL LUNATIK, MISIJA JE USPELA. VRNITE SE V IZOLO.";

/* and flags */
char *fuckups[]= {
    "PREVELIK NAKLONSKI KOT PLOVILA.",
    "PREVELIKA VER. HITROST.",
    "PREVELIKA HOR. HITROST.",
    "PRESTRM TEREN."
};

int msg_explain(int x, int y, uint8_t flags) {
    int n=0;
    uint8_t errs[4];
    if (flags&R_BAD_ANGLE) errs[n++]=0;
    if (flags&R_BAD_VSPEED) errs[n++]=1;
    if (flags&R_BAD_HSPEED) errs[n++]=2;
    if (flags&R_BAD_TERRAIN) errs[n++]=3;
    gputtext(&astro_font,"NA GROB MU BOMO NAPISALI",x,y); y+=MSG_ROW_H; x+=MSG_ROW_H;
    for (int i=0;i<n;i++) {
        gputtext(&astro_font,fuckups[errs[i]],x,y);
        y+=MSG_ROW_H;
    }
    return y + MSG_ROW_H;
}

int msg_failure(int x, int y) {
    int messages=sizeof(demotivational)/sizeof(char *);
    gputtext(&astro_font,demotivational[rand()%messages],x,y);
    return y+MSG_ROW_H + MSG_ROW_H;
}

int msg_success(int x, int y) {
    int messages=sizeof(victory)/sizeof(char *);
    gputtext(&astro_font,victory[rand()%messages],x,y);
    return y+MSG_ROW_H + MSG_ROW_H;
}

int msg_the_end(int x, int y) {
    gputtext(&astro_font,theend,x,y);
    return y+MSG_ROW_H + MSG_ROW_H;
}

int msg_press_any_key(int x, int y) {
    gputtext(&astro_font,"PRITISNITE KATEROKOLI TIPKO.",x,y);
    return y+MSG_ROW_H + MSG_ROW_H;
}