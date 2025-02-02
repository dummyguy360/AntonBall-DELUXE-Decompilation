var inst = instance_place(x + hspeed, y + vspeed, obj_barrier);

if (inst != -4)
{
    audio_play_sound(snd_breakpunch, 1, false);
    part_particles_create(global.p_system, x + 3, y, global.particle_glassshard, 1);
    part_particles_create(global.p_system, x + 1, y + 1, global.particle_glassshard, 1);
    part_particles_create(global.p_system, x - 1, y - 1, global.particle_glassshard, 1);
    part_particles_create(global.p_system, x, y - 2, global.particle_glassshard, 1);
    instance_destroy(self);
}
