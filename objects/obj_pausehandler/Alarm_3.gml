instance_activate_all();
audio_resume_all();
audio_stop_sound(snd_unpause);
audio_play_sound(snd_unpause, 1, false);
pause = 0;
