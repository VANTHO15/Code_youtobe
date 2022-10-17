.PHONY: build clean

PATH_OUTPUT := output
PRO_DIR	:= .

INCLUDE_DIRS := $(PRO_DIR)/include
SRC_DIRS := $(PRO_DIR)/source

vpath %.c $(SRC_DIRS)
vpath %.h $(INCLUDE_DIRS)

build: main.o sum.o 
	gcc output/main.o output/sum.o -o $(PATH_OUTPUT)/app.exe
	./$(PATH_OUTPUT)/app.exe

%.o: %.c $(INCLUDE_DIRS)
	gcc -I$(INCLUDE_DIRS) -c $< -o $(PATH_OUTPUT)/$@

clean:
	rm -rf $(PATH_OUTPUT)/*