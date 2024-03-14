#include "raylib.h"
#include "ecs/ecs.h"

void g_gameloop() {
  const int screenWidth = 800;
  const int screenHeight = 600;
  InitWindow(screenWidth, screenHeight, "Raylib basic window");
  SetTargetFPS(60);

  ecs_world_t *world = g_ecs_init();

  while (!WindowShouldClose())
  {
    ecs_progress(world, 0);
    BeginDrawing();
    ClearBackground(BLACK);
    EndDrawing();
  }

  CloseWindow();
}
