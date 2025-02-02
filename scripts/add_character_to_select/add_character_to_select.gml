function add_character_to_select(argument0, argument1, argument2, argument3, argument4, argument5)
{
    var xx = argument0;
    var yy = argument1;
    var val = argument2;
    var ind = argument3;
    var spr = argument4;
    var nam = argument5;
    var map = ds_map_create();
    ds_map_set(map, "val", val);
    ds_map_set(map, "ind", ind);
    ds_map_set(map, "spr", spr);
    ds_map_set(map, "nam", nam);
    ds_grid_set(character_grid, xx, yy, map);
}
