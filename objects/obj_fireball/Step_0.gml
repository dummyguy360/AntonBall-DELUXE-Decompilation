if (flash == 1)
    image_alpha = 0.2;

if (flash == 0)
    image_alpha = 0.8;

if (global.ball_oob)
{
    audio_play_sound(snd_fireball, 1, false);
    instance_destroy(self);
}

if (hsp > 0)
    facing = 1;
else if (hsp < 0)
    facing = -1;

if (vsp > 0)
    sprite_index = spr_thunderdave;
else if (vsp < 0)
    sprite_index = spr_thunderdave_up;
