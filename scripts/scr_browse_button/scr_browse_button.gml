function scr_browse_button(argument0, argument1, argument2, argument3, argument4)
{
    switch (global.g_cmn_menu_current_event)
    {
        case 0:
            return cmn_menu_add(scr_browse_button, argument0, argument1, argument2, argument3, argument4);
        
        case 5:
            return string_height("Q");
        
        case 3:
            if (global.g_cmn_menu_current_active)
            {
                draw_set_color(c_white);
                
                if (!is_undefined(argument4))
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
                    
                    cursorX += (sprite_get_xoffset(argument4) - (sprite_get_width(argument4) * 1.5));
                    cursorY += (sprite_get_yoffset(argument4) - (sprite_get_height(argument4) / 2));
                    draw_sprite(argument4, 0, cursorX, cursorY);
                }
            }
            else
            {
                draw_set_color(c_gray);
            }
            
            var _halign = draw_get_halign();
            var _x = 17;
            draw_set_halign(fa_left);
            draw_text(_x, global.g_cmn_menu_y, argument0);
            draw_text(_x + 159, global.g_cmn_menu_y, argument1);
            draw_text(_x + 211, global.g_cmn_menu_y, argument2);
            draw_set_halign(_halign);
            global.g_cmn_menu_y += string_height("Q");
            break;
        
        case 4:
            var _confirm = 0;
            
            if (!is_undefined(argument3) && argument3)
            {
                if (os_type == os_switch)
                    _confirm = attack || start;
                else
                    _confirm = key_jump || start;
            }
            else
            {
                _confirm = obj_menu_input.confirm;
            }
            
            if (global.g_cmn_menu_current_active && _confirm)
                return cmn_menu_trigger(1);
            
            global.g_cmn_menu_y += string_height("Q");
            break;
    }
    
    return undefined;
}
