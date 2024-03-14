main: src/*.c
	# gcc -o main.exe src/*.c -I libs -I src -lraylib -lopengl32 -lgdi32 -lwinmm
	gcc \
		$(wildcard libs/*.c) \
		$(wildcard src/*.c) \
		$(wildcard src/ecs/*.c) \
		-o main -I libs -Isrc -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
	chmod +x main
