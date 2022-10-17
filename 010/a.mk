.PHONY: build clean

PATH_OUTPUT := output
PRO_DIR	:= .

INCLUDE_DIRS := $(PRO_DIR)/include

build: main.o sum.o 
	gcc output/main.o output/sum.o -o $(PATH_OUTPUT)/app.exe
	./$(PATH_OUTPUT)/app.exe

main.o : source/main.c include/sum.h 
	gcc -I$(INCLUDE_DIRS) -c $< -o $(PATH_OUTPUT)/$@

sum.o : source/sum.c include/sum.h 
	gcc -I$(INCLUDE_DIRS) -c $< -o $(PATH_OUTPUT)/$@

clean:
	rm -rf $(PATH_OUTPUT)/*