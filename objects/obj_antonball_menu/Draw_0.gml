draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, room_width, 134, false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(global.font1);
draw_set_halign(fa_center);
cmn_menu_draw(menu, 160, 32);
draw_bottom_scroll(get_score_string(global.scores.arcade));
