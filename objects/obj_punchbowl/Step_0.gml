if (instance_place(x, y, obj_player))
{
    var attacking_player = instance_place(x, y, obj_player);
    
    if (attacking_player.currentstate == UnknownEnum.Value_4 && currentstate == 0)
    {
        if (attacking_player.hsp > 0)
            hsp = 2.5;
        
        if (attacking_player.hsp < 0)
            hsp = -2.5;
        
        vsp = -3;
        image_index = 1;
        global.points_p1 += 150;
        audio_play_sound(snd_hit, 1, false);
        audio_play_sound(snd_breakpunch, 1, false);
        currentstate = 1;
    }
}

if (currentstate == 1)
    vsp += gsp;
