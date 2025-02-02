draw_set_color(c_white);

if (transition)
{
    alpha += 0.05;
    draw_set_alpha(alpha);
}

if (alpha >= 1)
{
    if (transition)
    {
        alpha = 1;
        alarm[0] = 30;
        transition = 0;
    }
}

draw_rectangle(0, 0, room_width, room_height, false);
