if (room == rm_pb_fin || global.continues <= 0 || global.bonuslost || global.achievementFlags.gameWon)
{
    instance_create_depth(0, 0, -1000, obj_transition_fadeoutw);
    
    if (!global.bonuslost)
        global.next_room = global.classic_stage ? 96 : 97;
    
    alarm[8] = 90;
}
else
{
    instance_create_depth(0, 0, obj_hud.depth + 1, obj_game_over_menu);
}
