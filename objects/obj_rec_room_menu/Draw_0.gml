var _currentItem = menuItems[cmn_menu_get_select(menu)];
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
cmn_menu_draw(menu, 10, drawY);
draw_sprite(_currentItem.sprite, 0, room_width * 0.75, (room_height / 3) + uiOffset);
var _playing = audio_is_playing(currentSound);
var _drawX = room_width * 0.75;
var _drawY = (room_height * (2/3)) + uiOffset;
draw_sprite(spr_playButton, _playing && audio_is_playing(_currentItem.sound), _drawX, _drawY);
_drawX -= sprite_get_width(spr_playButton);
_drawY += (sprite_get_height(spr_playButton) * 0.625);
draw_set_color(c_gray);
draw_line_width(_drawX, _drawY, _drawX + (sprite_get_width(spr_playButton) * 2), _drawY, sprite_get_height(spr_playButton) / 6);

if (audio_is_playing(currentSound) || audio_is_paused(currentSound))
{
    draw_set_color(c_white);
    draw_line_width(_drawX, _drawY, _drawX + (sprite_get_width(spr_playButton) * 2 * (audio_sound_get_track_position(currentSound) / audio_sound_length(currentSound))), _drawY, sprite_get_height(spr_playButton) / 6);
    var _name = currentlyPlayingItem.name;
    
    if (currentlyPlayingItem.sound == mus_not_unlocked)
        _name = "THE 'YOU HAVE NOT UNLOCKED THIS SONG' SONG";
    
    draw_bottom_scroll(sfmt("CURRENTLY PLAYING: %", _name), bottomScrollTime);
}

draw_back_button(2, 2, backCharge, backTime);
