if (instance_number(obj_ball) < 2)
{
    global.go = 0;
    global.ball_oob = 1;
}

audio_stop_sound(snd_flatten);
audio_play_sound(snd_flatten, 100, false);
instance_destroy(self);
