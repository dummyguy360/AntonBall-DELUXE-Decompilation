function game_over_menu()
{
    var cursor = 39;
    
    if (global.punchball_stage)
        cursor = 37;
    
    if (scr_button("CONTINUE # " + string(global.continues), 0, cursor))
    {
        global.continues -= 1;
        global.player_lives = 5;
        
        for (var i = 0; i < ds_list_size(global.activePlayers); i++)
            ds_list_find_value(global.activePlayers, i).playerLives = 5;
        
        global.currency += (global.points_p1 + (global.punchball_stage ? global.points_p2 : 0));
        
        if (global.classic_stage)
            global.scores_arcade = add_score(global.scores_arcade, global.points_p1);
        else
            global.scores_punchball = add_score(global.scores_punchball, global.points_p1 + global.points_p2);
        
        global.points = 0;
        global.points_p1 = 0;
        global.points_p2 = 0;
        global.next_room = room;
        global.achievementFlags.continueUsed = 1;
        
        with (obj_controller)
        {
            scorebenchmark = 1;
            scorebenchmark_pb = [1, 1];
        }
        
        on_select();
    }
    
    if (scr_button("QUIT", 0, cursor))
    {
        global.next_room = global.classic_stage ? 96 : 97;
        on_select();
    }
}
