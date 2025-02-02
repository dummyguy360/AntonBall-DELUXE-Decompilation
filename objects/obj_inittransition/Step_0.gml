if (transition == 1)
{
    scalex += 0.075;
    scaley += 0.075;
}

if (scalex > 8)
    instance_destroy(self);

if (scalex < 0)
    instance_destroy(self);

if (surface_exists(surf) && transition == 1)
{
    surface_set_target(surf);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    gpu_set_blendmode(bm_subtract);
    draw_sprite_ext(spr_pinhole, 0, xpos, ypos, scalex, scaley, 0, c_white, 1);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
    surface_reset_target();
}
else
{
    surf = surface_create(room_width, room_height);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}
