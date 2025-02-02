function draw_back_button(argument0, argument1, argument2, argument3, argument4)
{
    argument4 = default_val(argument4, 1);
    var _backButtonRect = new rect(argument0, argument1, sprite_get_width(spr_backbuttonB) - 1, sprite_get_height(spr_backbuttonB));
    
    if (argument2 > 0)
    {
        draw_set_color(0x000066);
        draw_set_alpha(argument4);
        draw_rectangle((_backButtonRect.x + _backButtonRect.width) - (_backButtonRect.width * (argument2 / argument3)), _backButtonRect.y, _backButtonRect.getRight(), _backButtonRect.getBottom(), false);
    }
    
    draw_set_alpha(1);
    var _backSprite = obj_menu_input.gamepadConnected ? 681 : 916;
    draw_sprite_ext(_backSprite, 0, _backButtonRect.x, _backButtonRect.y, 1, 1, 0, c_white, argument4);
}

function draw_bottom_scroll(argument0, argument1)
{
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
    draw_set_color(c_white);
    draw_set_font(fnt_basic);
    var _duration = (13 * (string_width(argument0) / (string_width("Q") * 176))) + 3;
    
    if (!is_undefined(argument1))
        _duration *= 60;
    
    var _yPos = room_height - 1;
    draw_text(loop(room_width, -string_width(argument0), _duration, undefined, argument1), _yPos, argument0);
    draw_set_halign(fa_center);
}
