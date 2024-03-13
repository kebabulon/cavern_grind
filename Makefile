main: src/*.c
	gcc -o main.exe src/*.c -I libs -I src -lraylib -lopengl32 -lgdi32 -lwinmm