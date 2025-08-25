CC = cc
RM = rm -f

SRC = tetris_data/main.c
CFILES = $(SRC)
INCLUDES = -Iheaders
CFLAGS = -Wall -Wextra -Werror -g
RUN = tetris
OBJ = $(CFILES:.c=.o)

.PHONY: all clean fclean re

all: $(RUN)

$(RUN): $(OBJ)
	$(CC) $(CFLAGS) $(INCLUDES) $(OBJ) -o $(RUN)

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(EXEC)

re: fclean all