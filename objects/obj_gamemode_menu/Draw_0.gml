draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, room_width, 134, false);
draw_set_color(c_white);
draw_set_alpha(1);

if (instance_exists(obj_gamemode_info_parent))
    exit;

draw_back_button(2, 2, 0, 1);
draw_set_font(global.font1);
draw_set_halign(fa_center);
cmn_menu_draw(menu, 160, (room_height / 2) - (cmn_menu_get_height(menu) / 2));
var _scoreString;

switch (room)
{
    case rm_menu_antonball:
        _scoreString = get_score_string(global.scores.arcade);
        break;
    
    case rm_menu_punchball:
        _scoreString = get_score_string(global.scores.punchball);
        break;
    
    case rm_menu_vs:
        _scoreString = "BATTLE IT OUT TO SEE WHICH ONE OF YOU IS TRULY BALLIN'!";
        break;
}

draw_bottom_scroll(_scoreString);
