lethal = 0;
bounce = 0;
audio_stop_sound(snd_flatten);
audio_play_sound(snd_flatten, 1, false);
vsp = -3;

if (place_meeting(x + 1, y, obj_block))
    hsp = -3;
else if (place_meeting(x - 1, y, obj_block))
    hsp = 3;
else
    hsp = choose(3, -3);
