NAME = fizzbuzz
SCRIPT = $(NAME).php

.PHONY: run help
.SILENT: run help

help:
	echo 'PHP implementation of fizzbuzz'
	echo 'Usage: make <command>'
	echo '<command> ::= run'
	echo 'run: run the script'

run: $(SCRIPT)
	php $(SCRIPT)
