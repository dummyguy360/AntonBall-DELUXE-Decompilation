audio_stop_sound(snd_lightning_hit);
audio_play_sound(snd_lightning_hit, 100, false);
part_particles_create(global.p_system, x, y, global.particle_bullet, 1);
instance_destroy();
