cmn_menu_update(myMenu);

if (currentlyBinding)
{
    var _newVal = undefined;
    var _slot = myPlayerData.controller_slot;
    
    if (_slot == -1)
    {
        if (!is_undefined(input_constant_to_string(keyboard_lastkey)))
            _newVal = keyboard_lastkey;
    }
    else
    {
        for (var i = 32769; i <= 32784; i++)
        {
            if (gamepad_button_check_pressed(_slot, i))
            {
                _newVal = i;
                break;
            }
        }
    }
    
    if (!is_undefined(_newVal))
    {
        variable_struct_set(myPlayerData.key_data, bindingVar, _newVal);
        
        if (alarm[0] == -1)
            alarm[0] = 2;
    }
}
else
{
    player_input(myPlayerData);
    cmn_menu_input(myMenu);
    
    if (!currentlyBinding)
        cmn_menu_shift_select(myMenu, menu_down - menu_up, 0);
}
