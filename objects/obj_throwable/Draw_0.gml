draw_self();

if (item_flash && !carried && !b_thrown && !lethal)
    draw_sprite(spr_item_arrow, 0, x, y - 22);
