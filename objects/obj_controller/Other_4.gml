global.win = 0;
playerdead = 0;
global.combo = 0;

if (global.classic_stage == 1)
{
    if (global.snickschallenge && !global.intermission)
        instance_create_layer(159, 40, "Level", obj_snickghost);
    
    ruckusrubycollected = 0;
    global.gamestart = 0;
    global.ball_oob = 0;
    global.go = 0;
    global.bonuslost = 0;
    gameover = 0;
    playerBallHits = 0;
    alarm[2] = 180;
    alarm[3] = 15;
    alarm[6] = 1200;
}

if (global.adventure_stage)
{
    global.continues = 1;
    global.gamestart = 0;
    global.ball_oob = 0;
    global.bonuslost = 0;
    gameover = 0;
    playerBallHits = 0;
}

if (global.punchball_stage == 1)
{
    global.win = 0;
    global.gamestart = 0;
    global.go = 0;
    global.bonuslost = 0;
    gameover = 0;
    alarm[2] = 180;
    alarm[3] = 15;
}

if (room == fin)
    instance_destroy(self);

switch (room)
{
    case rm_menu_antonball:
    case rm_menu_punchball:
    case rm_menu_vs:
    case rm_character_select:
        alarm[5] = -1;
        alarm[6] = -1;
        gameover = 0;
        scorebenchmark = 1;
        scorebenchmark_pb = [1, 1];
        global.continues = 1;
        break;
}
