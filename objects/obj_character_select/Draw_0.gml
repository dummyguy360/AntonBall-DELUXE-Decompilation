draw_set_font(fnt_basic);
draw_back_button(2, 2, exitCharge, exitDelay);
draw_bottom_scroll("PICK A CHARACTER, YOU DUNCE - AND TRY NOT TO MESS IT UP! THIS IS IMPORTANT. ONCE YOU PICK A CHARACTER, YOU'RE STUCK WITH 'EM THROUGHOUT THE ENTIRE CAMPAIGN... SO CHOOSE WISELY!");

if (os_type == os_switch)
    draw_text(room_width / 2, room_height - string_height("Q"), "PRESS L+R TO CONFIGURE CONTROLLERS");

var _drawY = 2;
draw_set_font(global.font1);
draw_set_valign(fa_top);
draw_text(room_width / 2, _drawY, "CHOOSE A BALLER!!");
var _gridY = (room_height / 2) - ((portraitHeight * gridHeight) / 2);
var _xOffset = portraitWidth + portraitOffset;
var _lastLineDrawX = gridX + (((_xOffset * gridWidth) - (_xOffset * lastLineCount)) / 2);

for (var i = 0; i < array_length(characterData); i++)
{
    for (var j = 0; j < array_length(characterData[i]); j++)
    {
        var _charData = characterData[i][j];
        
        if (!is_undefined(_charData))
        {
            var _drawX = (i == (gridHeight - 1)) ? _lastLineDrawX : gridX;
            var _miniPortraitIndex = _charData.miniPortraitIndex;
            var _charUnlockindex = _charData.myUnlockIndex;
            
            if (_charUnlockindex != undefined && !global.unlocks[_charUnlockindex])
                _miniPortraitIndex = 0;
            
            draw_sprite(spr_characters, _miniPortraitIndex, floor(_drawX + (_xOffset * j)), floor(_gridY + ((portraitHeight + portraitOffset) * i)));
        }
    }
}

draw_set_valign(fa_middle);
draw_set_font(fnt_basic);
_drawY = room_height / 4;

for (var i = 0; i < global.max_players; i++)
{
    if (i >= ds_list_size(global.activePlayers))
    {
        var _text = "Press start\nto join!";
        draw_text(portraitPositions[i].x, portraitPositions[i].y, _text);
    }
}

for (var i = 0; i < ds_list_size(global.activePlayers); i++)
{
    var _playerData = ds_list_find_value(global.activePlayers, i);
    var _charPos = _playerData.selectedCharacterPosition;
    var _playerSelected = !is_undefined(_playerData.character_index);
    var _drawX = (_charPos.y == (gridHeight - 1)) ? _lastLineDrawX : gridX;
    draw_sprite(spr_player_select, i, floor((_drawX + ((portraitWidth + portraitOffset) * _charPos.x)) - 1), floor((_gridY + ((portraitHeight + portraitOffset) * _charPos.y)) - 1));
}

if (allPlayersReady)
{
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
    draw_set_color(c_white);
    
    if (wave(-1, 1, 0.7) > 0)
        draw_sprite(spr_confirm, 0, room_width / 2, room_height / 2);
}

for (var i = 0; i < ds_list_size(global.activePlayers); i++)
{
    var _playerData = ds_list_find_value(global.activePlayers, i);
    var _charPos = _playerData.selectedCharacterPosition;
    var _playerSelected = !is_undefined(_playerData.character_index);
    var _drawX = (_charPos.y == (gridHeight - 1)) ? _lastLineDrawX : gridX;
    draw_sprite_ext(spr_player_menu, i, portraitPositions[i].x, portraitPositions[i].y, 1, 1, 0, c_white, 1);
    var _charData = characterData[_charPos.y][_charPos.x];
    var _bottomY = (portraitPositions[i].y + (sprite_get_height(spr_player_menu) / 2)) - 1;
    
    if (is_undefined(_charData.myUnlockIndex) || _playerData.unlocks[_charData.myUnlockIndex])
    {
        var _flipScale = ((i % 2) == 0) ? 1 : -1;
        draw_sprite_ext(_charData.portraitSprite, 0, portraitPositions[i].x, _bottomY, _flipScale, 1, 0, c_white, _playerSelected ? 1 : 0.5);
    }
    
    var _underText = "";
    
    if (_playerSelected)
    {
        if (!instance_exists(_playerData.keybindMenu))
        {
            draw_set_halign(fa_center);
            draw_set_valign(fa_middle);
            draw_set_font(fnt_basic);
            var _x = portraitPositions[i].x;
            var _y = _bottomY;
            var _text = _charData.name;
            var _sep = string_height("Q");
            var _width = sprite_get_width(spr_anton_portrait);
            draw_set_color(c_black);
            draw_text_ext(_x + 1, _y, _text, _sep, _width);
            draw_text_ext(_x - 1, _y, _text, _sep, _width);
            draw_text_ext(_x, _y + 1, _text, _sep, _width);
            draw_text_ext(_x, _y - 1, _text, _sep, _width);
            draw_set_color(c_white);
            draw_text_ext(_x, _y, _text, _sep, _width);
            draw_set_valign(fa_top);
            
            if (global.character_select_vs)
            {
                var _col = _playerData.team ? 32768 : 255;
                draw_set_color(_col);
                draw_text(portraitPositions[i].x, _bottomY + string_height("Q"), "< TEAM " + string(_playerData.team + 1) + " >");
                draw_set_color(c_white);
            }
            else if (!(os_type == os_switch))
            {
                _underText = (_playerData.controller_slot == -1) ? "SHIFT" : "SELECT";
                _underText = sfmt("Controls: %", _underText);
            }
        }
    }
    else
    {
        _underText = (_playerData.controller_slot == -1) ? "H" : "X";
        _underText = sfmt("Leave: %", _underText);
    }
    
    if (_underText != "")
    {
        draw_set_color(c_white);
        draw_set_font(fnt_tiny);
        draw_text(portraitPositions[i].x, _bottomY + string_height("Q"), _underText);
    }
}
