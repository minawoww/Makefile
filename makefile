
vpath %.c ./Src
vpath %.h ./Inc
include_path = ./Inc
CC = gcc
OBJECTS = main.o LCD.o DIO.o Nasser_MinaMedhat_Yakkob_Rafat.o


app.exe : main.o LCD.o DIO.o
	$(CC) $(OBJECTS) -o $@



%.o : %.c
	$(CC) -c -I$(include_path) $< -o $@