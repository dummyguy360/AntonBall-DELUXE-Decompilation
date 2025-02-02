if (is_undefined(displayMessage))
    exit;

draw_set_color(c_black);
draw_set_alpha(0.5);
var _unlockString = unlockName + " UNLOCKED!";
var _padding = 10;
var _rectWidth = room_width;
var _rectHeight = string_height(displayMessage) + sprite_get_height(unlockSprite) + string_height(_unlockString) + (_padding * 2);
draw_rectangle((room_width / 2) - (_rectWidth / 2), (room_height / 2) - (_rectHeight / 2), (room_width / 2) + (_rectWidth / 2), (room_height / 2) + (_rectHeight / 2), false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var _drawY = ((room_height / 2) - (_rectHeight / 2)) + (_padding / 2);
draw_text(room_width / 2, _drawY, displayMessage);
_drawY += (string_height(displayMessage) + (_padding / 2) + sprite_get_yoffset(unlockSprite));
draw_sprite(unlockSprite, 0, ((room_width / 2) - (sprite_get_width(unlockSprite) / 2)) + sprite_get_xoffset(unlockSprite), _drawY);
_drawY += (((_padding / 2) + sprite_get_height(unlockSprite)) - sprite_get_yoffset(unlockSprite));
draw_text(room_width / 2, _drawY, _unlockString);
