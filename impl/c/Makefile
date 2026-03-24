NAME = fizzbuzz
CC = cc
FLAGS = -std=c23 -O2 -Wall

$(NAME): $(NAME).c
	$(CC) $(FLAGS) -o $(NAME) $(NAME).c

.PHONY: clean, run
.SILENT: run

clean:
	rm $(NAME)

run: $(NAME)
	./$(NAME)
