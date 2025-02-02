if (shadow)
{
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
pal_swap_set(553, 0, 0);
draw_sprite_ext(spr_cs2_antonfall, 0, room_width / 2, room_height / 2, xscale, yscale, 0, c_white, 1);
pal_swap_reset();
