deadfloat = 0;
vsp = -2;

if (voicetimer == 0)
{
    audio_play_sound(choose(voice_hurt1, voice_hurt2, voice_hurt3), 1, false);
    audio_stop_sound(snd_playerdie);
}

audio_play_sound(snd_playerdie, 1, false);
