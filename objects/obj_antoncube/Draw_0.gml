draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, image_alpha);

if (global.win)
    image_alpha = 0;
else if (!global.win)
    image_alpha = 1;
