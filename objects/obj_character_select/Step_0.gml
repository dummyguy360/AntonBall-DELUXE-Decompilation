if (alarm[0] > -1)
    exit;

if (os_type == os_switch && obj_menu_input.controllerConfig)
{
    ds_list_clear(global.activePlayers);
    switch_controller_support_show();
    exit;
}

if (ds_list_size(global.activePlayers) < global.max_players)
{
    for (var i = -1; i < 12; i++)
    {
        var _slotTaken = 0;
        
        for (var j = 0; j < ds_list_size(global.activePlayers); j++)
        {
            if (ds_list_find_value(global.activePlayers, j).remote)
                continue;
            
            if (ds_list_find_value(global.activePlayers, j).controller_slot == i)
            {
                _slotTaken = 1;
                break;
            }
        }
        
        if (_slotTaken)
            continue;
        
        var _newPlayerData;
        
        if (i == -1 && !(os_type == os_switch))
        {
            if (!(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("K")) || keyboard_check_pressed(ord("Z"))))
                continue;
            
            _newPlayerData = 
            {
                controller_slot: -1
            };
        }
        else
        {
            if (!gamepad_is_connected(i) || !gamepad_button_check_pressed(i, gp_start))
                continue;
            
            _newPlayerData = 
            {
                controller_slot: argument[0]
            };
        }
        
        _newPlayerData.key_data = load_key_data(i);
        
        if (global.dp_flow_is_active)
        {
            if (global.dp_active_player_index >= 0)
                continue;
            
            global.dp_new_player_key_data = _newPlayerData.key_data;
            var b = buffer_create(4, buffer_grow, 1);
            buffer_write(b, buffer_u8, UnknownEnum.Value_0);
            buffer_write(b, buffer_s8, _newPlayerData.controller_slot);
            var _unlock_count = array_length(global.unlocks);
            buffer_write(b, buffer_u8, _unlock_count);
            
            for (var _unlock_index = 0; _unlock_index < _unlock_count; _unlock_index++)
                buffer_write(b, buffer_s8, global.unlocks[_unlock_index]);
            
            dp_buffer_send(b);
            buffer_delete(b);
        }
        else
        {
            add_player(_newPlayerData);
        }
        
        exit;
    }
}

allPlayersReady = ds_list_size(global.activePlayers) >= global.min_players;
exiting = 0;

for (var i = 0; i < ds_list_size(global.activePlayers); i++)
{
    var _playerData = ds_list_find_value(global.activePlayers, i);
    var _lostConnection = !global.dp_flow_is_active && _playerData.controller_slot != -1 && !gamepad_is_connected(_playerData.controller_slot);
    player_input(_playerData);
    var _confirm, _exit, _cancel;
    
    if (global.cmn_chat_is_open)
    {
        _confirm = 0;
        _cancel = 0;
        _exit = 0;
    }
    else
    {
        _confirm = menu_confirm;
        _cancel = menu_cancel;
        _exit = obj_menu_input.cancelHeld;
    }
    
    if (is_undefined(_playerData.character_index))
    {
        allPlayersReady = 0;
        var _charPos = _playerData.selectedCharacterPosition;
        var _newX = (_charPos.x + menu_right) - menu_left;
        var _newY = (_charPos.y + menu_down) - menu_up;
        
        if (_newY == (gridHeight - 1) && _charPos.y != (gridHeight - 1))
            _newX = round(map(_newX, 0, gridWidth - 1, 0, lastLineCount - 1));
        else if (_charPos.y == (gridHeight - 1) && _newY != (gridHeight - 1))
            _newX = round(map(_newX, 0, lastLineCount - 1, 0, gridWidth - 1));
        
        if ((_newX != _charPos.x || _newY != _charPos.y) && _newX >= 0 && _newX < gridWidth && _newY >= 0 && _newY < gridHeight && !is_undefined(characterData[_newY][_newX]))
        {
            _charPos.x = _newX;
            _charPos.y = _newY;
            audio_stop_sound(snd_dot);
            audio_play_sound(snd_dot, 1, false);
        }
        
        var _selectedCharacter = characterData[_charPos.y][_charPos.x];
        
        if (_confirm)
        {
            if (is_undefined(_selectedCharacter.myUnlockIndex) || _playerData.unlocks[_selectedCharacter.myUnlockIndex])
            {
                _playerData.character_index = _selectedCharacter.character_index;
                audio_play_sound(snd_tick, 1, false);
                continue;
            }
            else
            {
                audio_stop_sound(snd_buzzer);
                audio_play_sound(snd_buzzer, 1, false);
            }
        }
        
        if (_exit && !_playerData.remote)
            exiting = 1;
        
        if ((menu_leave && !instance_exists(obj_keybindMenu)) || _lostConnection)
        {
            instance_destroy(obj_keybindMenu);
            ds_list_delete(global.activePlayers, i);
            
            if (global.dp_active_player_index == i)
                global.dp_active_player_index = -1;
            else if (global.dp_active_player_index > i)
                global.dp_active_player_index -= 1;
            
            i -= 1;
            continue;
        }
    }
    else if (!instance_exists(_playerData.keybindMenu))
    {
        if (menu_select && !(os_type == os_switch))
        {
            _playerData.keybindMenu = instance_create_depth(0, 0, 0, obj_keybindMenu);
            
            with (_playerData.keybindMenu)
            {
                drawRect = new rect(other.portraitPositions[i].x, floor(i / 2) * (room_height / 2), other.gridX, room_height / 2);
                drawRect.x -= drawRect.width / 2;
                myPlayerData = ds_list_find_value(global.activePlayers, i);
            }
            
            allPlayersReady = 0;
        }
        else if (_cancel || _lostConnection)
        {
            _playerData.character_index = undefined;
            allPlayersReady = 0;
        }
        else if (menu_left || menu_right)
        {
            _playerData.team = !_playerData.team;
        }
    }
    else
    {
        allPlayersReady = 0;
        
        if (((menu_cancel || menu_select) && !_playerData.keybindMenu.currentlyBinding) || _lostConnection)
            instance_destroy(_playerData.keybindMenu);
    }
}

if (global.character_select_vs)
{
    var _teamCount = [0, 0];
    
    for (var i = 0; i < ds_list_size(global.activePlayers); i++)
        array_set(_teamCount, ds_list_find_value(global.activePlayers, i).team, array_get(_teamCount, ds_list_find_value(global.activePlayers, i).team) + 1);
    
    for (var i = 0; i < 2; i++)
    {
        if (_teamCount[i] == 0 || _teamCount[i] > 2)
            allPlayersReady = 0;
    }
}
else
{
    for (var i = 0; i < ds_list_size(global.activePlayers); i++)
        ds_list_find_value(global.activePlayers, i).team = 0;
}

if (exiting)
    exitCharge += 1;
else
    exitCharge = 0;

if (exitCharge >= exitDelay)
{
    if (global.dp_flow_is_active && dp_get_is_server())
    {
        var b = buffer_create(16, buffer_grow, 1);
        buffer_write(b, buffer_u8, UnknownEnum.Value_1);
        dp_buffer_send(b);
        buffer_delete(b);
    }
    else
    {
        if (global.dp_flow_is_active)
        {
            dp_reset();
            global.previous_room = 18;
        }
        
        if (global.next_room == 56)
            instance_create_layer(0, 0, "Transition", obj_title_transition_exit_b);
        else
            instance_create_layer(0, 0, "Transition", obj_title_transition_exit);
        
        audio_play_sound(snd_exit, 1, false);
        alarm[0] = 120;
    }
}
else if (allPlayersReady && obj_menu_input.confirm)
{
    if (global.next_room == 56)
        instance_create_layer(0, 0, "Transition", obj_title_transition_exit_b);
    else
        instance_create_layer(0, 0, "Transition", obj_title_transition_exit);
    
    audio_play_sound(snd_select, 1, false);
    alarm[0] = 120;
}
