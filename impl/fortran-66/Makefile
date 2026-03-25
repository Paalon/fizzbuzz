NAME = fizzbuzz
FLAGS = -std=legacy -fdec -Wall -Wpedantic -O2
COMPILER = gfortran

$(NAME): $(NAME).f
	$(COMPILER) $(FLAGS) -o $(NAME) $(NAME).f

.PHONY: clean, run
.SILENT: run

clean:
	rm $(NAME)

run: $(NAME)
	./$(NAME)
