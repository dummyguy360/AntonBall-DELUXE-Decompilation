if (global.classic_stage == 1)
{
    if (global.points_p1 > (scorebenchmark * 10000))
    {
        scorebenchmark += 1;
        audio_play_sound(snd_extralife, 1, false);
        global.player_lives = global.player_lives + 1;
    }
    
    if (global.ball_oob)
        global.combo = 0;
    
    if (!instance_exists(obj_brickparent) && !global.win)
    {
        global.win = 1;
        global.combo = 0;
        global.ball_oob = 0;
        alarm[5] = -1;
        alarm[6] = -1;
        
        if (obj_player.currentstate != UnknownEnum.Value_12)
        {
            audio_stop_all();
            
            if (!audio_is_playing(mus_levelcomplete))
                audio_play_sound(mus_levelcomplete, 1, false);
            
            obj_player.alarm[9] = 160;
            obj_player.currentstate = UnknownEnum.Value_12;
            
            if (alarm[0] > -1)
            {
                event_perform(ev_alarm, 0);
                alarm[0] = -1;
            }
        }
        
        instance_destroy(obj_ball);
        audio_stop_sound(global.music);
    }
    
    if (global.gamestart == 1 && ((keyboard_check_pressed(ord("K")) || gamepad_button_check_pressed(0, gp_face1)) && global.go == 0))
        alarm_set(1, 3600);
    
    if (global.gamestart == 1 && global.go == 1 && !instance_exists(obj_ball))
        global.ball_oob = 1;
    
    if (!global.intermission && !global.win && !global.bonuslost && instance_exists(obj_brickparent) && !gameover)
    {
        for (var i = 0; i < ds_list_size(global.activePlayers) && global.player_lives > 0; i++)
        {
            var _spawn = 1;
            
            with (obj_player)
            {
                if (ds_list_find_value(global.activePlayers, i) == playerData)
                    _spawn = 0;
            }
            
            if (_spawn)
            {
                var _spawner = undefined;
                
                with (obj_player_spawn)
                {
                    if (order == i)
                        _spawner = self;
                }
                
                if (is_undefined(_spawner))
                    _spawner = instance_find(obj_player_spawn, 0);
                
                var _player = instance_create_layer(_spawner.x, _spawner.y, "System", obj_player);
                
                with (_player)
                {
                    controller_slot = ds_list_find_value(global.activePlayers, i).controller_slot;
                    character_index = ds_list_find_value(global.activePlayers, i).character_index;
                    team = ds_list_find_value(global.activePlayers, i).team;
                    playerData = ds_list_find_value(global.activePlayers, i);
                    event_user(1);
                }
                
                if (!global.bonus_stage)
                {
                    if (playerdead && i == 0)
                        global.player_lives -= 1;
                    
                    global.ball_oob = 0;
                }
            }
        }
        
        if (!instance_exists(obj_ball) && global.player_lives > 0 && !global.bonus_stage && global.gamestart)
            instance_create_layer(obj_ballspawn.x, obj_ballspawn.y, "Barriers", obj_ball);
    }
    
    if (global.bonus_stage && global.bonuslost && !playerdead)
    {
        audio_stop_all();
        alarm[7] = 60;
        global.next_room = room_next(room);
        playerdead = 1;
    }
    
    if (global.player_lives == 0 && !gameover)
    {
        instance_destroy(obj_player);
        audio_stop_all();
        audio_play_sound(mus_gameover, 1, false);
        alarm[5] = -1;
        alarm[6] = -1;
        alarm[7] = 390;
        instance_destroy(obj_pausehandler);
        gameover = 1;
    }
}

if (global.snickschallenge)
{
    if (instance_number(obj_brickparent) == 10)
    {
        if (!instance_exists(obj_ruckusruby) && !ruckusrubycollected)
        {
            audio_play_sound(snd_fall, 1, false);
            
            if (room == rm_l1)
                instance_create_layer(97, 35, "Player", obj_ruckusruby);
            else if (room == rm_l2)
                instance_create_layer(41, 35, "Player", obj_ruckusruby2);
            else if (room == rm_l3)
                instance_create_layer(101, 101, "Player", obj_ruckusruby3);
            else if (room == rm_l4)
                instance_create_layer(131, 72, "Player", obj_ruckusruby4);
            else if (room == rm_l5)
                instance_create_layer(53, 35, "Player", obj_ruckusruby5);
        }
    }
    
    if (room == rm_l6 && !instance_exists(obj_ruckusruby) && !ruckusrubycollected)
        instance_create_layer(100, 35, "Player", obj_ruckusruby6);
}

if (global.punchball_stage == 1)
{
    if (global.points_p1 > (scorebenchmark_pb[0] * 10000))
    {
        scorebenchmark_pb[0] += 1;
        audio_play_sound(snd_extralife, 1, false);
        ds_list_find_value(global.activePlayers, 0).playerLives = ds_list_find_value(global.activePlayers, 0).playerLives + 1;
    }
    
    if (global.points_p2 > (scorebenchmark_pb[1] * 10000))
    {
        scorebenchmark_pb[1] += 1;
        audio_play_sound(snd_extralife, 1, false);
        ds_list_find_value(global.activePlayers, 1).playerLives = ds_list_find_value(global.activePlayers, 1).playerLives + 1;
    }
    
    var _gameOver = 0;
    
    if (!global.intermission && !global.win && !global.bonuslost && !gameover)
    {
        _gameOver = 1;
        
        for (var i = 0; i < ds_list_size(global.activePlayers); i++)
        {
            var _spawn = ds_list_find_value(global.activePlayers, i).playerLives > 0;
            
            if (_spawn)
                _gameOver = 0;
            
            with (obj_player)
            {
                if (playerData == ds_list_find_value(global.activePlayers, i))
                    _spawn = 0;
            }
            
            if (global.bonus_stage && global.go)
                _spawn = 0;
            
            if (_spawn)
            {
                if (ds_list_find_value(global.activePlayers, i).playerLives == 1 && playerdead)
                {
                    ds_list_find_value(global.activePlayers, i).playerLives = 0;
                }
                else
                {
                    var _spawner = asset_get_index("obj_player" + string(i + 1) + "spawn");
                    var _player = instance_create_layer(_spawner.x, _spawner.y, "Player", obj_player);
                    
                    with (_player)
                    {
                        controller_slot = ds_list_find_value(global.activePlayers, i).controller_slot;
                        character_index = ds_list_find_value(global.activePlayers, i).character_index;
                        team = ds_list_find_value(global.activePlayers, i).team;
                        playerData = ds_list_find_value(global.activePlayers, i);
                        event_user(1);
                    }
                    
                    with (instance_create_layer(_player.x - 12, _player.y - 12, "Player", obj_punchball))
                    {
                        my_player = _player;
                        
                        switch (i)
                        {
                            case 0:
                                sprite_index = spr_punchball;
                                break;
                            
                            case 1:
                                sprite_index = spr_punchball_red;
                                break;
                        }
                    }
                    
                    if (!global.bonus_stage)
                    {
                        if (playerdead)
                            ds_list_find_value(global.activePlayers, i).playerLives = ds_list_find_value(global.activePlayers, i).playerLives - 1;
                        
                        global.ball_oob = 0;
                    }
                }
            }
        }
    }
    
    if (global.go && !playerdead && global.bonus_stage && !instance_exists(obj_player))
    {
        audio_stop_all();
        alarm[7] = 60;
        global.next_room = room_next(room);
        playerdead = 1;
        global.bonuslost = 1;
    }
    
    if (_gameOver)
    {
        if (gameover == 0)
        {
            instance_destroy(obj_player);
            audio_stop_all();
            audio_play_sound(mus_gameover, 1, false);
            alarm[5] = -1;
            alarm[6] = -1;
            alarm[7] = 390;
            instance_destroy(obj_pausehandler);
            gameover = 1;
        }
    }
}

if (global.adventure_stage)
{
    if (!global.intermission && !global.win && !global.bonuslost && !gameover)
    {
        for (var i = 0; i < ds_list_size(global.activePlayers) && global.player_lives > 0; i++)
        {
            var _spawn = 1;
            
            with (obj_player)
            {
                if (ds_list_find_value(global.activePlayers, i) == playerData)
                    _spawn = 0;
            }
            
            if (_spawn)
            {
                var _spawner = undefined;
                
                with (obj_player_spawn)
                {
                    if (order == i)
                        _spawner = self;
                }
                
                if (is_undefined(_spawner))
                    _spawner = instance_find(obj_player_spawn, 0);
                
                var _player = instance_create_layer(_spawner.x, _spawner.y, "Player", obj_player);
                
                with (_player)
                {
                    controller_slot = ds_list_find_value(global.activePlayers, i).controller_slot;
                    character_index = ds_list_find_value(global.activePlayers, i).character_index;
                    team = ds_list_find_value(global.activePlayers, i).team;
                    playerData = ds_list_find_value(global.activePlayers, i);
                    event_user(1);
                }
            }
        }
    }
}

if (global.vs_stage == 1 && global.player_lives > 0 && !global.vs_win)
{
    if (!instance_exists(obj_ball))
        instance_create_layer(obj_ballspawn.x, obj_ballspawn.y, "Player", obj_ball);
}

if (global.vs_stage == 1)
{
    var _teamPlayers = [0, 0];
    
    for (var i = 0; i < ds_list_size(global.activePlayers); i++)
    {
        var _spawn = 1;
        
        with (obj_player)
        {
            if (ds_list_find_value(global.activePlayers, i) == playerData)
                _spawn = 0;
        }
        
        if (_spawn)
        {
            var _team = ds_list_find_value(global.activePlayers, i).team;
            var _spawner = undefined;
            
            with (obj_player_spawn)
            {
                if (team == _team && order == _teamPlayers[_team])
                    _spawner = self;
            }
            
            _teamPlayers[_team] += 1;
            
            if (is_undefined(_spawner))
            {
                show_debug_message("SPAWNER NOT FOUND, SELECTING RANDOMLY");
                _spawner = instance_find(obj_player_spawn, 0);
            }
            
            var _player = instance_create_layer(_spawner.x, _spawner.y, "Player", obj_player);
            
            with (_player)
            {
                controller_slot = ds_list_find_value(global.activePlayers, i).controller_slot;
                character_index = ds_list_find_value(global.activePlayers, i).character_index;
                team = _team;
                facing = (team == 1) ? -1 : 1;
                playerData = ds_list_find_value(global.activePlayers, i);
                event_user(1);
            }
        }
    }
}

if (alarm[0] == 899)
{
    for (var i = 0; i < array_length(wavy_effect_layers); i++)
    {
        var _layer = layer_get_id(wavy_effect_layers[i]);
        global.wavytimer = 0;
        
        if (_layer != -1)
        {
            layer_script_begin(_layer, wavy_shader_begin);
            layer_script_end(_layer, wavy_shader_end_powerup);
        }
    }
}
else if (alarm[0] > -1 && global.ball_oob)
{
    alarm[0] = 1;
}

if (alarm[0] > 1)
    global.wavytimer += 1;
