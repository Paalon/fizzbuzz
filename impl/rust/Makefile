NAME = fizzbuzz
SOURCE = $(NAME).rs
TARGET = $(NAME)

$(TARGET): $(SOURCE)
	rustc -O $(SOURCE)

.PHONY: clean run
.SILENT: run

clean:
	rm ./$(TARGET)

run:
	./$(TARGET)
