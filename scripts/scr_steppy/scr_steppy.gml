function scr_steppy(argument0)
{
    var label = argument0;
    
    switch (global.g_cmn_menu_current_event)
    {
        case 5:
            return string_height("Q");
        
        case 3:
            draw_set_alpha(global.g_cmn_menu_current_active ? 1 : 0.7);
            var label_with_arrows = "< " + label + " >";
            var label_width = string_width(label_with_arrows);
            var label_height = string_height("Q");
            
            if (point_in_rectangle(mouse_x, mouse_y, global.g_cmn_menu_x - (label_width / 2), global.g_cmn_menu_y, global.g_cmn_menu_x + (label_width / 2), global.g_cmn_menu_y + label_height))
                draw_set_alpha(1);
            
            draw_text(global.g_cmn_menu_x, global.g_cmn_menu_y, label_with_arrows);
            draw_set_alpha(1);
            global.g_cmn_menu_y += label_height;
            break;
        
        case 4:
            if (global.g_cmn_menu_current_active)
            {
                var d = obj_menu_input.horizontalDirection;
                
                if (d != 0)
                    return cmn_menu_trigger(d);
            }
            
            var label_width = string_width("< " + label + " >");
            var label_height = string_height(label);
            
            if (false && mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, global.g_cmn_menu_x - (label_width / 2), global.g_cmn_menu_y, global.g_cmn_menu_x + (label_width / 2), global.g_cmn_menu_y + label_height))
            {
                if (mouse_x < global.g_cmn_menu_x)
                    return cmn_menu_trigger(-1);
                else
                    return cmn_menu_trigger(1);
            }
            
            global.g_cmn_menu_y += label_height;
            break;
        
        case 0:
            return cmn_menu_add(scr_steppy, label);
    }
    
    return undefined;
}
