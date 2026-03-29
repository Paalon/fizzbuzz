TARGET = fizzbuzz
SOURCE = $(TARGET).nim
FLAGS = -d:release

$(TARGET): $(SOURCE)
	nim c $(FLAGS) $(SOURCE)

.PHONY: clean

clean:
	rm fizzbuzz

run:
	./$(TARGET)
