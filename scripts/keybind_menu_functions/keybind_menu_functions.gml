function keybind_menu()
{
    var data_struct = myPlayerData.key_data;
    var button_names = ["left_button", "right_button", "up_button", "down_button", "jump_button", "attack_button", "bumper_l_button", "bumper_r_button", "grab_button", "start_button", "select_button"];
    
    for (var i = 0; i < array_length(button_names); i++)
    {
        var key_label = input_constant_to_string(variable_struct_get(data_struct, button_names[i]));
        
        if (!is_undefined(key_label))
        {
            var full_label = variable_struct_get(data_struct, button_names[i] + "_label") + ": " + key_label;
            
            if (remap_button(full_label))
            {
                currentlyBinding = 1;
                keyboard_lastkey = -1;
                bindingVar = button_names[i];
            }
        }
    }
}

function remap_button(argument0)
{
    switch (global.g_cmn_menu_current_event)
    {
        case 0:
            return cmn_menu_add(remap_button, argument0);
        
        case 1:
            return undefined;
        
        default:
            return scr_button(argument0, 1);
    }
    
    return undefined;
}
