global.classic_stage = 0;
global.adventure_stage = 0;
global.punchball_stage = 1;
global.go = 1;

for (var i = 0; i < ds_list_size(global.activePlayers); i++)
    ds_list_find_value(global.activePlayers, i).playerLives = 0;

global.stage_name = "";
global.stage_name_long = "";
global.next_room = 97;
global.music_playing = 1;
global.music_song = 40;
global.achievementFlags.gameWon = 1;
