if (other.dashinvuln)
{
    if (!hurt)
    {
        audio_play_sound(snd_snickdie, 1, false);
        hurt = 1;
        part_particles_create(global.p_system, x, y, global.particle_bullet, 1);
        go = 0;
        alarm[3] = 240;
        flash = 0;
        x = 159;
        y = 40;
    }
}
