if (transition == 1)
{
    alpha -= 0.02;
    draw_set_alpha(alpha);
}

if (alpha == 0)
{
    surface_free(surf);
    instance_destroy(self);
}

draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
