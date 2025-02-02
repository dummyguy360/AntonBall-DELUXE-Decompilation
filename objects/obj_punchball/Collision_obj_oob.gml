lethal = 0;
bounce = 0;
audio_stop_sound(snd_flatten);
audio_play_sound(snd_flatten, 1, false);
vsp = -3;
hsp = sign((room_width / 2) - x);

if (hsp == 0)
    hsp = 1;

hsp *= 1.7;
