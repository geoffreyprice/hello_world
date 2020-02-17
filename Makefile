YELLOW=\033[1;33m
RED=\033[0;31m
NC=\033[0m

JAVA := $(shell command -v java 2> /dev/null)
GCC := $(shell command -v gcc 2> /dev/null)
GPP := $(shell command -v g++ 2> /dev/null)

all :
	@echo "${YELLOW}-- Let's run from PHP! --${NC}"
	@make php
	@echo "\n${YELLOW}-- Let's run from Javascript! --${NC}"
	@make javascript
	@echo "\n${YELLOW}-- Let's run from Python! --${NC}"
	@make python
	@echo "\n${YELLOW}-- Let's run from Ruby! --${NC}"
	@make ruby
	@echo "\n${YELLOW}-- Let's run from Perl! --${NC}"
	@make perl
	@echo "\n${YELLOW}-- Let's run from Java! --${NC}"
	@make java
	@echo "\n${YELLOW}-- Let's run from Go! --${NC}"
	@make go
	@echo "\n${YELLOW}-- Let's run from C! --${NC}"
	@make c
	@echo "\n${YELLOW}-- Let's run from C++! --${NC}"
	@make cpp
	@echo ""

c :
ifndef GCC
	@echo "${RED}GCC is not available. Please install GCC${NC}"
else
	@gcc -o hello hello.c
	@./hello
	@rm hello
endif


cpp :
ifndef GPP
	@echo "${RED}g++ is not available. Please install g++${NC}"
else
	@g++ -o hello hello.cpp
	@./hello
	@rm hello
endif

java :
ifndef JAVA
	@echo "${RED}Java is not available. Please install Java${NC}"
else
	@javac hello.java
	@java HelloWorld
	@rm HelloWorld.class
endif

python :
	@python3 hello.py

ruby :
	@ruby hello.rb

perl :
	@perl hello.pl

go :
	@go run hello.go

php :
	@php -f hello.php

javascript :
	@node hello.js