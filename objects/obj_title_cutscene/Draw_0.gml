if (!startup)
{
    if (!surface_exists(backgroundSurface))
        backgroundSurface = surface_create(sprite_get_width(bg_nova), sprite_get_height(bg_nova));
    
    surface_set_target(backgroundSurface);
    draw_clear_alpha(c_white, 0);
    draw_sprite_ext(bg_nova, 0, sprite_get_width(bg_nova) / 2, sprite_get_height(bg_nova) / 2, 1, 1, backgroundRotation, c_white, 1);
    surface_reset_target();
    draw_surface_ext(backgroundSurface, (room_width - sprite_get_width(bg_nova)) / 2, ((room_height - 11) / 2) - (sprite_get_height(bg_nova) / 4), 1, 0.5, 0, c_white, 1);
    backgroundRotation += backgroundRotationSpeed;
    draw_sprite(spr_pressStart, floor(loop(0, 2, 1)), room_width / 2, 117);
}

draw_self();
