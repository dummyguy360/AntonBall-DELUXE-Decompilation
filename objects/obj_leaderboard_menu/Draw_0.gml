event_inherited();
draw_set_color(c_white);
draw_set_font(fnt_basic);
draw_set_halign(fa_center);
var _loadTitle = "";

if (loadFailed)
    _loadTitle = "FAILED TO LOAD\nLEADERBOARD";

if (array_contains(scores, undefined))
    _loadTitle = "LOADING...";

if (_loadTitle != "")
{
    draw_set_valign(fa_middle);
    draw_text(room_width / 2, room_height / 2, _loadTitle);
    exit;
}

var _title;

switch (currentScoreIndex)
{
    case 0:
        _title = "TOP GLOBAL SCORES >";
        break;
    
    case 1:
        _title = "< YOUR RANK >";
        break;
    
    case 2:
        _title = "< TOP FRIEND SCORES";
        break;
}

var _drawY = drawRect.y + 8;
draw_set_valign(fa_top);
draw_text(room_width / 2, _drawY, _title);
_drawY += string_height("Q");

for (var i = 0; i < array_length(scores[currentScoreIndex]); i++)
{
    var _currentEntry = scores[currentScoreIndex][i];
    var _drawString = sfmt("%. %", _currentEntry.rank, _currentEntry.name);
    draw_set_halign(fa_left);
    draw_text(drawRect.x + 8, _drawY, _drawString);
    draw_set_halign(fa_right);
    draw_text(drawRect.getRight() - 8, _drawY, string(_currentEntry.myScore));
    _drawY += string_height("Q");
}
