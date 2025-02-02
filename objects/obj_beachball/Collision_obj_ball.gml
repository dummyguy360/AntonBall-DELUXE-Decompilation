bounce = 0;

if (!audio_is_playing(snd_beachball_hit))
    audio_play_sound(snd_beachball_hit, 1, false);

if (other.hspeed < 0)
    framespeed += 0.005;
else if (other.hspeed > 0)
    framespeed += 0.005;
else
    hsp = choose(1.5, -1.5);

hsp += other.hspeed;

if (other.vspeed <= 0)
    vsp += -2;
else
    vsp += 2;

other.hspeed = -other.hspeed;
other.vspeed = -other.vspeed;
