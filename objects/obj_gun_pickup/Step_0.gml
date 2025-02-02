event_inherited();

if (global.win && global.classic_stage)
{
    global.points_p1 += 500;
    part_particles_create(global.p_system, x, y, global.particle_500mini, 1);
    instance_destroy();
}
