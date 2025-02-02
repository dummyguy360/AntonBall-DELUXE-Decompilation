audio_stop_sound(snd_explosion);
audio_play_sound(snd_explosion, 1000, false);

if (other.object_index == obj_metalbrick)
    instance_destroy(other);

instance_destroy();
