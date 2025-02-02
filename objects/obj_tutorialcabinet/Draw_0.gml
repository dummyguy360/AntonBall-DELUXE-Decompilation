draw_sprite(sprite_index, 0, x, y);

if (b_infront)
{
    draw_set_halign(fa_center);
    draw_set_color(c_black);
    draw_set_alpha(0.75);
    draw_rectangle(85, 24, 170, 39, false);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_set_font(global.font1);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    draw_set_font(global.font1);
    draw_set_halign(fa_center);
    draw_text(room_width / 2, 28, "PUNCH BALL ANTONBALL");
    draw_set_halign(fa_left);
    
    if (flash == 0)
        draw_sprite(spr_dpad, 0, x + 2, y - 20);
    else if (flash == 1)
        draw_sprite(spr_dpad, 1, x + 2, y - 20);
}
