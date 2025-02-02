event_inherited();

onPlayerHit = function()
{
    audio_stop_sound(snd_lightning_hit);
    audio_play_sound(snd_lightning_hit, 100, false);
    part_particles_create(global.p_system, x, y, global.particle_bullet, 1);
    instance_destroy(self);
};

lethal = 0;
moveSpeed = 0.5;
minX = 40;
maxX = 170;
minY = 25;
maxY = 115;
loopDuration = (2 * max(maxX - minX, maxY - minY)) / (moveSpeed / 1.41);
age = map(x, minX, maxX, 0, loopDuration / 2);

if (y < ((maxY - minY) / 2))
    age *= 2;

targetPosition = new vector2();
audio_stop_sound(snd_lightning_spawn);
audio_play_sound(snd_lightning_spawn, 1, false);
