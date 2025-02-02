if (alarm[1] > -1)
    draw_sprite_ext(backgroundGallery[currentBackgroundIndex - 1], 0, 0, 0, 1, 1, 0, c_white, 1);

draw_sprite_ext(backgroundGallery[currentBackgroundIndex], 0, 0, 0, 1, 1, 0, c_white, min(1, 1 - (alarm[1] / transitionTime)));
draw_self();

if (creditsOver)
    exit;

var _drawY = topY;
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1);

for (var i = 0; i < array_length(creditsData); i++)
{
    var _string = creditsData[i].myString;
    draw_set_font(creditsData[i].myFont);
    draw_text(drawX, _drawY, _string);
    
    if (_string == "")
        _string = "Q";
    
    _drawY += string_height(_string);
}

if (_drawY <= 0)
{
    creditsOver = 1;
    exit;
}

if (is_undefined(bottomY))
    bottomY = _drawY;

var _lastInd = currentBackgroundIndex;
currentBackgroundIndex = floor(map(_drawY, bottomY, 0, 0, array_length(backgroundGallery)));

if (_lastInd != currentBackgroundIndex)
{
    alarm[1] = transitionTime;
    
    if (currentBackgroundIndex < array_length(music))
    {
        nextTrack = audio_play_sound(music[currentBackgroundIndex], 0, true);
        audio_sound_gain(nextTrack, 0, 0);
        var _time = (transitionTime / 60) * 1000;
        audio_sound_gain(nextTrack, 1, _time);
        audio_sound_gain(currentTrack, 0, _time);
    }
}
