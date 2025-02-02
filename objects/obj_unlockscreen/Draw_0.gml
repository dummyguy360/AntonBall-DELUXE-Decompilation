draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font_dialogue);
draw_set_color(c_black);
draw_text_ext(1 + (room_width / 2), 1 + (room_height / 2), dialogue, 7, 148);
draw_set_color(c_white);
draw_text_ext(room_width / 2, room_height / 2, dialogue, 7, 148);

if (selected == 1)
{
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
}
