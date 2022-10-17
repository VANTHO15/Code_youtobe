.PHONY: hello

CC := gcc
CFLAGS := -I.

INC_FILES := hello.h

%.o : %.c $(INC_FILES)
	$(CC) -c -o $@ $<

hello: main.o hello.o
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm  hello *.o