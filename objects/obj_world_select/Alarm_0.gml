if (exitCharge >= exitDelay)
{
    if (global.dp_flow_is_active)
    {
        dp_flow_close();
        room_goto(rm_netplayMenu);
    }
    else
    {
        room_goto(rm_character_select);
    }
}
else
{
    global.bonus_stage = 0;
    global.bonuslost = 0;
    global.continues = 1;
    global.points_p1 = 0;
    global.points_p2 = 0;
    ruckusrubies = 0;
    
    if (arcade)
    {
        global.player_lives = 5;
    }
    else if (punchball)
    {
        for (var i = 0; i < ds_list_size(global.activePlayers); i++)
            ds_list_find_value(global.activePlayers, i).playerLives = 5;
    }
    
    audio_stop_sound(mus_characterselect);
    room_goto(global.next_room);
}
