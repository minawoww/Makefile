
vpath %.c ./Src
vpath %.h ./Inc
include_path = ./Inc
CC = gcc
LINK_TARGET = app.exe
SOURCES = $(wildcard *.c)
OBJECTS = main.o LCD.o DIO.o Nasser_MinaMedhat_Yakkob_Rafat.o

all : $(LINK_TARGET)


app.exe : $(OBJECTS)
	$(CC) $^ -o $@



%.o : %.c
	$(CC) -c -I$(include_path) $< -o $@