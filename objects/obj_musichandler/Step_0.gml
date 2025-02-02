if (global.vs_stage)
{
    if (global.go && !global.vs_win && !global.music_started)
    {
        audio_play_sound(global.music_song, 1000, true);
        global.music_started = 1;
    }
    else if (global.vs_win && !audio_is_playing(mus_vs_win))
    {
        audio_stop_sound(global.music_song);
        audio_play_sound(mus_vs_win, 1, true);
    }
}
else if (global.classic_stage == 1)
{
    if (!global.go && !b_intro_playing && !global.bonus_stage && room != rm_fin)
    {
        audio_play_sound(mus_levelstart, 1, false);
        b_intro_playing = 1;
    }
    else if ((global.gamestart == 1 || global.bonus_stage) && !global.music_started)
    {
        audio_play_sound(global.music_song, 100, true);
        global.music_started = 1;
    }
}
else if (global.adventure_stage && !global.music_started)
{
    if (global.music_playing)
    {
        if (!audio_is_playing(global.music_song))
            audio_play_sound(global.music_song, 1000, true);
        
        global.music_started = 1;
    }
}
else if (global.punchball_stage == 1)
{
    var _totalLives = 0;
    
    for (var i = 0; i < ds_list_size(global.activePlayers); i++)
        _totalLives += ds_list_find_value(global.activePlayers, i).playerLives;
    
    if (!global.go && !b_intro_playing && !global.bonus_stage && _totalLives > 0)
    {
        audio_play_sound(mus_levelstart, 1, false);
        b_intro_playing = 1;
    }
    else if ((global.gamestart == 1 || global.bonus_stage) && !global.music_started)
    {
        audio_play_sound(global.music_song, 100, true);
        global.music_started = 1;
    }
}
