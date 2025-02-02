if (!global.vs_win)
{
    if (!instance_exists(obj_vsbrick_p2))
    {
        global.winning_team = 0;
        global.player1_wins += 1;
        global.player2_losses += 1;
    }
    
    if (!instance_exists(obj_vsbrick_p1))
    {
        global.winning_team = 1;
        global.player2_wins += 1;
        global.player1_losses += 1;
    }
}

if (!is_undefined(global.winning_team))
{
    if (!global.vs_win)
    {
        alarm[1] = 2;
        alarm[2] = 600;
        instance_create_depth(0, 0, -100, obj_flashpot);
        global.music_playing = 0;
        global.vs_win = 1;
        
        with (obj_player)
        {
            if (team == global.winning_team)
                currentstate = UnknownEnum.Value_8;
            else
                currentstate = UnknownEnum.Value_9;
        }
    }
}
