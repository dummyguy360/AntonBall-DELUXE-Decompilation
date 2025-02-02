global.points_p1 += 500;
part_particles_create(global.p_system, x, y, global.particle_500mini, 1);
audio_stop_sound(snd_ruckusruby);
audio_play_sound(snd_ruckusruby, 1, false);
obj_controller.ruckusrubycollected = 1;
obj_controller.ruckusrubies += 1;
instance_destroy(self);
