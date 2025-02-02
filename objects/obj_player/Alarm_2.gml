if (currentstate == UnknownEnum.Value_4)
{
    part_particles_create(global.p_system, x, y, particle, 1);
    part_type_scale(particle, facing, 1);
    part_type_color1(particle, choose(16776960, 255, 16711680, 65280, 16776960));
    alarm[2] = 3;
}
