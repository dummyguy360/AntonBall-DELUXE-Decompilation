if (global.blue_pressed == 1 && !collision_rectangle(x, y, x + 7, y + 7, obj_player, 0, 1))
    sprite_index = spr_blueblock;
else
    sprite_index = -4;
