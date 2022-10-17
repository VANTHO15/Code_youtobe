.PHONY: build clean

PATH_OUTPUT := output
PRO_DIR	:= .

INCLUDE_DIRS := $(PRO_DIR)/include

SRC_DIRS := $(PRO_DIR)/source

SRC_FILES := $(foreach SRC_DIRS, $(SRC_DIRS), $(wildcard $(SRC_DIRS)/*.c))
INCLUDE_FILES := $(foreach INCLUDE_DIRS, $(INCLUDE_DIRS), $(wildcard $(INCLUDE_DIRS)/*.h))


vpath %.c $(SRC_DIRS)
vpath %.h $(INCLUDE_DIRS)

build: $(OBJ_FILES)
	gcc $(PATH_OBJS) -o $(PATH_OUTPUT)/app.exe
	./$(PATH_OUTPUT)/app.exe

%.o: %.c $(INCLUDE_FILES)
	gcc -I$(INCLUDE_DIRS) -c $< -o $(PATH_OUTPUT)/$@

clean:
	rm $(PATH_OUTPUT)/*

log-%:
	@echo $($(subst log-,,$@))