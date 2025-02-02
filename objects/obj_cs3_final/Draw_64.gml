draw_set_color(c_white);
draw_set_font(font_dialogue);
draw_set_valign(fa_top);
draw_set_halign(fa_center);

if (talk == 1)
    draw_text(room_width / 2, 130, "Watch out Brulo, ya big tub...");
else if (talk == 3)
    draw_text(room_width / 2, 130, "...cuz I'm comin' for ya!");
