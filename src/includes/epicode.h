/*
** EPITECH PROJECT, 2022
** epicode
** File description:
** epicode
*/

#ifndef EPICODE_H_
#define EPICODE_H_

#include <kap/klib.h>
#include <ncurses.h>
#include <stdlib.h>

typedef struct epicode_args_s eargs_t;
typedef struct epicode_window_s epiwin_t;
typedef enum window_type_e wintype_t;

enum window_type_e {
    CODE,
    DIRECTORY,
    PROPOSALS
};

struct epicode_args_s {
    bool help;
};

struct epicode_window_s {
    WINDOW *window;
    bool target;
    wintype_t type;
    int z_index;
};

struct engine_s {
    string dpath;
    eargs_t *args;
    klist_t *windows;
};

#endif /* !EPICODE_H_ */
