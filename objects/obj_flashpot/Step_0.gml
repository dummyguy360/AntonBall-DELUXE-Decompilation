if (transition == 1)
{
    alpha -= 0.01;
    draw_set_alpha(alpha);
}

if (alpha <= 0)
    instance_destroy(self);

if (surface_exists(surf) && transition == 1)
{
    surface_set_target(surf);
    gpu_set_blendmode(bm_normal);
    draw_set_color(c_white);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
    surface_reset_target();
}
else
{
    surf = surface_create(room_width, room_height);
    surface_set_target(surf);
    draw_clear_alpha(c_white, 0);
    surface_reset_target();
}
