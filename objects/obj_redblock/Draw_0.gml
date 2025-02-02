if (global.red_pressed == 1 && !collision_rectangle(x, y, x + 7, y + 7, obj_player, 0, 1))
    draw_sprite(spr_redblock, 0, x, y);
else
    draw_sprite(spr_redblock_unfilled, -1, x, y);
