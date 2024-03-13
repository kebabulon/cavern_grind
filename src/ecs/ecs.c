#include "flecs.h"

ecs_world_t *g_ecs_init()
{
    ecs_world_t *world = ecs_init();

    return world;
}