function crouch_state()
{
    hsp = approach(hsp, 0, 0.1);
    
    if (!down || !b_on_ground || b_holding)
        currentstate = UnknownEnum.Value_0;
    
    if (key_jump)
        buffer_counter = buffer_max;
    
    if (buffer_counter > 0)
    {
        buffer_counter -= 1;
        
        if (b_on_ground || coyote_counter > 0)
        {
            buffer_counter = 0;
            coyote_counter = 0;
            vsp = bfpower;
            b_jumped = 1;
            b_backflipped = 1;
            audio_stop_sound(snd_backflip);
            audio_play_sound(snd_backflip, 100, false);
        }
    }
    
    if (b_on_ground == 0)
    {
        if (coyote_counter > 0)
            coyote_counter -= 1;
    }
}
