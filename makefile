
vpath %.c ./Src
vpath %.h ./Inc
include_path = ./Inc
source_path = ./Src
CC = gcc
LINK_TARGET = app.exe
SOURCES = $(wildcard $(source_path)/*.c)
OBJECTS = $(SOURCES:.c=.o)
CLEAN_TARGET = $(LINK_TARGET) $(OBJECTS)

all : $(LINK_TARGET)


app.exe : $(OBJECTS)
	$(CC) $^ Nasser_MinaMedhat_Yakkob_Rafat.o -o $@



%.o : %.c
	$(CC) -c -I$(include_path) $< -o $@



Clear : 
	rm $(CLEAN_TARGET)