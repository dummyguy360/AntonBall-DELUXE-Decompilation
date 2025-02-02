draw_sprite(sprite_index, 0, x, y);

if (item_flash && !carried && !lethal)
    draw_sprite(spr_item_arrow, 0, x, y - 22);
