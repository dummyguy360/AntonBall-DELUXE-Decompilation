var _explosion = create_sprite_effect(random_range(x - (sprite_width / 2), x + (sprite_width / 2)), random_range(y - (sprite_height / 2), y + (sprite_height / 2)), 58);
_explosion.image_speed = 3;
_explosion.depth = depth - 1;
audio_play_sound(snd_bombexplode, 0, false);
alarm[0] = 10;
