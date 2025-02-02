if (global.blue_pressed == 1 && !collision_rectangle(x, y, x + 7, y + 7, obj_player, 0, 1))
    draw_sprite(spr_blueblock, 0, x, y);
else
    draw_sprite(spr_blueblock_unfilled, -1, x, y);
