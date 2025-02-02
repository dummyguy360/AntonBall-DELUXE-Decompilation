alarm[1] = 5;

if (speed > 0)
{
    if (global.go == 1 && global.options.ballTrails == 1)
        part_particles_create(global.p_system, x, y, global.particle_glassball, 1);
}
