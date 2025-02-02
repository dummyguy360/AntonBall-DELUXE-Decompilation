if (!instance_exists(obj_gun_pickup) && !place_meeting(x, y, obj_player))
{
    if (!obj_player.b_hasgun)
        instance_create_layer(x, y + 3, layer, obj_gun_pickup);
}
