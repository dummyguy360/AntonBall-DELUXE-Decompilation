if (!is_undefined(palette))
    pal_swap_set(palette, paletteIndex, 0);

draw_self();

if (!is_undefined(palette))
    pal_swap_reset();
