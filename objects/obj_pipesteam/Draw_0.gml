if (global.classic_stage)
    draw_sprite_ext(sprite_index, image_index, steamX, steamY - 8, xscale, yscale, 0, c_white, image_alpha);
else
    draw_sprite_ext(sprite_index, image_index, steamX, steamY, xscale, yscale, 0, c_white, image_alpha);
