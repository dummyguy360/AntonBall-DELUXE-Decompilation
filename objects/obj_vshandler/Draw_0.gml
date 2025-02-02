draw_set_halign(fa_center);

if (!is_undefined(global.winning_team))
{
    draw_set_font(global.font1);
    draw_set_color(c_white);
    draw_text(room_width / 2, room_height / 2, "TEAM " + string(global.winning_team + 1) + " WINS!!");
}
