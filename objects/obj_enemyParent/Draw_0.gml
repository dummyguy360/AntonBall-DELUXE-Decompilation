var _blend = c_white;

if (!is_undefined(palette))
    pal_swap_set(palette, paletteIndex, 0);
else if (lastStanding)
    _blend = 16777065;

if (age == 0)
    updateSprite(spawnSprite);

draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, 0, _blend, 1);

if (!is_undefined(palette))
    pal_swap_reset();
