if (character_index == 1)
    pal_swap_set(palette, 0, 0);
else if (character_index == 2)
    pal_swap_set(palette, 1, 0);

draw_sprite_ext(sprite, frame, round(xpos), round(ypos), xscale * facing, yscale, angle, color, alpha);
pal_swap_reset();
