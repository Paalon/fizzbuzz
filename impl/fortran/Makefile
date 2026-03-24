NAME = fizzbuzz
FLAGS = -std=f2023 -Wall -O2
COMPILER = gfortran

$(NAME): $(NAME).f90
	$(COMPILER) $(FLAGS) -o $(NAME) $(NAME).f90

.PHONY: clean

clean:
	rm $(NAME)
