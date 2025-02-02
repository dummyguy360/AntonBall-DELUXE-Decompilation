if (go == 1 && global.go && !hurt)
{
    if (instance_exists(obj_player))
        move_towards_point(obj_player.x, obj_player.y, 0.25);
}
else
{
    move_towards_point(159, 40, 0.25);
}

if (x == 159 && y == 40 && !go)
{
    speed = 0;
    facing = -1;
}

if (global.go)
{
    if (hspeed > 0)
        facing = 1;
    else if (hspeed < 0)
        facing = -1;
}
else
{
    facing = -1;
}

if (global.win)
{
    part_particles_create(global.p_system, x, y, global.particle_bullet, 1);
    instance_destroy(self);
}
