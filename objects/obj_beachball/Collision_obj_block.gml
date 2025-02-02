if (vsp != 0)
{
    if (!audio_is_playing(snd_beachball_hit))
        audio_play_sound(snd_beachball_hit, 1, false);
}

vsp = -vsp;

if (hsp != 0)
    hsp = -hsp;
else if (place_meeting(x + 8, y, obj_block))
    hsp += -3;
else if (place_meeting(x - 8, y, obj_block))
    hsp -= 3;
