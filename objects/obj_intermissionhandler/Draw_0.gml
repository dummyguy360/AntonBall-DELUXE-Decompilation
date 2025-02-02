draw_set_font(font_dialogue);

switch (room)
{
    case rm_intermission1:
        draw_set_halign(fa_center);
        draw_set_color(c_black);
        draw_text_ext((room_width / 2) + 1, 22, dialogue, 8, 70);
        draw_set_color(c_white);
        draw_text_ext(room_width / 2, 21, dialogue, 8, 70);
        break;
    
    case rm_intermission2:
        draw_set_halign(fa_left);
        draw_set_color(c_black);
        draw_text_ext(158, 17, dialogue, 8, 70);
        draw_set_color(c_white);
        draw_text_ext(157, 16, dialogue, 8, 70);
        break;
    
    case rm_intermission3:
        draw_set_halign(fa_left);
        draw_set_color(c_black);
        draw_text_ext(44, 18, dialogue, 8, 70);
        draw_set_color(c_white);
        draw_text_ext(43, 17, dialogue, 8, 70);
        break;
    
    case rm_intermission4:
        draw_set_halign(fa_left);
        draw_set_color(c_black);
        draw_text_ext(44, 18, dialogue, 8, 148);
        draw_set_color(c_white);
        draw_text_ext(43, 17, dialogue, 8, 148);
        break;
    
    case rm_pb_intermission1:
        draw_set_halign(fa_center);
        draw_set_color(c_black);
        draw_text_ext(191, 43, dialogue, 8, 60);
        draw_set_color(c_white);
        draw_text_ext(190, 42, dialogue, 8, 60);
        break;
    
    case rm_pb_intermission2:
        draw_set_halign(fa_left);
        draw_set_color(c_black);
        draw_text_ext(137, 37, dialogue, 8, 70);
        draw_set_color(c_white);
        draw_text_ext(136, 36, dialogue, 8, 70);
        break;
    
    case rm_pb_intermission3:
        draw_set_halign(fa_left);
        draw_set_color(c_black);
        draw_text_ext(157, 28, dialogue, 8, 70);
        draw_set_color(c_white);
        draw_text_ext(156, 27, dialogue, 8, 70);
        break;
}
