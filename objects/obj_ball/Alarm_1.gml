alarm[1] = 5;

if (speed > 0)
{
    if (global.go && global.options.ballTrails)
    {
        if (global.bonus_stage)
            part_particles_create(global.p_system, x, y, global.particle_goldenball, 1);
        else if (!global.bonus_stage)
            part_particles_create(global.p_system, x, y, global.particle_ball, 1);
    }
}
