function option_selector_data() constructor
{
    buttonName = argument[0];
    options = [];
    
    for (var i = 1; i < argument_count; i++)
        options[i - 1] = argument[i];
    
    currentIndex = 0;
    
    static getFullLabel = function()
    {
        var _fullLabel = buttonName + ": ";
        
        if (currentIndex > 0)
            _fullLabel += "< ";
        
        _fullLabel += options[currentIndex];
        
        if (currentIndex < (array_length(options) - 1))
            _fullLabel += " >";
        
        return _fullLabel;
    };
    
    static increment = function(argument0)
    {
        currentIndex = clamp(currentIndex + argument0, 0, array_length(options) - 1);
    };
    
    static getCurrentOption = function()
    {
        return options[currentIndex];
    };
}

function option_selector(argument0)
{
    switch (global.g_cmn_menu_current_event)
    {
        case 1:
            return undefined;
        
        case 4:
            if (global.g_cmn_menu_current_active)
            {
                if (obj_menu_input.horizontalDirection != 0)
                    return cmn_menu_trigger(obj_menu_input.horizontalDirection);
            }
            
            global.g_cmn_menu_y += string_height("Q");
            break;
        
        case 0:
            return cmn_menu_add(option_selector, argument0);
        
        default:
            return scr_button(argument0);
    }
    
    return undefined;
}

function menu_back()
{
    switch (global.g_cmn_menu_current_event)
    {
        case 6:
            return 0;
        
        case 0:
            return cmn_menu_add(menu_back);
        
        case 4:
            if (obj_menu_input.cancel)
                return cmn_menu_trigger();
            
            break;
    }
    
    return undefined;
}

function menu_draw(draw)
{
    switch (global.g_cmn_menu_current_event)
    {
        case 6:
            return 0;
        
        case 0:
            return cmn_menu_add(menu_draw, draw);
        
        case 3:
            draw();
            break;
    }
    
    return undefined;
}

function menu_sprite_button(argument0, argument1, argument2)
{
    switch (global.g_cmn_menu_current_event)
    {
        case 1:
            return undefined;
        
        case 0:
            return cmn_menu_add(menu_sprite_button, argument0, argument1, argument2);
        
        case 5:
            return sprite_get_height(argument0) * 2;
        
        case 3:
            draw_sprite(argument0, global.g_cmn_menu_current_active, global.g_cmn_menu_x, global.g_cmn_menu_y);
            global.g_cmn_menu_y += (sprite_get_height(argument0) + default_val(argument2, 0));
            
            if (!is_undefined(argument1))
                global.g_cmn_menu_x += argument1;
            
            break;
        
        default:
            return scr_button("");
    }
    
    return undefined;
}

function menu_position_update(argument0, argument1)
{
    switch (global.g_cmn_menu_current_event)
    {
        case 1:
            return undefined;
        
        case 0:
            return cmn_menu_add(menu_position_update, argument0, argument1);
        
        case 3:
            global.g_cmn_menu_x = default_val(argument0, global.g_cmn_menu_x);
            global.g_cmn_menu_y = default_val(argument1, global.g_cmn_menu_y);
            break;
        
        default:
            return scr_label("");
    }
    
    return undefined;
}
