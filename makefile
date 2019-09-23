
vpath %.c ./Src
vpath %.h ./Inc
include_path = ./Inc
CC = gcc
LINK_TARGET = app.exe
SOURCES = $(wildcard *.c)
OBJECTS = $(SOURCES:.c=.o)

all : $(LINK_TARGET)


app.exe : $(OBJECTS)
	$(CC) $^ -o $@



%.o : %.c
	$(CC) -c -I$(include_path) $< -o $@