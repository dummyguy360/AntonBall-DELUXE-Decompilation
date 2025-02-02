draw_set_font(font_dialogue);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if (ask && !skip)
    draw_text(room_width / 2, 2, "PRESS START TO SKIP");
