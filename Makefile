LFLAGS = -lraylib
COUT = 

ifeq ($(OS),Windows_NT)
	LFLAGS += -lopengl32 -lgdi32 -lwinmm
	COUT = main.exe
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Linux)
		LFLAGS += -lGL -lm -lpthread -ldl -lrt -lX11
		COUT = main
	endif
	# ifeq ($(UNAME_S),Darwin)
	# 	OSFLAG += -D OSX
	# endif
	# 	UNAME_P := $(shell uname -p)
	# ifeq ($(UNAME_P),x86_64)
	# 	OSFLAG += -D AMD64
	# endif
	# 	ifneq ($(filter %86,$(UNAME_P)),)
	# OSFLAG += -D IA32
	# 	endif
	# ifneq ($(filter arm%,$(UNAME_P)),)
	# 	OSFLAG += -D ARM
	# endif
endif


main: src/*.c
	gcc \
		$(wildcard libs/*.c) \
		$(wildcard src/*.c) \
		$(wildcard src/ecs/*.c) \
		-o $(COUT) -Ilibs -Isrc $(LFLAGS)
		# -o main.exe -Ilibs -Isrc -lraylib -lopengl32 -lgdi32 -lwinmm
		# -o main -Ilibs -Isrc -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
	# chmod +x main
