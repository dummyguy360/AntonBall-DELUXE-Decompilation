draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(global.font1);
var my = (room_height - cmn_menu_get_height(menu)) div 2;
draw_set_halign(fa_center);
cmn_menu_draw(menu, room_width div 2, my + 32);
draw_bottom_scroll(get_score_string(global.scores_punchball));
