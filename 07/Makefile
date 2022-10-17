.PHONY: all

CC := gcc
INC_FILE := ./Inc/hieu.h 
INC_FILE += ./Inc/tong.h 

%.o: $(INC_FILE)
	$(CC) -c Src/hieu.c -o obj/hieu.o -I./Inc
	$(CC) -c Src/tong.c -o obj/tong.o -I./Inc
	$(CC) -c main.c -o obj/main.o -I./Inc

tong: obj/tong.o obj/main.o
	$(CC) -o bin/out.exe obj/tong.o obj/main.o

hieu: obj/hieu.o obj/main.o
	$(CC) -o bin/out.exe obj/hieu.o obj/main.o

run:
	.\bin\out.exe
clean: 
	rm ./obj/*.o 