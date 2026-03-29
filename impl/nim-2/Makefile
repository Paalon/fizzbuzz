TARGET = fizzbuzz
SOURCE = $(TARGET).nim
FLAGS = -d:release

$(TARGET): $(SOURCE)
	nim c $(FLAGS) $(SOURCE)

.PHONY: clean run
.SILENT: run

clean:
	rm fizzbuzz

run:
	./$(TARGET)
