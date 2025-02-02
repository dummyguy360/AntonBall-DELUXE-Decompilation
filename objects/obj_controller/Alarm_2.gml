if (global.classic_stage)
{
    if (global.player_lives > 0)
    {
        audio_play_sound(snd_flatten, 1, false);
        
        if (!instance_exists(obj_ball))
            instance_create_layer(obj_ballspawn.x, obj_ballspawn.y, "Barriers", obj_ball);
        
        global.gamestart = 1;
    }
}

if (global.punchball_stage)
{
    var _totalLives = 0;
    
    for (var i = 0; i < ds_list_size(global.activePlayers); i++)
        _totalLives += ds_list_find_value(global.activePlayers, i).playerLives;
    
    if (_totalLives > 0)
    {
        global.gamestart = 1;
        global.go = 1;
    }
}

alarm[2] = -1;
