draw_back_button(2, 2, exitCharge, exitDelay);

if (vs)
    draw_bottom_scroll("SELECT A STAGE, THEY'RE ALL PRETTY OK.");
else
    draw_bottom_scroll("YOU CAN SKIP AHEAD, BUT DON'T BLAME ME IF YOUR BALLS GET CRUSHED!");

var _drawY = 2;
draw_set_font(global.font1);
draw_set_valign(fa_top);
var _title = "SELECT A WORLD!!";

if (vs)
    _title = "SELECT A LEVEL!!";

draw_text(room_width / 2, _drawY, _title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_basic);
var _selectedItem = menuData[selection.y][selection.x];
var _middleString = itemUnlocked(_selectedItem) ? _selectedItem.name : "???";
draw_set_color(c_black);
draw_text((room_width / 2) + 1, room_height / 2, _middleString);
draw_text((room_width / 2) - 1, room_height / 2, _middleString);
draw_text(room_width / 2, (room_height / 2) + 1, _middleString);
draw_text(room_width / 2, (room_height / 2) - 1, _middleString);
draw_set_color(c_white);
draw_text(room_width / 2, room_height / 2, _middleString);

for (var i = 0; i < array_length(menuData); i++)
{
    for (var j = 0; j < array_length(menuData[i]); j++)
    {
        var _menuItem = menuData[i][j];
        
        if (!is_undefined(_menuItem))
        {
            var _lineCount = (i == (gridHeight - 1)) ? lastLineCount : gridWidth;
            var _drawX = ((room_width / 2) - ((_lineCount / 2) * (itemDrawRect.width + (itemDrawOffset.x / 2)))) + (j * (itemDrawRect.width + itemDrawOffset.x));
            _drawY = ((room_height / 2) - ((gridHeight / 2) * (itemDrawRect.height + (itemDrawOffset.y / 2)))) + (i * (itemDrawRect.height + itemDrawOffset.y));
            var _drawSprite = spr_locked;
            
            if (itemUnlocked(_menuItem))
                _drawSprite = _menuItem.sprite;
            
            if (_menuItem == _selectedItem)
            {
                draw_set_color(c_red);
                draw_rectangle(_drawX - 1, _drawY - 1, _drawX + itemDrawRect.width, _drawY + itemDrawRect.height, true);
            }
            
            draw_set_color(0x000099);
            draw_rectangle(_drawX, _drawY, _drawX + itemDrawRect.getRight(), _drawY + itemDrawRect.getBottom(), true);
            draw_sprite(_drawSprite, funnyIndex, _drawX, _drawY);
        }
    }
}
