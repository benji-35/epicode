/*
** EPITECH PROJECT, 2022
** epicode
** File description:
** epicode
*/

#include <epicode.h>

int main(int ac UNUSED, text av UNUSED) {
    WINDOW *win = initscr();
    printw("Test Hello World");
    refresh();
    getch();
    delwin(win);
    endwin();
    return 0;
}