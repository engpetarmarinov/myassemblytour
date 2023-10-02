.PHONY: build link run dump build-as run-as

SHELL := /bin/bash
FILE := x86/the-basics/hello.asm
FORMAT := elf64

run: build link
	./bin/out

build:
	nasm -f $(FORMAT) -o bin/out.o $(FILE)

link:
	ld -o bin/out bin/out.o

dump:
	objdump -d bin/out

build-as:
	as -o bin/out.o $(FILE)


run-as: build-as link
	./bin/out
