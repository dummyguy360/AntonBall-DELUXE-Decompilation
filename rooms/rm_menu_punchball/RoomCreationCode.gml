global.classic_stage = 0;
global.punchball_stage = 0;
global.vs_stage = 0;
global.character_select_vs = 0;
global.currency += (global.points_p1 + global.points_p2);
global.scores.punchball = add_score(global.scores.punchball, global.points_p1 + global.points_p2);

if (array_length(global.scores.punchball) > 0)
    steam_upload_score("HIGHSCORES_PUNCHBALL", global.scores.punchball[0]);

global.points_p1 = 0;
