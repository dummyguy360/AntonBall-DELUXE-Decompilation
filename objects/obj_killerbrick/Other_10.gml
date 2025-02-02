event_inherited();
audio_stop_sound(snd_killerbrick);
audio_play_sound(snd_killerbrick, 1, false);
depth = -10000;

if (reverse)
    image_xscale = -1;
