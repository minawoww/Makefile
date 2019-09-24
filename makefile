
vpath %.c ./Src
vpath %.h ./Inc
#vpath %.d Dependencies/
include_path = ./Inc
source_path = ./Src
dep_path = Dependencies/
CC = gcc
LINK_TARGET = app.exe
SOURCES = $(subst $(source_path)/,,$(wildcard $(source_path)/*.c))
OBJECTS = $(SOURCES:.c=.o)
dep = $(SOURCES:.c=.d)
CLEAN_TARGET = $(LINK_TARGET) $(OBJECTS) $(deps)


deps = $(addprefix $(dep_path)/, $(dep))
#--include-dir=$(dep_path)
-include $(dep)


all : $(LINK_TARGET)

app.exe : $(OBJECTS)
	$(CC) $^ Nasser_MinaMedhat_Yakkob_Rafat.o -o $@




%.o : %.c
	$(CC) -c -I$(include_path) $< -o $@
	@$(CPP) $< -MM -I$(include_path) $< > $(dep_path)\$*.d



clear : 
	rm $(CLEAN_TARGET)


clear_dep :
	rm $(deps)

