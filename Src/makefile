
vpath %.c D:\embedded systems\Sprints\Makefile Session\challenge\Makefile\Src
include_path = D:\embedded systems\Sprints\Makefile Session\challenge\Makefile\Inc
CC = gcc


app.exe : main.o LCD.o DIO.o Nasser_MinaMedhat_Yakkob_Rafat.o
	$(CC) $^ -o $@



main.o : main.c
	$(CC) -c -I$(include_path) $< -o $@

LCD.o : LCD.c
	$(CC) -c -I$(include_path) $< -o $@

DIO.o : DIO.c
	$(CC) -c -I$(include_path) $< -o $@