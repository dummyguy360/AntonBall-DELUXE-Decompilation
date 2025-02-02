function dash_state()
{
    vsp = 0;
    gsp = 0;
    b_backflipped = 0;
    
    if (dash == 2)
    {
        hsp -= 0.2;
        facing = 1;
        
        if (hsp < 0)
            hsp = 0;
    }
    
    if (dash == 3)
    {
        hsp += 0.2;
        facing = -1;
        
        if (hsp > 0)
            hsp = 0;
    }
    
    if (dash == 0)
    {
        hsp = 2.5;
        facing = 1;
    }
    
    if (dash == 1)
    {
        hsp = -2.5;
        facing = -1;
    }
    
    if (dashtimer < 1)
        currentstate = UnknownEnum.Value_0;
    
    if (instance_place(x, y, obj_player))
    {
        var _playerhsp = facing * 3;
        var _player = instance_place(x, y, obj_player);
        
        if (!_player.b_ishurt)
        {
            audio_play_sound(snd_hit, 1, false);
            _player.deal_damage(_playerhsp);
            hsp = 0;
        }
    }
    
    if (instance_place(x, y, obj_ballbuster))
    {
        var other_enemy = instance_place(x, y, obj_ballbuster);
        
        if (hsp > 0)
            other_enemy.hsp = 2.5;
        
        if (hsp < 0)
            other_enemy.hsp = -2.5;
        
        hsp = 0;
    }
}
