##
## EPITECH PROJECT, 2021
## epicode
## File description:
## Makefile
##

C_STANDARD_FLAGS =
C_WARNING_FLAGS = -Wextra -Wall -g
INCLUDE_FLAGS =

C_FLAGS = $(C_WARNING_FLAGS) $(INCLUDE_FLAGS)

GCC = gcc
INCLUDE_FLAGS += -I libs/kap-lib/include -I src/includes

LIB_FLAGS += -L libs/kap-lib -lkap -lcurses

PATH_MAIN = src/
PATH_ARGS = $(PATH_MAIN)args/
PATH_ARGS = $(PATH_SYSTEM)system/


SRC                 =   $(PATH_MAIN)epicode.c

OBJ = $(SRC:.c=.o)


all: build_sub epicode
.PHONY : all

build_sub:
	@make -sC libs/kap-lib

.c.o:
	@echo "$(notdir $(CURDIR)): C '$<'"
	@$(GCC) $(C_FLAGS) -c -o $*.o $<

clean:
	@find . \( -name "*.o" -o -name "*.a" \) -delete
	@find -name "epicode" -delete
.PHONY : clean

epicode: $(OBJ)
	@$(GCC) -o $@ $(OBJ) $(LIB_FLAGS) $(C_FLAGS)
	@rm -f $(OBJ)

fclean: clean
	@find . -type f -name 'vgcore*' -delete
	@rm -rf epicode epicode.dSYM
	@make clean -sC libs/kap-lib
.PHONY : fclean

re: fclean all
.PHONY : re