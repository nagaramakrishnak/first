PREFIX = /usr/local

install:
	gcc -c main.c -o main.o
    	gcc main.o -o mainapp
	cp -f mainapp $(PREFIX)/bin/mainapp

uninstall:
	rm -f mainapp main.o
	rm -f $(PREFIX)/bin/mainapp

.PHONY: install uninstall
