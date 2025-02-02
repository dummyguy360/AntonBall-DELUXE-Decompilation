draw_set_color(c_white);
draw_set_font(font_dialogue);
draw_set_valign(fa_top);
draw_set_halign(fa_center);

if (talk == 1)
    draw_text(room_width / 2, 130, "So long, suckers! I'll be back tomorrow...");
else if (talk == 3)
    draw_text(room_width / 2, 130, "...if Brulo learns to deal worth a damn!");
