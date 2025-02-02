function scr_button(argument0, argument1, argument2)
{
    switch (global.g_cmn_menu_current_event)
    {
        case 0:
            return cmn_menu_add(scr_button, argument0, argument1, argument2);
        
        case 5:
            return string_height("Q");
        
        case 3:
            if (global.g_cmn_menu_current_active)
            {
                draw_set_color(c_white);
                
                if (!is_undefined(argument2))
                {
                    var cursorX;
                    
                    switch (draw_get_halign())
                    {
                        case 0:
                            cursorX = global.g_cmn_menu_x;
                            break;
                        
                        case 1:
                            cursorX = global.g_cmn_menu_x - (string_width(argument0) / 2);
                            break;
                        
                        case 2:
                            cursorX = global.g_cmn_menu_x - string_width(argument0);
                            break;
                    }
                    
                    var cursorY;
                    
                    switch (draw_get_valign())
                    {
                        case 0:
                            cursorY = global.g_cmn_menu_y + (string_height(argument0) / 2);
                            break;
                        
                        case 1:
                            cursorY = global.g_cmn_menu_y;
                            break;
                        
                        case 2:
                            cursorY = global.g_cmn_menu_y - (string_height(argument0) / 2);
                            break;
                    }
                    
                    cursorX += (sprite_get_xoffset(argument2) - (sprite_get_width(argument2) * 1.5));
                    cursorY += (sprite_get_yoffset(argument2) - (sprite_get_height(argument2) / 2));
                    draw_sprite(argument2, 0, cursorX, cursorY);
                }
            }
            else
            {
                draw_set_color(c_gray);
            }
            
            draw_text(global.g_cmn_menu_x, global.g_cmn_menu_y, argument0);
            global.g_cmn_menu_y += string_height("Q");
            break;
        
        case 4:
            var _confirm = 0;
            
            if (!is_undefined(argument1) && argument1)
                _confirm = menu_confirm;
            else
                _confirm = obj_menu_input.confirm;
            
            if (global.g_cmn_menu_current_active && _confirm)
                return cmn_menu_trigger(1);
            
            global.g_cmn_menu_y += string_height("Q");
            break;
    }
    
    return undefined;
}
