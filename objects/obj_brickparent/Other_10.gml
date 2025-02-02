if (!broken)
{
    if (other.spiked)
    {
        obj_controller.shake = 1;
        obj_controller.shakeDur = 5;
        obj_controller.shakeForce = 5;
        hp -= 2;
    }
    else if (!other.spiked)
    {
        obj_controller.shake = 1;
        obj_controller.shakeDur = 3;
        obj_controller.shakeForce = 2;
        hp -= 1;
    }
    
    if (hp < 1)
    {
        broken = 1;
        global.points_p1 += points;
        image_speed = 1;
        sprite_index = blow;
        audio_stop_sound(snd_brick1);
        audio_stop_sound(snd_brick2);
        audio_stop_sound(snd_brick3);
        audio_play_sound(breaksound, 1000, false);
        audio_stop_sound(snd_breakbrick);
        audio_play_sound(snd_breakbrick, 1000, false);
    }
}
