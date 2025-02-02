if (other.currentstate != UnknownEnum.Value_7)
{
    audio_stop_sound(snd_explosion);
    audio_play_sound(snd_explosion, 1000, false);
    other.deal_damage(facing * 3);
    audio_play_sound(snd_hit, 1, false);
    instance_destroy(self);
}
