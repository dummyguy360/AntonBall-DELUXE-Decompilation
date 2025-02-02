if (place_meeting(x + hsp, y, other))
    hsp = -hsp;

if (place_meeting(x, y + vsp, other))
    vsp = -vsp;

audio_play_sound(snd_fireball, 1, false);
