if (alarm[0] > -1)
    exit;

var _newX = selection.x + obj_menu_input.horizontalDirection;
var _newY = selection.y + obj_menu_input.verticalDirection;

if (_newY == (gridHeight - 1) && selection.y != (gridHeight - 1))
    _newX = round(map(_newX, 0, gridWidth - 1, 0, lastLineCount - 1));
else if (selection.y == (gridHeight - 1) && _newY != (gridHeight - 1))
    _newX = round(map(_newX, 0, lastLineCount - 1, 0, gridWidth - 1));

if ((_newX != selection.x || _newY != selection.y) && _newX >= 0 && _newX < gridWidth && _newY >= 0 && _newY < gridHeight && !is_undefined(menuData[_newY][_newX]))
{
    selection.x = _newX;
    selection.y = _newY;
    audio_stop_sound(snd_dot);
    audio_play_sound(snd_dot, 1, false);
}

if (obj_menu_input.cancelHeld)
    exitCharge += 1;
else
    exitCharge = 0;

var _dotMatrixSelected = vs && unlocks[UnknownEnum.Value_27] && obj_menu_input.controllerConfig && obj_menu_input.cancel;

if (exitCharge >= exitDelay)
{
    if (!punchball)
        instance_create_layer(0, 0, "Transition", obj_title_transition_exit);
    else
        instance_create_layer(0, 0, "Transition", obj_title_transition_exit_b);
    
    audio_play_sound(snd_exit, 1, false);
    alarm[0] = 120;
}
else if (obj_menu_input.confirm || _dotMatrixSelected)
{
    var _selectedItem = menuData[selection.y][selection.x];
    
    if (_dotMatrixSelected)
    {
        _selectedItem = 
        {
            myUnlockIndex: undefined,
            myRoom: 55
        };
    }
    
    if (itemUnlocked(_selectedItem) && !is_undefined(_selectedItem.myRoom))
    {
        global.next_room = _selectedItem.myRoom;
        global.tutorialEnabled = 0;
        
        if (!(global.next_room == 101 || global.next_room == 56))
            global.achievementFlags.continueUsed = 1;
        
        if (global.next_room == 101 && !global.dp_flow_is_active)
        {
            instance_create_depth(0, 0, depth, obj_tutorial_prompt);
            instance_destroy();
        }
        else
        {
            if (!punchball)
                instance_create_layer(0, 0, "Transition", obj_title_transition_exit);
            else
                instance_create_layer(0, 0, "Transition", obj_title_transition_exit_b);
            
            audio_play_sound(snd_select, 1, false);
            alarm[0] = 120;
        }
    }
    else
    {
        audio_stop_sound(snd_buzzer);
        audio_play_sound(snd_buzzer, 1, false);
        
        if (is_undefined(_selectedItem.myRoom))
        {
            funnyIndex = irandom_range(unlocks[UnknownEnum.Value_8] ? 1 : 0, sprite_get_number(spr_funny) - 1);
            
            if (funnyIndex == 0)
            {
                _selectedItem.name = "PAUL";
                unlock(UnknownEnum.Value_8);
                
                if (!global.dp_flow_is_active)
                {
                    for (var i = 0; i < ds_list_size(global.activePlayers); i++)
                        ds_list_find_value(global.activePlayers, i).character_index = 5;
                }
            }
            else
            {
                _selectedItem.name = "FUNNY";
            }
        }
    }
}
