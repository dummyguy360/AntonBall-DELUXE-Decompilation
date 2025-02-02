function add_enemy_to_spawner(argument0, argument1, argument2)
{
    var enemy = argument0;
    var steps = argument1;
    var spawner = argument2;
    var map = ds_map_create();
    ds_map_set(map, "enemy", enemy);
    ds_map_set(map, "steps", steps);
    ds_map_set(map, "spawner", spawner);
    ds_map_set(map, "inst", -4);
    ds_list_add(enemy_spawn_list, map);
}
