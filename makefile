
vpath %.c ./Src
vpath %.h ./Inc
include_path = ./Inc
CC = gcc


app.exe : main.o LCD.o DIO.o
	$(CC) main.o LCD.o DIO.o Nasser_MinaMedhat_Yakkob_Rafat.o -o $@



main.o : main.c
	$(CC) -c -I$(include_path) $< -o $@

LCD.o : LCD.c
	$(CC) -c -I$(include_path) $< -o $@

DIO.o : DIO.c
	$(CC) -c -I$(include_path) $< -o $@