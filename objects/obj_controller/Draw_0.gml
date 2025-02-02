if ((global.classic_stage == 1 || global.punchball_stage == 1) && b_showphasename == 1)
{
    draw_set_alpha(1);
    draw_set_font(global.font1);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(room_width / 2, room_height / 2, global.stage_name_long);
}
