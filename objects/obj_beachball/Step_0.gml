frame_counter();
on_ground = check_below() || check_below_passthrough();
framespeed = hsp;

if (framespeed > 2)
    framespeed = 2;

if (bounce == 4)
    hsp = 0;

if (on_ground)
{
    if (bounce != 4)
    {
        if (bounce == 0)
        {
            audio_play_sound(snd_punchball_bounce, 1, false);
            vsp = -1;
        }
        else if (bounce == 1)
        {
            audio_play_sound(snd_punchball_bounce, 1, false);
            vsp = -0.5;
        }
        else if (bounce == 2)
        {
            audio_play_sound(snd_punchball_bounce, 1, false);
            vsp = -0.25;
        }
        else if (bounce == 3)
        {
            audio_play_sound(snd_punchball_bounce, 1, false);
            vsp = -0.15;
        }
        
        bounce += 1;
    }
}
else
{
    vsp += gsp;
    
    if (vsp > maxfall)
        vsp = maxfall;
}
