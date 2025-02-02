var _gridEntry = function(argument0, argument1, argument2, argument3, argument4) constructor
{
    character_index = argument0;
    miniPortraitIndex = argument1;
    portraitSprite = argument2;
    name = argument3;
    myUnlockIndex = argument4;
};

var _charData = [new _gridEntry(1, 1, 249, "ANTON"), new _gridEntry(2, 2, 309, "ANNIE"), new _gridEntry(3, 3, 368, "DANTON"), new _gridEntry(4, 4, 790, "NINA"), new _gridEntry(6, 6, 698, "BRULO", UnknownEnum.Value_2), new _gridEntry(5, 5, 324, "PAUL", UnknownEnum.Value_8), new _gridEntry(10, 10, 516, "OLD MANTON", UnknownEnum.Value_9), new _gridEntry(7, 7, 393, "BEBO", UnknownEnum.Value_10), new _gridEntry(9, 9, 819, "MINI MITT", UnknownEnum.Value_11), new _gridEntry(8, 8, 878, "MICRO DEMON", UnknownEnum.Value_13), new _gridEntry(11, 11, 895, "ANTON'S DOG", UnknownEnum.Value_3), new _gridEntry(12, 12, 802, "ANNIE'S CAT", UnknownEnum.Value_4), new _gridEntry(16, 16, 931, "ANT ON BALL", UnknownEnum.Value_14), new _gridEntry(13, 13, 656, "RED GUY", UnknownEnum.Value_19), new _gridEntry(14, 14, 375, "CLASSIC ANTON", UnknownEnum.Value_6), new _gridEntry(15, 15, 794, "CLASSIC ANNIE", UnknownEnum.Value_7), new _gridEntry(17, 17, 603, "ANTARI", UnknownEnum.Value_5), new _gridEntry(18, 18, 408, "DON", UnknownEnum.Value_15), new _gridEntry(19, 19, 798, "COOPER", UnknownEnum.Value_16), new _gridEntry(20, 20, 4, "CLIVE", UnknownEnum.Value_17), new _gridEntry(21, 21, 311, "PEPPINO", UnknownEnum.Value_18)];
characterData = [];
characterCount = array_length(_charData);
gridWidth = 7;
gridHeight = ceil(characterCount / gridWidth);
lastLineCount = characterCount - (gridWidth * (gridHeight - 1));
var k = 0;

for (var i = 0; i < gridHeight; i++)
{
    for (var j = 0; j < gridWidth; j++)
    {
        if (k < array_length(_charData))
        {
            characterData[i][j] = _charData[k];
            k++;
        }
        else
        {
            characterData[i][j] = undefined;
        }
    }
}

if (global.dp_flow_is_active)
{
    ds_list_clear(global.activePlayers);
}
else
{
    var i = 0;
    
    while (i < ds_list_size(global.activePlayers))
    {
        if (i >= global.max_players)
        {
            ds_list_delete(global.activePlayers, i);
        }
        else
        {
            ds_list_find_value(global.activePlayers, i).character_index = undefined;
            ds_list_find_value(global.activePlayers, i).unlocks = global.unlocks;
            i++;
        }
    }
}

allPlayersReady = 0;
exitDelay = 40;
exitCharge = 0;
portraitOffset = 2;
portraitWidth = sprite_get_width(spr_characters);
portraitHeight = sprite_get_height(spr_characters);
gridX = ((room_width / 2) - (((portraitWidth + portraitOffset) * gridWidth) / 2)) + (portraitOffset / 2);
draw_set_font(fnt_basic);
var _portraitPositionsRect = new rect(gridX / 2, (room_height / 4) + 2, room_width - gridX, (room_height / 2) - (string_height("Q") * 1.5));

if (global.max_players < 3)
    _portraitPositionsRect.y += room_height / 4;

portraitPositions = [];

for (var i = 0; i < 4; i++)
    portraitPositions[i] = _portraitPositionsRect.getCorner(i);

if (!audio_is_playing(mus_characterselect))
{
    audio_stop_all();
    audio_play_sound(mus_characterselect, 1, true);
}
