.PHONY: all build clean

all: main.c hello.c 
	gcc -c main.c -o main.o -I./include
	gcc -c hello.c -o hello.o -I./include

build: main.o hello.o
	gcc -o app main.o hello.o

clean:
	rm *.o app.exe