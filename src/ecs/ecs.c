#include "flecs.h"
#include "component.h"
#include "system.h"

ecs_world_t *g_ecs_init()
{
    ecs_world_t *world = ecs_init();

    ECS_COMPONENT(world, CTransform);
    
    ECS_SYSTEM(world, SSpriteRenderer, EcsOnUpdate, CTransform);

    return world;
}


void g_scene_init_arena(ecs_world_t *world)
{
    // TODO: figure out how to remove all entities but keep the systems
}
