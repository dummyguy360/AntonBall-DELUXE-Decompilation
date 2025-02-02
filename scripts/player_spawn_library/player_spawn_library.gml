function spawn_default_player(argument0)
{
    var _newPlayerData = 
    {
        controller_slot: argument0
    };
    _newPlayerData.key_data = load_key_data(argument0);
    add_player(_newPlayerData);
    _newPlayerData.character_index = 2;
    _newPlayerData.team = 0;
}

function load_key_data(argument0)
{
    var _keyDataIndex;
    
    if (argument0 == -1)
        _keyDataIndex = 4;
    else
        _keyDataIndex = ds_list_size(global.activePlayers);
    
    if (!is_undefined(global.inputKeyData[_keyDataIndex]) && !(os_type == os_switch))
        return json_parse(global.inputKeyData[_keyDataIndex]);
    
    var _out = new inputKeyDataStruct();
    
    if (_keyDataIndex == 4)
    {
        _out.convertToKeyboard();
    }
    else if (os_type == os_switch)
    {
        switch (gamepad_get_description(argument0))
        {
            case "Joy-Con (R)":
            case "Joy-Con (L)":
                _out.convertToSingleJoyCon();
                break;
        }
    }
    
    if (!(os_type == os_switch))
        global.inputKeyData[_keyDataIndex] = json_stringify(_out);
    
    return _out;
}

function add_player(argument0, argument1 = 0)
{
    with (argument0)
    {
        remote = argument1;
        character_index = undefined;
        selectedCharacterPosition = new vector2();
        keybindMenu = -4;
        team = ds_list_size(global.activePlayers) % 2;
        
        if (!global.dp_flow_is_active)
            unlocks = global.unlocks;
        
        playerLives = 5;
    }
    
    ds_list_add(global.activePlayers, argument0);
}
