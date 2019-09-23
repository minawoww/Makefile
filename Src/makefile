
vpath %.c ./Src
include_path = ./Inc
CC = gcc


app.exe : main.o LCD.o DIO.o Nasser_MinaMedhat_Yakkob_Rafat.o
	$(CC) $^ -o $@



main.o : main.c
	$(CC) -c $< -o $@

LCD.o : LCD.c
	$(CC) -c $< -o $@

DIO.o : DIO.c
	$(CC) -c $< -o $@