
vpath %.c ./Src
vpath %.h ./Inc
include_path = ./Inc
source_path = ./Src
CC = gcc
LINK_TARGET = app.exe
SOURCES = $(wildcard Src/*.c)
OBJECTS = $(SOURCES:.c=.o)

all : $(LINK_TARGET)


app.exe : $(OBJECTS)
	$(CC) $^ -o $@



%.o : %.c
	$(CC) -c -I$(include_path) $< -o $@