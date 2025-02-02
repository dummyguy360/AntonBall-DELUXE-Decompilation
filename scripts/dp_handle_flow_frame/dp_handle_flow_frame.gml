function dp_handle_flow_frame()
{
    var pn = dp_get_players();
    
    for (var p = 0; p < pn; p++)
    {
        var s = dp_text_get(p);
        
        if (s != "")
            cmn_chat_add(sfmt("%: %", dp_player_get_alias(p), s));
        
        var bn = dp_buffer_count(p);
        
        for (var bi = 0; bi < bn; bi++)
        {
            var b = dp_buffer_id(p, bi);
            buffer_seek(b, buffer_seek_start, 0);
            dp_flow_packet_read(p, b);
        }
    }
    
    var i = ds_list_size(global.activePlayers);
    
    while (--i >= 0)
    {
        var ap = ds_list_find_value(global.activePlayers, i);
        
        if (!dp_player_is_active(ap.net_index))
        {
            with (ap.keybindMenu)
                instance_destroy();
            
            ds_list_delete(global.activePlayers, i);
        }
    }
    
    var ai = global.dp_active_player_index;
    
    if (ai >= 0)
    {
        var ap = ds_list_find_value(global.activePlayers, ai);
        
        if (ap == undefined || !dp_player_is_local(ap.net_index))
        {
            i = ds_list_size(global.activePlayers);
            
            while (--i >= 0)
            {
                ap = ds_list_find_value(global.activePlayers, i);
                
                if (dp_player_is_local(ap.net_index))
                    break;
            }
            
            global.dp_active_player_index = i;
        }
    }
}

function dp_flow_packet_read(argument0, argument1)
{
    var _local = dp_player_is_local(argument0);
    
    switch (buffer_read(argument1, buffer_u8))
    {
        case UnknownEnum.Value_0:
            var _slot = buffer_read(argument1, buffer_s8);
            var _index = ds_list_size(global.activePlayers);
            
            if (_index >= global.max_players)
            {
                if (_local)
                    dp_new_player_data = undefined;
                
                exit;
            }
            
            for (var _check = 0; _check < _index; _check++)
            {
                var _curPlayerData = ds_list_find_value(global.activePlayers, _check);
                
                if (_curPlayerData.net_index == argument0)
                    exit;
            }
            
            var _unlock_count = buffer_read(argument1, buffer_u8);
            var _unlocks = array_create(_unlock_count);
            
            for (var _unlock_index = 0; _unlock_index < _unlock_count; _unlock_index++)
                _unlocks[_unlock_index] = buffer_read(argument1, buffer_s8);
            
            var _newPlayerData = 
            {
                controller_slot: argument[0],
                key_data: argument[1],
                remote: argument[2],
                net_index: argument[3],
                unlocks: argument[4]
            };
            
            if (_local)
            {
                global.dp_active_player_index = _index;
                _newPlayerData.key_data = global.dp_new_player_key_data;
                global.dp_new_player_key_data = undefined;
            }
            
            if (_newPlayerData.key_data == undefined)
            {
                _newPlayerData.key_data = new inputKeyDataStruct();
                
                if (_slot < 0)
                    _newPlayerData.key_data.convertToKeyboard();
            }
            
            with (obj_character_select)
                add_player(_newPlayerData, !_local);
            
            break;
        
        case UnknownEnum.Value_1:
            with (obj_character_select)
            {
                exitCharge = exitDelay;
                instance_create_layer(0, 0, "Transition", obj_title_transition_exit);
                audio_play_sound(snd_exit, 1, false);
                alarm[0] = 120;
            }
            
            break;
    }
}
