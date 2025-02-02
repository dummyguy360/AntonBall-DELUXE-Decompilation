music = [31, 56, 194, 21, 76];
currentTrack = audio_play_sound(music[0], 0, true);
nextTrack = -1;
creditsOver = 0;

if (global.next_room == 118)
{
    backgroundGallery = [749, 45, 736, 744, 561];
    sprite_index = spr_anton_run;
}
else
{
    backgroundGallery = [410, 452, 362, 36, 679];
    sprite_index = spr_annie_run;
}

currentBackgroundIndex = 0;
transitionTime = 90;
creditsSpeed = 0.24;
topY = room_height;
bottomY = undefined;
drawX = 0;
creditsData = [];
var _creditsFile = file_text_open_read(working_directory + "\\credits.txt");

while (!file_text_eof(_creditsFile))
{
    var _string = file_text_readln(_creditsFile);
    var _lineData = 
    {
        myFont: fnt_chat,
        myString: _string
    };
    
    if (string_char_at(_string, 1) == "!")
    {
        _lineData.myString = string_delete(_string, 1, 1);
        _lineData.myFont = global.font1;
    }
    
    draw_set_font(_lineData.myFont);
    var _drawX = 2 + (string_width(_lineData.myString) / 2);
    
    if (_drawX > drawX)
        drawX = _drawX;
    
    array_push(creditsData, _lineData);
}

file_text_close(_creditsFile);
instance_create_depth(0, 0, depth - 200, obj_transition_fadeinw);
