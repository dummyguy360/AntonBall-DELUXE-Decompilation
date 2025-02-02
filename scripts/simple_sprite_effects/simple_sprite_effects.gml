function create_sprite_effect(argument0, argument1, argument2, argument3)
{
    argument3 = default_val(argument3, 1);
    var _inst = instance_create_depth(argument0, argument1, depth, obj_spriteEffect);
    _inst.sprite_index = argument2;
    _inst.despawn = argument3;
    return _inst;
}
