bounce = 0;

if (!audio_is_playing(snd_beachball_hit))
    audio_play_sound(snd_beachball_hit, 1, false);

if (other.hsp < 0)
    framespeed += 0.005;
else if (other.hsp > 0)
    framespeed += 0.005;
else
    hsp = choose(1.5, -1.5);

hsp += other.hsp;

if (other.vsp <= 0)
    vsp += -2;
else
    vsp += 2;

other.hsp = -other.hsp;
other.vsp = -other.vsp;
