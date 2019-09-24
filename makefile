
vpath %.c ./Src
vpath %.h ./Inc
#vpath %.d Dependencies/
include_path = ./Inc
source_path = ./Src
dep_path = Dependencies/
CC = gcc
LINK_TARGET = app.exe
SOURCES = $(wildcard $(source_path)/*.c)
OBJECTS = $(SOURCES:.c=.o)
#dep = $(OBJECTS:.o=.d)
CLEAN_TARGET = $(LINK_TARGET) $(OBJECTS) $(dep)


dep = $(addprefix $(dep_path)/, $(patsubst %.c, %.d, $(wildcard *.c)))
#--include-dir=$(dep_path)
-include $(dep)


all : $(LINK_TARGET)

app.exe : $(OBJECTS)
	$(CC) $^ Nasser_MinaMedhat_Yakkob_Rafat.o -o $@


%.d : %.c
	@$(CPP) $< -MM -MT $(@:.d=.o) $(dep_path) -o $@


%.o : %.c
	$(CC) -c -I$(include_path) $< -o $@



clear : 
	rm $(CLEAN_TARGET)


clear_dep :
	rm $(dep)

