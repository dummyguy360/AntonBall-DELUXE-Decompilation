if ((active && sprite_index == -1) || (!active && sprite_index == spr_movingbouncy))
{
    image_index = 0;
    sprite_index = spr_blockpoof;
    
    if (place_meeting(x, y, obj_player))
        sprite_index = -1;
}
