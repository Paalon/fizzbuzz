NAME = fizzbuzz
SOURCE = $(NAME).go
TARGET = $(NAME)

.PHONY: clean run
.SILENT: run

$(TARGET): $(SOURCE)
	go build $(SOURCE)

clean:
	go clean $(SOURCE)

run: $(TARGET)
	./$(TARGET)
