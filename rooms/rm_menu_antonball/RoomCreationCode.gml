global.classic_stage = 0;
global.punchball_stage = 0;
global.vs_stage = 0;
global.adventure_stage = 0;
global.character_select_vs = 0;
global.currency += global.points_p1;
global.scores.arcade = add_score(global.scores.arcade, global.points_p1);

if (array_length(global.scores.arcade) > 0)
    steam_upload_score("HIGHSCORES_ANTONBALL", global.scores.arcade[0]);

global.points_p1 = 0;
