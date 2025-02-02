function scr_label(argument0, argument1)
{
    switch (global.g_cmn_menu_current_event)
    {
        case 5:
            return string_height("Q");
        
        case 3:
            argument1 = default_val(argument1, 0.3);
            draw_set_alpha(argument1);
            draw_text(global.g_cmn_menu_x, global.g_cmn_menu_y, argument0);
            draw_set_alpha(1);
            global.g_cmn_menu_y += string_height("Q");
            break;
        
        case 4:
            global.g_cmn_menu_y += string_height("Q");
            break;
        
        case 6:
            return 0;
        
        case 0:
            return cmn_menu_add(scr_label, argument0, argument1);
    }
    
    return undefined;
}
