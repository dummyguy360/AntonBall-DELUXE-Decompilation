if (!instance_exists(obj_brickparent))
{
    part_particles_create(global.p_system, x + 3, y, global.particle_bullet, 1);
    instance_destroy(self);
}
