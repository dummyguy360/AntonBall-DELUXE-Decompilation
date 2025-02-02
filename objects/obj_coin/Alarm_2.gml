global.points_p1 += 250;
part_particles_create(global.p_system, x, y, global.particle_250mini, 1);
audio_stop_sound(snd_coin);
audio_play_sound(snd_coin, 1, false);
instance_destroy(self);
