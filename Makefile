EXC_NAME = factorial

BIN_DIR = ./bin
SRC_DIR = ./src
OBJ_DIR = ./obj
INC_DIR = ./include

SRC_FILES = factorial.c main.c
OBJ_FILES = $(SRC_FILES:.c=.o) # same as => factorial.o main.o
INC_FILES = factorial.h

BIN = $(patsubst %, $(BIN_DIR)/%, $(EXC_NAME))
SRC = $(patsubst %, $(SRC_DIR)/%, $(SRC_FILES))
OBJ = $(patsubst %, $(OBJ_DIR)/%, $(OBJ_FILES))
INC = $(patsubst %, $(INC_DIR)/%, $(INC_FILES))

CC = gcc
CFLAGS = -Wall -I $(INC_DIR)/


all: $(OBJ)
	$(CC) $(OBJ) -o $(BIN)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c $(INC)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(BIN_DIR)/*
	rm -rf $(OBJ_DIR)/*
