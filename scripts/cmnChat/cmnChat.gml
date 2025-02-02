global.cmn_chat_haxe_type_markerValue = [];
global.mt_cmn_chat_haxe_class = new cmn_chat_haxe_class(-1, "cmn_chat_haxe_class");
global.mt_cmn_chat_haxe_Exception = new cmn_chat_haxe_class(-1, "cmn_chat_haxe_Exception");
global.mt_cmn_chat_haxe_ValueException = new cmn_chat_haxe_class(-1, "cmn_chat_haxe_ValueException");
global.mt_cmn_chat_haxe_ValueException.superClass = global.mt_cmn_chat_haxe_Exception;
global.mt_haxe_iterators_array_iterator = new cmn_chat_haxe_class(-1, "haxe_iterators_array_iterator");

function cmn_chat_Std_stringify(argument0)
{
    if (argument0 == undefined)
        return "null";
    
    if (is_string(argument0))
        return argument0;
    
    if (is_struct(argument0))
    {
        var l_e = variable_struct_get(argument0, "__enum__");
        
        if (l_e == undefined)
            return string(argument0);
        
        var l_ects = l_e.constructors;
        var l_s;
        
        if (l_ects != undefined)
        {
            l_i = argument0.__enumIndex__;
            
            if (l_i >= 0 && l_i < array_length(l_ects))
                l_s = l_ects[l_i];
            else
                l_s = "?";
        }
        else
        {
            l_s = instanceof(argument0);
            
            if (string_copy(l_s, 1, 3) == "mc_")
                l_s = string_delete(l_s, 1, 3);
            
            l_n = string_length(l_e.name);
            
            if (string_copy(l_s, 1, l_n) == l_e.name)
                l_s = string_delete(l_s, 1, l_n + 1);
        }
        
        l_s += "(";
        var l_fields = argument0.__enumParams__;
        var l_n = array_length(l_fields);
        var l_i = -1;
        
        while (++l_i < l_n)
        {
            if (l_i > 0)
                l_s += ", ";
            
            l_s += cmn_chat_Std_stringify(variable_struct_get(argument0, l_fields[l_i]));
        }
        
        return l_s + ")";
    }
    
    if (is_real(argument0))
    {
        var l_s = string_format(argument0, 0, 16);
        var l_n = string_byte_length(l_s);
        var l_i = l_n;
        
        while (l_i > 0)
        {
            switch (string_byte_at(l_s, l_i))
            {
                case 48:
                    l_i--;
                    continue;
                
                case 46:
                    l_i--;
                    break;
            }
            
            break;
        }
        
        return string_copy(l_s, 1, l_i);
    }
    
    return string(argument0);
}

function cmn_chat_string_split(argument0, argument1)
{
    var l_str = argument0;
    var l_num = 0;
    var l_arr = array_create(string_count(argument1, l_str) + 1);
    var l_pos = string_pos(argument1, l_str);
    
    while (l_pos > 0)
    {
        array_set(l_arr, l_num, string_copy(l_str, 1, l_pos - 1));
        l_num++;
        l_str = string_delete(l_str, 1, l_pos);
        l_pos = string_pos(argument1, l_str);
    }
    
    array_set(l_arr, l_num, l_str);
    return l_arr;
}

function cmn_chat_string_substr(argument0, argument1, argument2)
{
    if (argument1 < 0)
        argument1 += string_length(argument0);
    
    if (argument2 == undefined)
        return string_delete(argument0, 1, argument1);
    else
        return string_copy(argument0, 1 + argument1, argument2);
}

function cmn_chat_string_substring(argument0, argument1, argument2)
{
    if (argument2 == undefined)
    {
        if (argument1 > 0)
            return string_delete(argument0, 1, argument1);
        else
            return argument0;
    }
    
    if (argument1 < 0)
        argument1 = 0;
    
    if (argument2 < 0)
        argument2 = 0;
    
    if (argument1 > argument2)
    {
        var l_tmp = argument1;
        argument1 = argument2;
        argument2 = l_tmp;
    }
    
    var l_len = string_length(argument0);
    
    if (argument1 >= l_len)
    {
        return "";
    }
    else if (argument2 >= l_len)
    {
        if (argument1 > 0)
            return string_delete(argument0, 1, argument1);
        else
            return argument0;
    }
    else
    {
        return string_copy(argument0, argument1 + 1, argument2 - argument1);
    }
}

function cmn_chat_StringTools_startsWith(argument0, argument1)
{
    var l_n = string_length(argument1);
    return string_length(argument0) >= l_n && string_copy(argument0, 1, l_n) == argument1;
}

function cmn_chat_update(argument0)
{
    if (!global.cmn_chat_is_open)
    {
        if (argument0)
        {
            global.cmn_chat_is_open = 1;
            cmn_chat_input_set("");
        }
        else
        {
            return "";
        }
    }
    
    cmn_chat_key_update();
    cmn_chat_input_update();
    cmn_chat_input_pan_update();
    cmn_chat_command_history_update();
    cmn_chat_comp_update();
    
    if (keyboard_check_released(vk_escape))
    {
        global.cmn_chat_is_open = 0;
        keyboard_string = "";
    }
    else if (keyboard_check_released(vk_enter))
    {
        var l_ks = keyboard_string;
        
        if (l_ks != "" && cmn_chat_StringTools_startsWith(l_ks, global.cmn_chat_command_prefix))
            cmn_chat_command_history_add(l_ks);
        
        global.cmn_chat_is_open = 0;
        return l_ks;
    }
    
    return "";
}

function cmn_chat_add(argument0, argument1)
{
    var l_item = 
    {
        text: argument0,
        time: current_time + global.cmn_chat_log_fade_delay,
        width: undefined,
        height: undefined,
        data: argument1
    };
    var l_items = global.cmn_chat_log_items;
    var l_m = global.cmn_chat_log_max_size;
    ds_list_insert(l_items, 0, l_item);
    
    if (ds_list_size(l_items) > l_m)
    {
        l_item = ds_list_find_value(l_items, l_m);
        
        if (l_item.height != undefined)
            global.cmn_chat_log_scroll_height -= l_item.height;
        
        ds_list_delete(l_items, l_m);
    }
}

function cmn_chat_clear()
{
    cmn_chat_log_clear();
}

function cmn_chat_draw(argument0)
{
    if (global.cmn_chat_sprite == -1)
        throw cmn_chat_haxe_Exception_thrown("Don't forget to set cmn_chat_sprite to a white rectangle sprite!");
    
    var l_isGUI = 0;
    
    if (event_type == ev_draw)
    {
        if (event_number == 64 || event_number == 74 || event_number == 75)
            l_isGUI = 1;
    }
    
    var l_vw, l_vx, l_vh, l_vy;
    
    if (l_isGUI)
    {
        l_vx = 0;
        l_vy = 0;
        l_vw = display_get_gui_width();
        l_vh = display_get_gui_height();
    }
    else if (view_enabled)
    {
        var l_c = view_camera[0];
        l_vx = camera_get_view_x(l_c);
        l_vy = camera_get_view_y(l_c);
        l_vw = camera_get_view_width(l_c);
        l_vh = camera_get_view_height(l_c);
    }
    else
    {
        l_vx = 0;
        l_vy = 0;
        l_vw = room_width;
        l_vh = room_height;
    }
    
    var l_oldCol = draw_get_color();
    var l_oldAlpha = draw_get_alpha();
    var l_oldHA = draw_get_halign();
    var l_oldVA = draw_get_valign();
    var l_oldFont = draw_get_font();
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
    if (global.cmn_chat_font != -1)
        draw_set_font(global.cmn_chat_font);
    
    var l_x1 = global.cmn_chat_area_x1;
    var l_x2 = global.cmn_chat_area_x2;
    
    if (l_x1 < 0)
        l_x1 += l_vw;
    
    if (l_x2 < 0)
        l_x2 += l_vw;
    
    l_x2 -= l_x1;
    l_x1 += l_vx;
    var l_y1 = global.cmn_chat_area_y1;
    var l_y2 = global.cmn_chat_area_y2;
    
    if (l_y1 < 0)
        l_y1 += l_vh;
    
    if (l_y2 < 0)
        l_y2 += l_vh;
    
    l_y2 -= l_y1;
    l_y1 += l_vy;
    var l_fade = !global.cmn_chat_is_open;
    var l_s;
    
    if (l_fade)
    {
        l_s = argument0;
    }
    else
    {
        l_s = keyboard_string;
        l_s = global.cmn_chat_input_prompt + l_s;
    }
    
    var l_y = l_y1 + l_y2;
    var l_w = string_width(l_s) + global.cmn_chat_item_x1 + global.cmn_chat_item_x2;
    l_y = cmn_chat_input_draw(l_x1, l_x2, l_y, l_s);
    cmn_chat_log_draw(l_x1, l_y1, l_y, l_x2);
    
    if (!l_fade && global.cmn_chat_comp_is_active)
        cmn_chat_comp_draw(l_x1, l_y1, l_y);
    
    draw_set_color(l_oldCol);
    draw_set_alpha(l_oldAlpha);
    draw_set_halign(l_oldHA);
    draw_set_valign(l_oldVA);
    draw_set_font(l_oldFont);
}

function cmn_chat_command_history_add(argument0)
{
    var l_h = global.cmn_chat_command_history_list;
    var l_i = ds_list_find_index(l_h, argument0);
    
    if (l_i >= 0)
        ds_list_delete(l_h, l_i);
    
    ds_list_add(l_h, argument0);
    
    if (ds_list_size(l_h) > 64)
        ds_list_delete(l_h, 0);
}

function cmn_chat_command_history_update()
{
    var l_d = 0;
    
    if (cmn_chat_key_pressed(38))
        l_d--;
    
    if (cmn_chat_key_pressed(40))
        l_d++;
    
    if (l_d == 0)
        return 0;
    
    if (global.cmn_chat_comp_is_active)
    {
        cmn_chat_comp_offset_index(l_d);
        return 0;
    }
    
    var l_h = global.cmn_chat_command_history_list;
    var l_n = ds_list_size(l_h);
    
    if (l_n == 0)
        return 0;
    
    var l_i = ds_list_find_index(l_h, keyboard_string);
    
    if (l_i < 0)
    {
        if (l_d < 0)
            l_i = l_n - 1;
        else
            l_i = 0;
    }
    else
    {
        l_i += l_d;
    }
    
    var l_s = ds_list_find_value(l_h, l_i);
    
    if (l_s == undefined)
        l_s = "";
    
    cmn_chat_input_set(l_s);
}

function cmn_chat_comp_add_ext(argument0, argument1, argument2, argument3 = 1)
{
    if (argument3)
        argument1 = cmn_chat_gml_internal_ArrayImpl_copy(argument1);
    
    var l_argc = array_length(argument1);
    var l_i = 0;
    var l__g1 = l_argc;
    
    while (l_i < l__g1)
    {
        array_set(argument1, l_i, " " + argument1[l_i]);
        l_i++;
    }
    
    var l_argsJoined = (l_argc > 0) ? cmn_chat_gml_internal_ArrayImpl_join(argument1, "") : "";
    var l_comp = array_create(l_argc, undefined);
    
    if (argument2 != "")
        argument2 = global.cmn_chat_comp_help_sep + argument2;
    
    var l_item = 
    {
        chain: cmn_chat_string_split(argument0, " "),
        args: argument1,
        comp: l_comp,
        argsJoined: l_argsJoined,
        command: argument0,
        help: argument2
    };
    
    if (ds_map_exists(global.cmn_chat_comp_map, argument0))
        cmn_chat_comp_remove(argument0);
    
    ds_map_set(global.cmn_chat_comp_map, argument0, l_item);
    ds_list_add(global.cmn_chat_comp_items, l_item);
    return l_item;
}

function cmn_chat_comp_add(argument0)
{
    var l_argc = argument_count - 2;
    var l_args1, l_help;
    
    if (l_argc >= 0)
    {
        l_args1 = array_create(l_argc);
        l_help = argument[l_argc + 1];
        var l_i = 0;
        var l__g1 = l_argc;
        
        while (l_i < l__g1)
        {
            array_set(l_args1, l_i, argument[l_i + 1]);
            l_i++;
        }
    }
    else
    {
        l_args1 = [];
        l_help = "";
    }
    
    return cmn_chat_comp_add_ext(argument0, l_args1, l_help, 0);
}

function cmn_chat_comp_remove(argument0)
{
    if (is_string(argument0))
        argument0 = ds_map_find_value(global.cmn_chat_comp_map, argument0);
    
    if (!is_array(argument0))
        return 0;
    
    var l_item = argument0;
    
    if (ds_map_find_value(global.cmn_chat_comp_map, l_item.command) != l_item)
        return 0;
    
    var l_comp = l_item.comp;
    var l_k = array_length(l_comp);
    
    while (--l_k >= 0)
    {
        var l_data = l_comp[l_k];
        
        if (l_data != undefined)
        {
            ds_list_destroy(l_data.list);
            ds_map_destroy(l_data.map);
            array_set(l_comp, l_k, undefined);
        }
    }
    
    ds_map_delete(global.cmn_chat_comp_map, l_item.command);
    l_k = ds_list_find_index(global.cmn_chat_comp_items, l_item);
    
    if (l_k >= 0)
        ds_list_delete(global.cmn_chat_comp_items, l_k);
    
    var l__this = global.cmn_chat_comp_shown;
    ds_list_delete(l__this, ds_list_find_index(l__this, l_item));
    return 1;
}

function cmn_chat_comp_clear()
{
    var l_items = global.cmn_chat_comp_items;
    var l_i = ds_list_size(l_items);
    
    while (--l_i >= 0)
    {
        var l_comp = ds_list_find_value(l_items, l_i).comp;
        
        if (l_comp == undefined)
            continue;
        
        var l_k = array_length(l_comp);
        
        while (--l_k >= 0)
        {
            var l_data = l_comp[l_k];
            
            if (l_data != undefined)
            {
                ds_list_destroy(l_data.list);
                ds_map_destroy(l_data.map);
                array_set(l_comp, l_k, undefined);
            }
        }
    }
    
    ds_list_clear(l_items);
    ds_list_clear(global.cmn_chat_comp_shown);
    global.cmn_chat_comp_is_active = 0;
}

function cmn_chat_comp_add_arg(argument0, argument1, argument2, argument3 = "")
{
    if (is_string(argument0))
        argument0 = ds_map_find_value(global.cmn_chat_comp_map, argument0);
    
    if (!is_array(argument0))
        return undefined;
    
    var l_comp = argument0.comp;
    
    if (argument1 < 0 || argument1 >= array_length(l_comp))
        return undefined;
    
    var l_data = l_comp[argument1];
    var l_map, l_list;
    
    if (l_data == undefined)
    {
        l_list = ds_list_create();
        l_map = ds_map_create();
        l_data = 
        {
            list: l_list,
            map: l_map
        };
        array_set(l_comp, argument1, l_data);
    }
    else
    {
        l_list = l_data.list;
        l_map = l_data.map;
    }
    
    var l_item = ds_map_find_value(l_map, argument2);
    
    if (l_item != undefined)
    {
        ds_map_delete(l_map, argument2);
        var l_oldi = ds_list_find_index(l_list, l_item);
        
        if (l_oldi >= 0)
            ds_list_delete(l_list, l_oldi);
    }
    
    if (argument3 != "")
        argument3 = global.cmn_chat_comp_help_sep + argument3;
    
    l_item = 
    {
        value: argument2,
        help: argument3
    };
    ds_map_set(l_map, argument2, l_item);
    ds_list_add(l_list, l_item);
    return l_item;
}

function cmn_chat_comp_remove_arg(argument0, argument1, argument2)
{
    if (is_string(argument0))
        argument0 = ds_map_find_value(global.cmn_chat_comp_map, argument0);
    
    if (!is_array(argument0))
        return 0;
    
    var l_comp = argument0.comp;
    
    if (argument1 < 0 || argument1 >= array_length(l_comp))
        return 0;
    
    var l_data = l_comp[argument1];
    
    if (l_data == undefined)
        return 0;
    
    var l_list = l_data.list;
    var l_map = l_data.map;
    
    if (is_string(argument2))
        argument2 = ds_map_find_value(l_map, argument2);
    
    if (!is_array(argument2))
        return 0;
    
    var l_item = argument2;
    
    if (ds_map_find_value(l_map, l_item.value) != l_item)
        return 0;
    
    ds_map_delete(l_map, l_item.value);
    ds_list_delete(l_list, ds_list_find_index(l_list, l_item));
    
    if (global.cmn_chat_comp_argh_items == l_list)
    {
        var l__this = global.cmn_chat_comp_argh_shown;
        ds_list_delete(l__this, ds_list_find_index(l__this, l_item));
    }
    
    return 1;
}

function cmn_chat_comp_clear_arg(argument0, argument1)
{
    if (is_string(argument0))
        argument0 = ds_map_find_value(global.cmn_chat_comp_map, argument0);
    
    if (!is_array(argument0))
        return 0;
    
    var l_comp = argument0.comp;
    
    if (argument1 < 0 || argument1 >= array_length(l_comp))
        return 0;
    
    var l_data = l_comp[argument1];
    
    if (l_data == undefined)
        return 0;
    
    ds_list_clear(l_data.list);
    ds_map_clear(l_data.map);
    return 1;
}

function cmn_chat_comp_hide()
{
    global.cmn_chat_comp_last = keyboard_string;
    global.cmn_chat_comp_is_active = 0;
}

function cmn_chat_comp_show()
{
}

function cmn_chat_comp_insert_comp()
{
    var l_ai = cmn_chat_comp_get_arg_index();
    var l_ks = keyboard_string;
    
    if (l_ai >= 0)
    {
        var l_item = ds_list_find_value(global.cmn_chat_comp_argh_shown, global.cmn_chat_comp_argh_select);
        
        if (l_item != undefined)
        {
            var l_d = cmn_chat_comp_get_arg_data(l_ai);
            var l_val = l_item.value;
            l_ks = string_delete(l_ks, 1 + l_d.pos, l_d.len);
            l_ks = string_insert(l_val, l_ks, 1 + l_d.pos);
            keyboard_string = l_ks;
            global.cmn_chat_input_input_last = l_ks;
            global.cmn_chat_input_input_pos = l_d.pos + string_length(l_val);
            global.cmn_chat_input_select_offset = 0;
        }
    }
    else
    {
        var l_item = ds_list_find_value(global.cmn_chat_comp_shown, global.cmn_chat_comp_index);
        
        if (l_item != undefined && (string_length(l_ks) - string_length(global.cmn_chat_command_prefix)) < string_length(l_item.command))
        {
            cmn_chat_input_set(l_item.command);
            global.cmn_chat_comp_is_active = 1;
        }
    }
}

function cmn_chat_comp_update_comp()
{
    if (ds_list_size(global.cmn_chat_comp_items) == 0)
        return 0;
    
    var l_shown = global.cmn_chat_comp_shown;
    var l_ks1 = keyboard_string;
    var l_ks0 = global.cmn_chat_comp_last;
    
    if (l_ks1 == global.cmn_chat_comp_last)
    {
        if (keyboard_check_pressed(vk_tab))
            cmn_chat_comp_insert_comp();
        
        return 0;
    }
    
    global.cmn_chat_comp_last = l_ks1;
    var l_same = 1;
    var l_narrow = 0;
    var l_cp = global.cmn_chat_input_input_pos;
    var l_ksl = string_length(l_ks1);
    var l_pf = global.cmn_chat_command_prefix;
    var l_pl = string_length(l_pf);
    
    if (l_cp == l_ksl && (l_pl == 0 || (l_ksl >= l_pl && cmn_chat_string_substring(l_ks1, 0, l_pl) == l_pf)))
    {
        l_narrow = global.cmn_chat_comp_is_active && cmn_chat_StringTools_startsWith(l_ks1, l_ks0);
        global.cmn_chat_comp_is_active = 1;
        l_same = 0;
    }
    else if (global.cmn_chat_comp_is_active)
    {
        global.cmn_chat_comp_is_active = 0;
        l_same = 0;
    }
    
    if (l_same)
        return 0;
    
    if (global.cmn_chat_comp_is_active)
    {
        var l_lastItem = ds_list_find_value(l_shown, global.cmn_chat_comp_index);
        var l_ksChain = cmn_chat_string_split(l_ks1, " ");
        var l_ksCount = array_length(l_ksChain);
        var l_crCount = 0;
        var l_bestFullMatch = undefined;
        var l_bestFullCount = 0;
        var l_longestCount = 0;
        
        if (l_narrow)
        {
            var l_i = ds_list_size(l_shown);
            
            while (--l_i >= 0)
            {
                var l_item = ds_list_find_value(l_shown, l_i);
                var l_ciChain = l_item.chain;
                var l_ciCount = array_length(l_ciChain);
                var l_ciTill = ((l_ksCount < l_ciCount) ? l_ksCount : l_ciCount) - 1;
                var l_ciIter;
                
                for (l_ciIter = 0; l_ciIter < l_ciTill; l_ciIter++)
                {
                    if (l_ksChain[l_ciIter] != l_ciChain[l_ciIter])
                        break;
                }
                
                var l_crStat;
                
                if (l_ciIter >= l_ciTill)
                {
                    var l_ciLast = l_ciChain[l_ciIter];
                    var l_ciLastLen = string_length(l_ciLast);
                    var l_ksLast = l_ksChain[l_ciIter];
                    var l_ksLastLen = string_length(l_ksLast);
                    
                    if (l_ciTill == (l_ciCount - 1) && l_ksCount > l_ciCount && l_ksLastLen == l_ciLastLen && l_ksLast == l_ciLast)
                    {
                        l_crStat = 2;
                        l_crCount = l_ciCount;
                    }
                    else
                    {
                        var l_mtz;
                        
                        if (l_ksCount > l_ciCount)
                            l_mtz = l_ksLastLen == l_ciLastLen && l_ksLast == l_ciLast;
                        else
                            l_mtz = l_ciLastLen >= l_ksLastLen && cmn_chat_string_substring(l_ciLast, 0, l_ksLastLen) == l_ksLast;
                        
                        if (l_mtz)
                        {
                            l_crStat = 1;
                            l_crCount = l_ciIter + 1;
                        }
                        else
                        {
                            l_crStat = 0;
                        }
                    }
                }
                else
                {
                    l_crStat = 0;
                }
                
                switch (l_crStat)
                {
                    case 2:
                        if (l_crCount > l_bestFullCount)
                        {
                            l_bestFullCount = l_crCount;
                            l_bestFullMatch = l_item;
                        }
                        
                        break;
                    
                    case 1:
                        if (l_crCount > l_longestCount)
                            l_longestCount = l_crCount;
                        
                        break;
                    
                    default:
                        ds_list_delete(l_shown, l_i);
                }
            }
        }
        else
        {
            ds_list_clear(l_shown);
            var l_items = global.cmn_chat_comp_items;
            var l_count = ds_list_size(l_items);
            
            for (var l_i = 0; l_i < l_count; l_i++)
            {
                var l_item = ds_list_find_value(l_items, l_i);
                var l_ciChain = l_item.chain;
                var l_ciCount = array_length(l_ciChain);
                var l_ciTill = ((l_ksCount < l_ciCount) ? l_ksCount : l_ciCount) - 1;
                var l_ciIter;
                
                for (l_ciIter = 0; l_ciIter < l_ciTill; l_ciIter++)
                {
                    if (l_ksChain[l_ciIter] != l_ciChain[l_ciIter])
                        break;
                }
                
                var l_crStat;
                
                if (l_ciIter >= l_ciTill)
                {
                    var l_ciLast = l_ciChain[l_ciIter];
                    var l_ciLastLen = string_length(l_ciLast);
                    var l_ksLast = l_ksChain[l_ciIter];
                    var l_ksLastLen = string_length(l_ksLast);
                    
                    if (l_ciTill == (l_ciCount - 1) && l_ksCount > l_ciCount && l_ksLastLen == l_ciLastLen && l_ksLast == l_ciLast)
                    {
                        l_crStat = 2;
                        l_crCount = l_ciCount;
                    }
                    else
                    {
                        var l_mtz;
                        
                        if (l_ksCount > l_ciCount)
                            l_mtz = l_ksLastLen == l_ciLastLen && l_ksLast == l_ciLast;
                        else
                            l_mtz = l_ciLastLen >= l_ksLastLen && cmn_chat_string_substring(l_ciLast, 0, l_ksLastLen) == l_ksLast;
                        
                        if (l_mtz)
                        {
                            l_crStat = 1;
                            l_crCount = l_ciIter + 1;
                        }
                        else
                        {
                            l_crStat = 0;
                        }
                    }
                }
                else
                {
                    l_crStat = 0;
                }
                
                if (l_crStat > 0)
                {
                    if (l_crStat > 1)
                    {
                        if (l_crCount > l_bestFullCount)
                        {
                            l_bestFullCount = l_crCount;
                            l_bestFullMatch = l_item;
                        }
                    }
                    else if (l_crCount > l_longestCount)
                    {
                        l_longestCount = l_crCount;
                    }
                    
                    ds_list_add(l_shown, l_item);
                }
            }
        }
        
        if (l_bestFullMatch != undefined && l_bestFullCount >= l_longestCount)
        {
            ds_list_clear(l_shown);
            ds_list_add(l_shown, l_bestFullMatch);
        }
        
        global.cmn_chat_comp_index = ds_list_find_index(l_shown, l_lastItem);
        
        if (global.cmn_chat_comp_index < 0)
            global.cmn_chat_comp_index = 0;
    }
    else
    {
        global.cmn_chat_comp_index = -1;
        ds_list_clear(l_shown);
    }
}

function cmn_chat_comp_update_args()
{
    var l_ks = keyboard_string;
    
    if (l_ks != global.cmn_chat_comp_argh_last_ks)
        global.cmn_chat_comp_argh_last_ks = l_ks;
    else if (global.cmn_chat_input_input_pos != global.cmn_chat_comp_argh_last_pos)
        global.cmn_chat_comp_argh_last_pos = global.cmn_chat_input_input_pos;
    else
        return 0;
    
    var l_status = 0;
    var l_text = "";
    
    while (true)
    {
        if (!global.cmn_chat_comp_is_active)
        {
            l_status = -1;
            break;
        }
        
        var l_ai = cmn_chat_comp_get_arg_index();
        
        if (l_ai < 0)
        {
            l_status = -1;
            break;
        }
        
        var l_nd = ds_list_find_value(global.cmn_chat_comp_shown, global.cmn_chat_comp_index).comp[l_ai];
        
        if (l_nd == undefined)
        {
            l_status = -1;
            break;
        }
        
        var l_next = l_nd.list;
        
        if (l_next != global.cmn_chat_comp_argh_items)
        {
            global.cmn_chat_comp_argh_items = l_next;
            l_status = 1;
        }
        
        l_text = cmn_chat_comp_get_arg_data(l_ai).text;
        
        if (l_status == 0)
        {
            if (l_text != global.cmn_chat_comp_argh_last)
            {
                l_status = cmn_chat_StringTools_startsWith(l_text, global.cmn_chat_comp_argh_last) ? 2 : 1;
                global.cmn_chat_comp_argh_last = l_text;
            }
        }
        else
        {
            global.cmn_chat_comp_argh_last = l_text;
        }
        
        break;
    }
    
    switch (l_status)
    {
        case -1:
            if (global.cmn_chat_comp_argh_items == -1)
                return 0;
            
            global.cmn_chat_comp_argh_items = -1;
            ds_list_clear(global.cmn_chat_comp_argh_shown);
            global.cmn_chat_comp_argh_last = "";
            break;
        
        case 1:
        case 2:
            if (global.cmn_chat_comp_argh_items == -1)
                return 0;
            
            var l_shown = global.cmn_chat_comp_argh_shown;
            var l_lastItem = ds_list_find_value(l_shown, global.cmn_chat_comp_argh_select);
            var l_tl = string_length(l_text);
            
            if (l_status == 2)
            {
                var l_i = ds_list_size(l_shown);
                
                while (--l_i >= 0)
                {
                    var l_arg = ds_list_find_value(l_shown, l_i);
                    var l_s = l_arg.value;
                    
                    if (l_tl > string_length(l_s) || cmn_chat_string_substring(l_s, 0, l_tl) != l_text)
                        ds_list_delete(l_shown, l_i);
                }
            }
            else
            {
                ds_list_clear(l_shown);
                var l_items = global.cmn_chat_comp_argh_items;
                var l_count = ds_list_size(l_items);
                
                for (var l_i = 0; l_i < l_count; l_i++)
                {
                    var l_arg = ds_list_find_value(l_items, l_i);
                    var l_s = l_arg.value;
                    
                    if (l_tl <= string_length(l_s) && cmn_chat_string_substring(l_s, 0, l_tl) == l_text)
                        ds_list_add(l_shown, l_arg);
                }
            }
            
            global.cmn_chat_comp_argh_select = ds_list_find_index(l_shown, l_lastItem);
            
            if (global.cmn_chat_comp_argh_select < 0)
                global.cmn_chat_comp_argh_select = 0;
            
            break;
    }
}

function cmn_chat_comp_update()
{
    cmn_chat_comp_update_comp();
    cmn_chat_comp_update_args();
}

function cmn_chat_comp_offset_index(argument0)
{
    var l_ai = cmn_chat_comp_get_arg_index();
    var l_n, l_i;
    
    if (l_ai >= 0)
    {
        l_n = ds_list_size(global.cmn_chat_comp_argh_shown);
        l_i = global.cmn_chat_comp_argh_select;
    }
    else
    {
        l_n = ds_list_size(global.cmn_chat_comp_shown);
        l_i = global.cmn_chat_comp_index;
    }
    
    if (l_n == 0)
        return 0;
    
    if (l_i >= 0)
    {
        l_i = (l_i + argument0) % l_n;
        
        if (l_i < 0)
            l_i += l_n;
    }
    else
    {
        l_i = (argument0 > 0) ? 0 : (l_n - 1);
    }
    
    if (l_ai >= 0)
        global.cmn_chat_comp_argh_select = l_i;
    else
        global.cmn_chat_comp_index = l_i;
}

function cmn_chat_comp_get_arg_index()
{
    var l_curr = ds_list_find_value(global.cmn_chat_comp_shown, global.cmn_chat_comp_index);
    
    if (l_curr == undefined)
        return -1;
    
    var l_argc = array_length(l_curr.args);
    
    if (l_argc == 0)
        return -1;
    
    var l_cmd = l_curr.command;
    var l_cmdl = string_length(l_cmd);
    var l_p = global.cmn_chat_input_input_pos;
    
    if (l_p <= l_cmdl)
        return -1;
    
    var l_ks = keyboard_string;
    
    if (string_length(l_ks) <= l_cmdl || cmn_chat_string_substring(l_ks, 0, l_cmdl) != l_cmd)
        return -1;
    
    var l_ai = string_count(" ", cmn_chat_string_substring(l_ks, l_cmdl, l_p)) - 1;
    
    if (l_ai > (l_argc - 1))
        return l_argc - 1;
    else
        return l_ai;
}

function cmn_chat_comp_get_arg_data(argument0)
{
    var l_r = global.cmn_chat_comp_get_arg_data_1;
    var l_curr = ds_list_find_value(global.cmn_chat_comp_shown, global.cmn_chat_comp_index);
    var l_pos = string_length(l_curr.command);
    var l_ks = cmn_chat_string_substring(keyboard_string, l_pos);
    
    repeat (argument0 + 1)
    {
        var l_p = string_pos(" ", l_ks);
        l_pos += l_p;
        l_ks = string_delete(l_ks, 1, l_p);
    }
    
    if (argument0 != (array_length(l_curr.args) - 1))
    {
        var l_p = string_pos(" ", l_ks);
        
        if (l_p != 0)
            l_ks = string_copy(l_ks, 1, l_p - 1);
    }
    
    l_r.pos = l_pos;
    l_r.len = string_length(l_ks);
    l_r.text = l_ks;
    return l_r;
}

function cmn_chat_comp_draw(argument0, argument1, argument2)
{
    var l_ix1 = global.cmn_chat_item_x1;
    var l_ix2 = global.cmn_chat_item_x2;
    var l_ih = string_height("Q") + global.cmn_chat_item_y1 + global.cmn_chat_item_y2;
    var l_yTot = argument2 - argument1;
    var l_shown = global.cmn_chat_comp_shown;
    var l_num = ds_list_size(l_shown);
    
    if (l_num == 0)
        return 0;
    
    var l_max1 = floor(l_yTot / l_ih);
    var l_max0 = (l_max1 / 2) | 0;
    var l_index = global.cmn_chat_comp_index;
    var l_i, l_i0;
    
    if (l_num <= l_max1)
    {
        l_i0 = 0;
        l_i = l_num;
    }
    else
    {
        var l_i1 = clamp(l_index, l_max0, l_num - (l_max1 - l_max0));
        l_i0 = l_i1 - l_max0;
        l_i = l_i0 + l_max1;
    }
    
    var l_ibc = global.cmn_chat_item_back_color;
    var l_iba = global.cmn_chat_item_back_alpha;
    var l_itc = global.cmn_chat_item_text_color;
    var l_ita = global.cmn_chat_item_text_alpha;
    var l_bc0 = global.cmn_chat_comp_back_color_inactive;
    
    if (l_bc0 == undefined)
        l_bc0 = l_ibc;
    
    var l_ba0 = global.cmn_chat_comp_back_alpha_inactive;
    
    if (l_ba0 == undefined)
        l_ba0 = l_iba;
    
    var l_bc1 = global.cmn_chat_comp_back_color_active;
    
    if (l_bc1 == undefined)
        l_bc1 = l_ibc;
    
    var l_ba1 = global.cmn_chat_comp_back_alpha_active;
    
    if (l_ba1 == undefined)
        l_ba1 = l_iba;
    
    var l_tc0 = global.cmn_chat_comp_cmd_color_inactive;
    
    if (l_tc0 == undefined)
        l_tc0 = l_itc;
    
    var l_ta0 = global.cmn_chat_comp_cmd_alpha_inactive;
    
    if (l_ta0 == undefined)
        l_ta0 = l_ita;
    
    var l_tc1 = global.cmn_chat_comp_cmd_color_active;
    
    if (l_tc1 == undefined)
        l_tc1 = l_itc;
    
    var l_ta1 = global.cmn_chat_comp_cmd_alpha_active;
    
    if (l_ta1 == undefined)
        l_ta1 = l_ita;
    
    var l_tc2 = global.cmn_chat_comp_cmd_color_args;
    
    if (l_tc2 == undefined)
        l_tc2 = l_itc;
    
    var l_ta2 = global.cmn_chat_comp_cmd_alpha_args;
    
    if (l_ta2 == undefined)
        l_ta2 = l_ita;
    
    var l_ac0 = global.cmn_chat_comp_arg_color_inactive;
    
    if (l_ac0 == undefined)
        l_ac0 = l_itc;
    
    var l_aa0 = global.cmn_chat_comp_arg_alpha_inactive;
    
    if (l_aa0 == undefined)
        l_aa0 = l_ita;
    
    var l_ac1 = global.cmn_chat_comp_arg_color_active;
    
    if (l_ac1 == undefined)
        l_ac1 = l_itc;
    
    var l_aa1 = global.cmn_chat_comp_arg_alpha_active;
    
    if (l_aa1 == undefined)
        l_aa1 = l_ita;
    
    var l_ac2 = global.cmn_chat_comp_arg_color_noncurrent;
    
    if (l_ac2 == undefined)
        l_ac2 = l_itc;
    
    var l_aa2 = global.cmn_chat_comp_arg_alpha_noncurrent;
    
    if (l_aa2 == undefined)
        l_aa2 = l_ita;
    
    var l_ac3 = global.cmn_chat_comp_arg_color_current;
    
    if (l_ac3 == undefined)
        l_ac3 = l_itc;
    
    var l_aa3 = global.cmn_chat_comp_arg_alpha_current;
    
    if (l_aa3 == undefined)
        l_aa3 = l_ita;
    
    var l_hc0 = global.cmn_chat_comp_help_color_inactive;
    
    if (l_hc0 == undefined)
        l_hc0 = l_itc;
    
    var l_ha0 = global.cmn_chat_comp_help_alpha_inactive;
    
    if (l_ha0 == undefined)
        l_ha0 = l_ita;
    
    var l_hc1 = global.cmn_chat_comp_help_color_active;
    
    if (l_hc1 == undefined)
        l_hc1 = l_itc;
    
    var l_ha1 = global.cmn_chat_comp_help_alpha_active;
    
    if (l_ha1 == undefined)
        l_ha1 = l_ita;
    
    var l_hc2 = global.cmn_chat_comp_help_color_args;
    
    if (l_hc2 == undefined)
        l_hc2 = l_itc;
    
    var l_ha2 = global.cmn_chat_comp_help_alpha_args;
    
    if (l_ha2 == undefined)
        l_ha2 = l_ita;
    
    var l_fnBack = global.cmn_chat_comp_script_back;
    var l_fnPost = global.cmn_chat_comp_script_post;
    var l_ai = cmn_chat_comp_get_arg_index();
    
    if (l_ai >= 0)
    {
        l_i0 = l_index;
        l_i = l_i0 + 1;
    }
    
    var l_y = argument2;
    var l_argX = argument0;
    
    while (--l_i >= l_i0)
    {
        var l_item = ds_list_find_value(l_shown, l_i);
        var l_z = l_index == l_i;
        var l_cmd = l_item.command;
        var l_help = l_item.help;
        var l_cmdWidth = string_width(l_cmd);
        var l_args1 = l_item.args;
        var l_argc = array_length(l_args1);
        l_y -= l_ih;
        var l_state = (l_ai >= 0) ? 2 : (l_z ? 1 : 0);
        var l_cx1 = argument0 + l_ix1;
        var l_iw = l_ix1 + l_ix2 + l_cmdWidth + string_width(l_item.argsJoined) + string_width(l_help);
        
        if (l_fnBack != undefined)
        {
            l_cx1 += l_fnBack(argument0, l_y, l_iw, l_ih, l_state, l_item);
        }
        else
        {
            var l_c, l_a;
            
            if (l_z)
            {
                l_c = l_bc1;
                l_a = l_ba1;
            }
            else
            {
                l_c = l_bc0;
                l_a = l_ba0;
            }
            
            draw_sprite_stretched_ext(global.cmn_chat_sprite, 0, argument0, l_y, l_iw, l_ih, l_c, l_a);
        }
        
        if (l_ai >= 0)
        {
            draw_set_color(l_tc2);
            draw_set_alpha(l_ta2);
        }
        else if (l_z)
        {
            draw_set_color(l_tc1);
            draw_set_alpha(l_ta1);
        }
        else
        {
            draw_set_color(l_tc0);
            draw_set_alpha(l_ta0);
        }
        
        draw_text(l_cx1, l_y, l_cmd);
        l_cx1 += l_cmdWidth;
        
        for (var l_k = 0; l_k < l_argc; l_k++)
        {
            if (l_ai == l_k)
            {
                draw_set_color(l_ac3);
                draw_set_alpha(l_aa3);
            }
            else if (l_ai >= 0)
            {
                draw_set_color(l_ac2);
                draw_set_alpha(l_aa2);
            }
            else if (l_z)
            {
                draw_set_color(l_ac1);
                draw_set_alpha(l_aa1);
            }
            else
            {
                draw_set_color(l_ac0);
                draw_set_alpha(l_aa0);
            }
            
            var l_as = l_args1[l_k];
            
            if (l_z && l_k == l_ai)
                l_argX = l_cx1 + string_width(" ");
            
            draw_text(l_cx1, l_y, l_as);
            l_cx1 += string_width(l_as);
        }
        
        if (l_ai >= 0)
        {
            draw_set_color(l_hc2);
            draw_set_alpha(l_ha2);
        }
        else if (l_z)
        {
            draw_set_color(l_hc1);
            draw_set_alpha(l_ha1);
        }
        else
        {
            draw_set_color(l_hc0);
            draw_set_alpha(l_ha0);
        }
        
        draw_text(l_cx1, l_y, l_help);
        draw_set_alpha(1);
        
        if (l_fnPost != undefined)
            l_fnPost(argument0, l_y, l_iw, l_ih, l_state, l_item);
    }
    
    if (l_ai >= 0 && global.cmn_chat_comp_argh_items != -1)
    {
        var l_ashown = global.cmn_chat_comp_argh_shown;
        l_index = global.cmn_chat_comp_argh_select;
        l_num = ds_list_size(l_ashown);
        l_max1--;
        l_max0 = (l_max1 / 2) | 0;
        
        if (l_num <= l_max1)
        {
            l_i0 = 0;
            l_i = l_num;
        }
        else
        {
            var l_i1 = clamp(l_index, l_max0, l_num - (l_max1 - l_max0));
            l_i0 = l_i1 - l_max0;
            l_i = l_i0 + l_max1;
        }
        
        argument0 = l_argX;
        
        while (--l_i >= l_i0)
        {
            var l_aitem = ds_list_find_value(l_ashown, l_i);
            var l_z = l_index == l_i;
            var l_cmd = l_aitem.value;
            var l_cmdWidth = string_width(l_cmd);
            var l_help = l_aitem.help;
            l_y -= l_ih;
            var l_state = l_z ? 4 : 3;
            var l_cx = argument0 + l_ix1;
            var l_iw = l_ix1 + l_cmdWidth + string_width(l_help) + l_ix2;
            
            if (l_fnBack != undefined)
            {
                l_cx += l_fnBack(argument0, l_y, l_iw, l_ih, l_state, l_aitem);
            }
            else
            {
                var l_c, l_a;
                
                if (l_z)
                {
                    l_c = l_bc1;
                    l_a = l_ba1;
                }
                else
                {
                    l_c = l_bc0;
                    l_a = l_ba0;
                }
                
                draw_sprite_stretched_ext(global.cmn_chat_sprite, 0, argument0, l_y, l_iw, l_ih, l_c, l_a);
            }
            
            draw_set_color(l_z ? l_tc1 : l_tc0);
            draw_set_alpha(l_z ? l_ta1 : l_ta0);
            draw_text(l_cx, l_y, l_cmd);
            l_cx += l_cmdWidth;
            draw_set_color(l_z ? l_hc1 : l_hc0);
            draw_set_alpha(l_z ? l_ha1 : l_ha0);
            draw_text(l_cx, l_y, l_help);
            
            if (l_fnPost != undefined)
                l_fnPost(argument0, l_y, l_iw, l_ih, l_state, l_aitem);
        }
    }
}

function cmn_chat_input_set(argument0)
{
    keyboard_string = argument0;
    global.cmn_chat_input_input_last = argument0;
    global.cmn_chat_input_input_pos = string_length(argument0);
    global.cmn_chat_input_select_offset = 0;
    global.cmn_chat_input_beam_time = current_time - 200;
    global.cmn_chat_comp_last = keyboard_string;
    global.cmn_chat_comp_is_active = 0;
}

function cmn_chat_input_update_input()
{
    var l_ks = keyboard_string;
    var l_i = cmn_chat_StringTools_startsWith(l_ks, global.cmn_chat_command_prefix) ? global.cmn_chat_max_length_cmd : global.cmn_chat_max_length;
    
    if (string_length(l_ks) > l_i)
        l_ks = cmn_chat_string_substring(l_ks, 0, l_i);
    
    var l_ls = global.cmn_chat_input_input_last;
    
    if (l_ks == "" && string_length(l_ls) >= 3)
    {
        keyboard_string = l_ls;
        return 0;
    }
    else if (l_ks == global.cmn_chat_input_input_last)
    {
        return 0;
    }
    
    var l_p = global.cmn_chat_input_input_pos;
    var l_so = global.cmn_chat_input_select_offset;
    var l_n = string_length(l_ks);
    var l_delWords = 0;
    
    while (l_n > 0 && string_ord_at(l_ks, l_n) == 127)
    {
        l_delWords++;
        l_n--;
    }
    
    if (l_delWords > 0)
    {
        l_ks = string_copy(l_ks, 1, l_n);
        l_p = min(l_p, l_n);
    }
    
    for (l_i = 1; l_i <= l_n && string_ord_at(l_ks, l_i) == string_ord_at(l_ls, l_i); l_i++)
    {
    }
    
    var l_l = string_length(l_ls);
    
    if (l_delWords > 0)
    {
        if (l_so != 0)
        {
            var l_s1 = global.cmn_chat_input_input_pos + min(global.cmn_chat_input_select_offset, 0);
            l_ks = string_delete(l_ls, l_s1 + 1, (global.cmn_chat_input_input_pos + max(global.cmn_chat_input_select_offset, 0)) - l_s1);
            l_p = l_s1;
            global.cmn_chat_input_select_offset = 0;
        }
        else
        {
            var l_s1 = l_p;
            var l_s2 = l_p;
            
            while (--l_delWords >= 0 && l_s1 > 0)
            {
                var l_nwx = global.cmn_chat_input_pan_non_word;
                var l_nw = ds_map_find_value(l_nwx, string_ord_at(l_ks, l_s1)) == 1;
                l_s1--;
                
                while (l_s1 > 0 && (ds_map_find_value(l_nwx, string_ord_at(l_ks, l_s1)) == 1) == l_nw)
                    l_s1--;
            }
            
            l_ks = string_delete(l_ls, l_s1 + 1, l_s2 - l_s1);
            l_p = l_s1;
        }
    }
    else if (l_i <= l_l)
    {
        var l_d = (l_l - l_i) + 1;
        
        if (l_so != 0)
        {
            var l_s1 = global.cmn_chat_input_input_pos + min(global.cmn_chat_input_select_offset, 0);
            l_ks = string_delete(l_ls, l_s1 + 1, (global.cmn_chat_input_input_pos + max(global.cmn_chat_input_select_offset, 0)) - l_s1);
            l_p = l_s1;
            global.cmn_chat_input_select_offset = 0;
        }
        else
        {
            l_ks = string_delete(l_ls, l_p, l_d);
            l_p -= l_d;
        }
    }
    else if (l_i <= l_n)
    {
        var l_d = (l_n - l_i) + 1;
        l_p += l_d;
        
        if (l_p <= l_n)
        {
            var l_text0 = string_copy(l_ks, 1, l_i - 1);
            var l_text1 = string_delete(l_ks, 1, l_i - 1);
            
            if (l_so != 0)
            {
                var l_s1 = global.cmn_chat_input_input_pos + min(global.cmn_chat_input_select_offset, 0);
                l_text0 = string_delete(l_text0, l_s1 + 1, (global.cmn_chat_input_input_pos + max(global.cmn_chat_input_select_offset, 0)) - l_s1);
                global.cmn_chat_input_select_offset = 0;
            }
            
            l_ks = string_insert(l_text1, l_text0, (l_p + 1) - l_d);
        }
    }
    
    global.cmn_chat_input_beam_time = current_time - 200;
    keyboard_string = l_ks;
    global.cmn_chat_input_input_last = l_ks;
    global.cmn_chat_input_input_pos = l_p;
}

function cmn_chat_input_update_delete()
{
    if (cmn_chat_key_pressed(46))
    {
        var l_ks = keyboard_string;
        
        if (global.cmn_chat_input_select_offset != 0)
        {
            var l_s1 = global.cmn_chat_input_input_pos + min(global.cmn_chat_input_select_offset, 0);
            l_ks = string_delete(l_ks, l_s1 + 1, (global.cmn_chat_input_input_pos + max(global.cmn_chat_input_select_offset, 0)) - l_s1);
            global.cmn_chat_input_input_pos = l_s1;
            global.cmn_chat_input_select_offset = 0;
        }
        else if (keyboard_check(vk_control))
        {
            var l_s1 = global.cmn_chat_input_input_pos;
            var l_s2 = l_s1;
            var l_nwx = global.cmn_chat_input_pan_non_word;
            var l_nw = ds_map_find_value(l_nwx, string_ord_at(l_ks, l_s1 + 1)) == 1;
            var l_ksl = string_length(l_ks);
            l_s1++;
            
            while (l_s1 < l_ksl && (ds_map_find_value(l_nwx, string_ord_at(l_ks, l_s1 + 1)) == 1) == l_nw)
                l_s1++;
            
            l_ks = string_delete(l_ks, l_s2 + 1, l_s1 - l_s2);
        }
        else
        {
            l_ks = string_delete(l_ks, 1 + global.cmn_chat_input_input_pos, 1);
        }
        
        keyboard_string = l_ks;
        global.cmn_chat_input_input_last = l_ks;
        global.cmn_chat_input_beam_time = current_time - 200;
    }
}

function cmn_chat_input_update()
{
    cmn_chat_input_update_input();
    cmn_chat_input_update_delete();
}

function cmn_chat_input_draw(argument0, argument1, argument2, argument3)
{
    if (argument3 == "")
        return (argument2 - string_height("Q")) + global.cmn_chat_item_y1 + global.cmn_chat_item_y2;
    
    var l_x1 = global.cmn_chat_item_x1;
    var l_x2 = global.cmn_chat_item_x2;
    var l_y1 = global.cmn_chat_item_y1;
    var l_y2 = global.cmn_chat_item_y2;
    var l_sw = string_width(argument3);
    var l_sh = string_height(argument3);
    var l_bw = l_sw + l_x1 + l_x2;
    var l_bh = l_sh + l_y1 + l_y2;
    var l_open = global.cmn_chat_is_open;
    var l_beamX, l_ipl;
    
    if (l_open)
    {
        l_ipl = global.cmn_chat_input_input_pos + string_length(global.cmn_chat_input_prompt);
        l_beamX = string_width(cmn_chat_string_substring(argument3, 0, l_ipl));
    }
    else
    {
        l_ipl = 0;
        l_beamX = l_sw;
    }
    
    if (l_sw > argument1)
        argument0 -= clamp(l_beamX - (argument1 / 2), 0, (l_sw - argument1) + l_x2);
    
    var l_c = l_open ? global.cmn_chat_input_back_color_active : global.cmn_chat_input_back_color_inactive;
    var l_a = l_open ? global.cmn_chat_input_back_alpha_active : global.cmn_chat_input_back_alpha_inactive;
    
    if (l_c == undefined)
        l_c = global.cmn_chat_item_back_color;
    
    if (l_a == undefined)
        l_a = global.cmn_chat_item_back_alpha;
    
    argument2 -= l_bh;
    var l_data = global.cmn_chat_input_custom_data;
    var l_scrBack = global.cmn_chat_item_script_back;
    
    if (l_scrBack != undefined)
    {
        var l_offset = l_scrBack(argument0, argument2, l_bw, l_bh, l_c, l_a, argument3, l_data);
        
        if (is_numeric(l_offset))
            argument0 += l_offset;
    }
    else
    {
        draw_sprite_stretched_ext(global.cmn_chat_sprite, 0, argument0, argument2, l_bw, l_bh, l_c, l_a);
    }
    
    l_c = l_open ? global.cmn_chat_input_text_color_active : global.cmn_chat_input_text_color_inactive;
    l_a = l_open ? global.cmn_chat_input_text_alpha_active : global.cmn_chat_input_text_alpha_inactive;
    
    if (l_c == undefined)
        l_c = global.cmn_chat_item_text_color;
    
    if (l_a == undefined)
        l_a = global.cmn_chat_item_text_alpha;
    
    draw_set_color(l_c);
    var l_so = global.cmn_chat_input_select_offset;
    l_bh = string_height("Q") - global.cmn_chat_beam_y2 - global.cmn_chat_beam_y1;
    
    if (l_open && l_so != 0)
    {
        var l_sx1 = string_width(cmn_chat_string_substring(argument3, 0, l_ipl + min(l_so, 0)));
        draw_sprite_stretched_ext(global.cmn_chat_sprite, 0, argument0 + l_x1 + l_sx1, argument2 + global.cmn_chat_beam_y1, string_width(cmn_chat_string_substring(argument3, 0, l_ipl + max(l_so, 0))) - l_sx1, l_bh, global.cmn_chat_select_color, 1);
    }
    
    var l_scrText = global.cmn_chat_item_script_text;
    
    if (l_scrText == undefined)
    {
        draw_set_alpha(l_a);
        draw_text(argument0 + l_x1, argument2 + l_y1, argument3);
        draw_set_alpha(1);
    }
    else
    {
        l_scrText(argument0, argument2, l_bw, l_bh, l_c, l_a, argument3, l_data);
    }
    
    if (l_open && ((current_time - global.cmn_chat_input_beam_time) % 700) < 350)
        draw_sprite_stretched(global.cmn_chat_sprite, 0, argument0 + l_x1 + string_width(cmn_chat_string_substring(argument3, 0, l_ipl)) + global.cmn_chat_beam_x1, argument2 + global.cmn_chat_beam_y1, global.cmn_chat_beam_x2 - global.cmn_chat_beam_x1, l_bh);
    
    var l_scrPost = global.cmn_chat_item_script_post;
    
    if (l_scrPost != undefined)
        l_scrPost(argument0, argument2, l_bw, l_bh, l_c, l_a, argument3, l_data);
    
    return argument2;
}

function cmn_chat_input_pan_non_word_init()
{
    var l_r = ds_map_create();
    var l_i = 0;
    
    while (l_i <= 47)
        ds_map_set(l_r, l_i++, 1);
    
    l_i = 58;
    
    while (l_i <= 64)
        ds_map_set(l_r, l_i++, 1);
    
    l_i = 91;
    
    while (l_i <= 96)
        ds_map_set(l_r, l_i++, 1);
    
    l_i = 123;
    
    while (l_i <= 191)
        ds_map_set(l_r, l_i++, 1);
    
    ds_map_delete(l_r, 95);
    return l_r;
}

function cmn_chat_input_pan_update()
{
    var l_p = global.cmn_chat_input_input_pos;
    var l_p0 = l_p;
    var l_ks = keyboard_string;
    var l_ksn = string_length(l_ks);
    var l_selecting = keyboard_check(vk_shift);
    var l_d = 0;
    
    if (cmn_chat_key_pressed(39))
        l_d++;
    
    if (cmn_chat_key_pressed(37))
        l_d--;
    
    if (l_d != 0)
    {
        var l_so = global.cmn_chat_input_select_offset;
        
        if (l_so != 0 && !l_selecting)
        {
            if ((l_d > 0) == (l_so > 0))
                l_p += l_so;
            else
                l_p += l_d;
            
            global.cmn_chat_input_select_offset = 0;
        }
        else if (keyboard_check(vk_control))
        {
            var l_o = (l_d > 0) ? 0 : -1;
            var l_nwx = global.cmn_chat_input_pan_non_word;
            var l_nw = ds_map_find_value(l_nwx, string_ord_at(l_ks, l_p + l_o + 1)) == 1;
            
            while (true)
            {
                l_p += l_d;
                
                if (l_p <= 0 || l_p >= l_ksn)
                    break;
                
                if (!((ds_map_find_value(l_nwx, string_ord_at(l_ks, l_p + l_o + 1)) == 1) == l_nw))
                    break;
            }
        }
        else
        {
            l_p += l_d;
        }
        
        global.cmn_chat_input_beam_time = current_time - 200;
        
        if (l_p <= 0)
        {
            global.cmn_chat_comp_last = keyboard_string;
            global.cmn_chat_comp_is_active = 0;
        }
    }
    
    l_d = 0;
    
    if (keyboard_check_pressed(vk_home))
        l_d--;
    
    if (keyboard_check_pressed(vk_end))
        l_d++;
    
    if (l_d != 0)
    {
        if (l_d < 0)
        {
            l_p = 0;
            global.cmn_chat_comp_last = keyboard_string;
            global.cmn_chat_comp_is_active = 0;
        }
        else
        {
            l_p = l_ksn;
        }
        
        if (!l_selecting)
            global.cmn_chat_input_select_offset = 0;
    }
    
    l_p = clamp(l_p, 0, l_ksn);
    
    if (l_p != l_p0)
    {
        if (l_selecting)
            global.cmn_chat_input_select_offset += (l_p0 - l_p);
        
        global.cmn_chat_input_input_pos = l_p;
    }
}

function cmn_chat_key_can_release_init()
{
    switch (os_type)
    {
        case os_windows:
        case os_macosx:
        case os_ios:
        case os_android:
        case os_linux:
        case os_psvita:
        case os_ps4:
        case os_xboxone:
        case os_ps3:
            return 1;
        
        default:
            return 0;
    }
}

function cmn_chat_key_shift_bug_init()
{
    var l_q = ds_map_create();
    
    if (os_type != os_windows)
        return l_q;
    
    ds_map_set(l_q, 37, 1);
    ds_map_set(l_q, 39, 1);
    ds_map_set(l_q, 38, 1);
    ds_map_set(l_q, 40, 1);
    return l_q;
}

function cmn_chat_key_pressed(argument0, argument1 = 1)
{
    if (global.cmn_chat_key_can_release && argument1)
    {
        if (keyboard_check(argument0))
        {
            if (ds_map_find_value(global.cmn_chat_key_shift_bug, argument0))
            {
                var l_shift = keyboard_check(vk_shift);
                keyboard_key_release(argument0);
                
                if (l_shift)
                    keyboard_key_press(vk_shift);
            }
            else
            {
                keyboard_key_release(argument0);
            }
            
            return 1;
        }
        else
        {
            return 0;
        }
    }
    else
    {
        var l_item = ds_map_find_value(global.cmn_chat_key_repeat_map, argument0);
        
        if (l_item == undefined)
        {
            if (keyboard_check_pressed(argument0))
            {
                l_item = 
                {
                    key: argument0,
                    pressed: 0,
                    time: 0
                };
                ds_list_add(global.cmn_chat_key_repeat_list, l_item);
                ds_map_set(global.cmn_chat_key_repeat_map, argument0, l_item);
                return 1;
            }
            else
            {
                return 0;
            }
        }
        else if (l_item.pressed)
        {
            l_item.pressed = 0;
            return 1;
        }
        else
        {
            return 0;
        }
    }
}

function cmn_chat_key_update_ctrl()
{
    var l_so = global.cmn_chat_input_select_offset;
    
    if (keyboard_check_pressed(ord("A")))
    {
        global.cmn_chat_input_input_pos = string_length(keyboard_string);
        global.cmn_chat_input_select_offset = -global.cmn_chat_input_input_pos;
    }
    
    if (cmn_chat_key_pressed(86))
    {
        var l_s = clipboard_get_text();
        l_s = string_replace_all(l_s, "\r", "");
        l_s = string_replace_all(l_s, "\n", " ");
        var l_ks;
        
        if (l_so != 0)
        {
            var l_so1 = global.cmn_chat_input_input_pos + min(global.cmn_chat_input_select_offset, 0);
            l_ks = string_insert(l_s, string_delete(keyboard_string, l_so1 + 1, abs(global.cmn_chat_input_select_offset)), l_so1 + 1);
            global.cmn_chat_input_input_pos = l_so1;
        }
        else
        {
            l_ks = string_insert(l_s, keyboard_string, global.cmn_chat_input_input_pos + 1);
        }
        
        keyboard_string = l_ks;
        global.cmn_chat_input_input_last = l_ks;
        global.cmn_chat_input_select_offset = 0;
        global.cmn_chat_input_input_pos += string_length(l_s);
    }
    
    if (keyboard_check_pressed(ord("C")) && l_so != 0)
        clipboard_set_text(cmn_chat_string_substr(keyboard_string, global.cmn_chat_input_input_pos + min(global.cmn_chat_input_select_offset, 0), abs(global.cmn_chat_input_select_offset)));
    
    if (keyboard_check_pressed(ord("X")) && l_so != 0)
    {
        var l_so1 = global.cmn_chat_input_input_pos + min(global.cmn_chat_input_select_offset, 0);
        var l_so2 = abs(global.cmn_chat_input_select_offset);
        clipboard_set_text(cmn_chat_string_substr(keyboard_string, l_so1, l_so2));
        var l_ks = string_delete(keyboard_string, l_so1 + 1, l_so2);
        keyboard_string = l_ks;
        global.cmn_chat_input_input_last = l_ks;
        global.cmn_chat_input_input_pos = l_so1;
        global.cmn_chat_input_select_offset = 0;
    }
}

function cmn_chat_key_update_repeat()
{
    var l_l = global.cmn_chat_key_repeat_list;
    var l_m = global.cmn_chat_key_repeat_map;
    var l_dt = delta_time / 1000;
    var l_i = ds_list_size(l_l);
    var l_delay = global.cmn_chat_repeat_delay;
    var l_rate = global.cmn_chat_repeat_rate;
    
    while (--l_i >= 0)
    {
        var l_q = ds_list_find_value(l_l, l_i);
        var l_k = l_q.key;
        
        if (keyboard_check(l_k))
        {
            var l_t0 = l_q.time;
            var l_t1 = l_t0 + l_dt;
            l_q.time = l_t1;
            
            if (l_t1 > l_delay && ((l_t0 / l_rate) | 0) != ((l_t1 / l_rate) | 0))
                l_q.pressed = 1;
        }
        else
        {
            ds_map_delete(l_m, l_k);
            ds_list_delete(l_l, l_i);
        }
    }
}

function cmn_chat_key_update()
{
    cmn_chat_key_update_repeat();
    
    if (keyboard_check(vk_control))
        cmn_chat_key_update_ctrl();
}

function cmn_chat_log_clear()
{
    ds_list_clear(global.cmn_chat_log_items);
    global.cmn_chat_log_offset = 0;
    global.cmn_chat_log_scroll_height = 0;
    global.cmn_chat_log_scroll_offset = 0;
}

function cmn_chat_log_draw(argument0, argument1, argument2, argument3)
{
    var l_x1 = global.cmn_chat_item_x1;
    var l_x2 = global.cmn_chat_item_x2;
    var l_y1 = global.cmn_chat_item_y1;
    var l_y2 = global.cmn_chat_item_y2;
    var l_mw = argument3 - l_x1 - l_x2;
    var l_m = 0;
    
    if (argument3 < 0)
    {
        argument3 *= -1;
        l_m = 1;
    }
    
    var l_bc = global.cmn_chat_item_back_color;
    var l_ba = global.cmn_chat_item_back_alpha;
    var l_tc = global.cmn_chat_item_text_color;
    var l_ta = global.cmn_chat_item_text_alpha;
    var l_items = global.cmn_chat_log_items;
    var l_n = ds_list_size(l_items);
    var l_defh = string_height("Q") + l_y1 + l_y2;
    var l_rect = global.cmn_chat_sprite;
    var l_fade = !global.cmn_chat_is_open;
    var l_y = argument2;
    var l_t = current_time;
    var l_fadeTime = global.cmn_chat_log_fade_time;
    var l_fadeVert = global.cmn_chat_log_fade_vert;
    var l_fadeVertMin = global.cmn_chat_log_fade_vert_min;
    var l_fadeMult = (global.cmn_chat_comp_is_active && ds_list_size(global.cmn_chat_comp_shown) > 0) ? global.cmn_chat_comp_item_alpha_mult : 1;
    var l_amult = l_fade ? global.cmn_chat_log_alpha0 : global.cmn_chat_log_alpha1;
    var l_scrBack = global.cmn_chat_item_script_back;
    var l_scrText = global.cmn_chat_item_script_text;
    var l_scrPost = global.cmn_chat_item_script_post;
    draw_set_color(l_tc);
    var l_offset = global.cmn_chat_log_offset;
    var l_scOffset = global.cmn_chat_log_scroll_offset;
    var l_scHeight = global.cmn_chat_log_scroll_height;
    var l_i;
    
    for (l_i = 0; l_i < l_n; l_i++)
    {
        var l_item = ds_list_find_value(l_items, l_i);
        
        if (l_item.height != undefined)
            break;
        
        var l_s = l_item.text;
        var l_bh;
        
        if (l_s == "")
        {
            l_item.height = l_defh;
            l_item.width = 0;
            l_bh = l_defh;
        }
        else
        {
            var l_bw = string_width_ext(l_s, -1, l_mw) + l_x1 + l_x2;
            l_item.width = l_bw;
            l_bh = string_height_ext(l_s, -1, l_mw) + l_y1 + l_y2;
            l_item.height = l_bh;
        }
        
        if (l_i < l_offset)
            l_scOffset += l_bh;
        
        l_scHeight += l_bh;
    }
    
    if (l_i > 0)
    {
        global.cmn_chat_log_scroll_offset = l_scOffset;
        global.cmn_chat_log_scroll_height = l_scHeight;
    }
    
    l_i = l_offset;
    
    if (l_fadeMult <= 0)
        return 0;
    
    while (l_i < l_n && l_y >= argument1)
    {
        var l_item = ds_list_find_value(l_items, l_i++);
        
        if (l_item.text == "")
        {
            l_y -= l_defh;
            continue;
        }
        
        var l_a;
        
        if (l_fade)
        {
            l_a = clamp((l_item.time - l_t) / l_fadeTime, 0, 1);
            l_a *= clamp(1 - ((l_i - l_offset) * l_fadeVert), l_fadeVertMin, 1);
            
            if (l_a <= 0)
                break;
        }
        else
        {
            l_a = l_fadeMult;
        }
        
        var l_s = l_item.text;
        var l_bh = l_item.height;
        var l_bw;
        
        if (l_bh == undefined)
        {
            l_bw = string_width_ext(l_s, -1, l_mw) + l_x1 + l_x2;
            l_item.width = l_bw;
            l_bh = string_height_ext(l_s, -1, l_mw) + l_y1 + l_y2;
            l_item.height = l_bh;
        }
        else
        {
            l_bw = l_item.width;
        }
        
        l_y -= l_bh;
        var l_d = l_item.data;
        var l_x = argument0;
        
        if (l_scrBack != undefined)
            l_x += l_scrBack(l_x, l_y, l_bw, l_bh, l_bc, l_ba * l_a, l_s, l_d);
        else
            draw_sprite_stretched_ext(l_rect, 0, l_x, l_y, l_bw, l_bh, l_bc, l_ba * l_a * l_a);
        
        if (l_scrText == undefined)
        {
            draw_set_alpha(l_ta * l_a);
            draw_text_ext(l_x + l_x1, l_y + l_y1, l_s, -1, l_mw);
            draw_set_alpha(1);
        }
        else
        {
            l_scrText(l_x, l_y, l_bw, l_bh, l_tc, l_ta, l_s, l_d);
        }
        
        if (l_scrPost != undefined)
            l_scrPost(l_x, l_y, l_bw, l_bh, l_tc, l_ta, l_s, l_d);
    }
    
    if (!l_fade)
        cmn_chat_log_scroll_draw(argument0, argument1, argument2, l_defh);
}

function cmn_chat_log_scroll_update_scroll(argument0, argument1)
{
    var l_d = mouse_wheel_up() - mouse_wheel_down();
    var l_scrollBy;
    
    if (l_d != 0)
    {
        l_scrollBy = global.cmn_chat_scroll_speed;
        
        if (l_scrollBy < 0)
            l_scrollBy *= -argument1;
        
        l_scrollBy *= l_d;
    }
    else
    {
        if (cmn_chat_key_pressed(33))
            l_d--;
        
        if (cmn_chat_key_pressed(34))
            l_d++;
        
        if (l_d == 0)
            return 0;
        
        l_scrollBy = -l_d * argument0;
    }
    
    l_d = sign(l_scrollBy);
    var l_total = abs(l_scrollBy);
    var l_curr = 0;
    var l_items = global.cmn_chat_log_items;
    var l_count = ds_list_size(l_items);
    var l_i = global.cmn_chat_log_offset;
    
    while (l_curr < l_total)
    {
        var l_i1 = l_i + l_d;
        
        if (l_i1 < 0 || l_i1 >= l_count)
            break;
        
        l_curr += ds_list_find_value(l_items, l_i).height;
        l_i = l_i1;
    }
    
    global.cmn_chat_log_offset = l_i;
    global.cmn_chat_log_scroll_offset += (l_curr * l_d);
    
    if (l_d > 0)
        global.cmn_chat_log_scroll_check_limit = 1;
}

function cmn_chat_log_scroll_draw(argument0, argument1, argument2, argument3)
{
    var l_pageHeight = argument2 - argument1;
    cmn_chat_log_scroll_update_scroll(l_pageHeight, argument3);
    var l_lastPageHeight = 0;
    var l_scrollHeight = global.cmn_chat_log_scroll_height;
    var l_scrollOffset = global.cmn_chat_log_scroll_offset;
    var l_items = global.cmn_chat_log_items;
    var l_i = ds_list_size(l_items);
    
    while (--l_i >= 0)
    {
        var l_item = ds_list_find_value(l_items, l_i);
        l_lastPageHeight += l_item.height;
        
        if (l_lastPageHeight >= l_pageHeight)
            break;
    }
    
    if (l_i < 0)
        l_i = 0;
    
    var l_k;
    
    for (l_k = global.cmn_chat_log_offset; l_k > l_i; l_k--)
    {
        var l_item = ds_list_find_value(l_items, l_k);
        l_scrollOffset -= l_item.height;
    }
    
    global.cmn_chat_log_offset = l_k;
    global.cmn_chat_log_scroll_offset = l_scrollOffset;
    
    if (l_scrollHeight < l_pageHeight)
        return 0;
    
    var l_maxScroll = l_scrollHeight - l_lastPageHeight;
    var l_bx1 = global.cmn_chat_scroll_back_x1;
    var l_bx2 = global.cmn_chat_scroll_back_x2;
    var l_by1 = global.cmn_chat_scroll_back_y1;
    var l_by2 = -global.cmn_chat_scroll_back_y2;
    var l_rx = argument0 + l_bx1;
    var l_rw = l_bx2 - l_bx1;
    var l_ry = argument1 + l_by1;
    var l_rh = l_pageHeight - l_by1 - l_by2;
    var l_c = global.cmn_chat_scroll_back_color;
    
    if (l_c == undefined)
        l_c = global.cmn_chat_item_back_color;
    
    var l_a = global.cmn_chat_scroll_back_alpha;
    
    if (l_a == undefined)
        l_a = global.cmn_chat_item_back_alpha;
    
    draw_sprite_stretched_ext(global.cmn_chat_sprite, 0, l_rx, l_ry, l_rw, l_rh, l_c, l_a);
    l_bx1 = global.cmn_chat_scroll_bar_x1;
    l_bx2 = -global.cmn_chat_scroll_bar_x2;
    l_by1 = global.cmn_chat_scroll_bar_y1;
    l_by2 = -global.cmn_chat_scroll_bar_y2;
    l_rw -= (l_bx1 + l_bx2);
    l_rx += l_bx1;
    l_rh -= (l_by1 + l_by2);
    l_ry += l_by1;
    var l_nh = (l_rh * l_pageHeight) / l_scrollHeight;
    l_ry += (clamp(1 - (l_scrollOffset / l_maxScroll), 0, 1) * (l_rh - l_nh));
    l_c = global.cmn_chat_scroll_bar_color;
    
    if (l_c == undefined)
        l_c = global.cmn_chat_item_text_color;
    
    l_a = global.cmn_chat_scroll_bar_alpha;
    
    if (l_a == undefined)
        l_a = global.cmn_chat_item_text_alpha;
    
    draw_sprite_stretched_ext(global.cmn_chat_sprite, 0, l_rx, l_ry, l_rw, l_nh, l_c, l_a);
}

function cmn_chat_parse(argument0)
{
    var l_cf = global.cmn_chat_command_prefix;
    var l_cl = string_length(l_cf);
    
    if (l_cl == 0 || (string_length(argument0) > l_cl && string_copy(argument0, 1, l_cl) == l_cf))
    {
        var l_p = string_pos(" ", argument0);
        
        if (l_p == 0)
            return [argument0];
        
        var l_comp = ds_map_find_value(global.cmn_chat_comp_map, string_copy(argument0, 1, l_p - 1));
        
        if (l_comp == undefined)
            return undefined;
        
        return cmn_chat_split(argument0, " ", array_length(l_comp.args) + 1);
    }
    else
    {
        return argument0;
    }
}

function cmn_chat_split(argument0, argument1, argument2)
{
    var l_rl = global.cmn_chat_parse_list;
    var l_found = 1;
    
    while (l_found < argument2)
    {
        var l_pos = string_pos(argument1, argument0);
        
        if (l_pos > 0)
        {
            l_found++;
            ds_list_add(l_rl, string_copy(argument0, 1, l_pos - 1));
            argument0 = string_delete(argument0, 1, l_pos);
        }
        else
        {
            break;
        }
    }
    
    ds_list_add(l_rl, argument0);
    var l_arr = array_create(l_found);
    var l_i = 0;
    var l__g1 = l_found;
    
    while (l_i < l__g1)
    {
        array_set(l_arr, l_i, ds_list_find_value(l_rl, l_i));
        l_i++;
    }
    
    ds_list_clear(l_rl);
    return l_arr;
}

function cmn_chat_haxe_class(argument0, argument1) constructor
{
    static superClass = undefined;
    
    static i_constructor = undefined;
    
    static marker = undefined;
    
    static index = undefined;
    
    static name = undefined;
    
    superClass = undefined;
    marker = global.cmn_chat_haxe_type_markerValue;
    index = argument0;
    name = argument1;
    
    static __class__ = "class";
}

global.mt_cmn_chat_haxe_class.i_constructor = cmn_chat_haxe_class;

function cmn_chat_gml_internal_ArrayImpl_join(argument0, argument1)
{
    var l_len = array_length(argument0);
    
    if (l_len == 0)
        return "";
    
    var l_buf = global.cmn_chat_gml_internal_ArrayImpl_join_buf;
    
    if (l_buf == undefined)
    {
        l_buf = buffer_create(1024, buffer_grow, 1);
        global.cmn_chat_gml_internal_ArrayImpl_join_buf = l_buf;
    }
    
    buffer_seek(l_buf, buffer_seek_start, 0);
    buffer_write(l_buf, buffer_text, cmn_chat_Std_stringify(argument0[0]));
    var l_i = 1;
    var l__g1 = l_len;
    
    while (l_i < l__g1)
    {
        buffer_write(l_buf, buffer_text, argument1);
        buffer_write(l_buf, buffer_text, cmn_chat_Std_stringify(argument0[l_i]));
        l_i++;
    }
    
    buffer_write(l_buf, buffer_u8, 0);
    buffer_seek(l_buf, buffer_seek_start, 0);
    return buffer_read(l_buf, buffer_string);
}

function cmn_chat_gml_internal_ArrayImpl_copy(argument0)
{
    var l_len = array_length(argument0);
    var l_out;
    
    if (l_len > 0)
    {
        l_out = [];
        array_copy(l_out, 0, argument0, 0, l_len);
    }
    else
    {
        l_out = [];
    }
    
    return l_out;
}

function cmn_chat_haxe_Exception_new(argument0, argument1, argument2)
{
    native = (argument2 != undefined) ? argument2 : self;
}

function cmn_chat_haxe_Exception(argument0, argument1, argument2) constructor
{
    static native = undefined;
    
    switch (argument_count)
    {
        case 1:
            method(self, cmn_chat_haxe_Exception_new)(argument[0]);
            break;
        
        case 2:
            method(self, cmn_chat_haxe_Exception_new)(argument[0], argument[1]);
            break;
        
        case 3:
            method(self, cmn_chat_haxe_Exception_new)(argument[0], argument[1], argument[2]);
            break;
        
        default:
            show_error("Expected 1..3 arguments.", 1);
    }
    
    static __class__ = global.mt_cmn_chat_haxe_Exception;
}

global.mt_cmn_chat_haxe_Exception.i_constructor = cmn_chat_haxe_Exception;

function cmn_chat_haxe_Exception_isNativeException(argument0)
{
    if (is_struct(argument0))
    {
        var l_c = variable_struct_get(argument0, "__class__");
        
        if (l_c == undefined)
            return 0;
        
        if (l_c == global.mt_cmn_chat_haxe_Exception)
            return 1;
        
        if (!variable_struct_exists(argument0, "superClass"))
            return 0;
        
        l_c = l_c.superClass;
        
        while (is_struct(l_c))
        {
            if (l_c == global.mt_cmn_chat_haxe_Exception)
                return 1;
            
            l_c = l_c.superClass;
        }
    }
    
    return 0;
}

function cmn_chat_haxe_Exception_thrown(argument0)
{
    if (cmn_chat_haxe_Exception_isNativeException(argument0))
        return argument0.native;
    
    return new cmn_chat_haxe_ValueException(argument0);
}

function cmn_chat_haxe_ValueException(argument0, argument1, argument2) constructor
{
    static value = undefined;
    
    static native = undefined;
    
    method(self, cmn_chat_haxe_Exception_new)(string(argument0), argument1, argument2);
    value = argument0;
    
    static __class__ = global.mt_cmn_chat_haxe_ValueException;
}

global.mt_cmn_chat_haxe_ValueException.i_constructor = cmn_chat_haxe_ValueException;

function haxe_iterators_array_iterator(argument0) constructor
{
    static array = undefined;
    
    static current = undefined;
    
    static has_next = function()
    {
        return current < array_length(array);
    };
    
    static next = function()
    {
        return array[current++];
    };
    
    current = 0;
    array = argument0;
    
    static __class__ = global.mt_haxe_iterators_array_iterator;
}

global.mt_haxe_iterators_array_iterator.i_constructor = haxe_iterators_array_iterator;
global.cmn_chat_is_open = 0;
global.cmn_chat_command_history_list = ds_list_create();
global.cmn_chat_comp_is_active = 0;
global.cmn_chat_comp_help_sep = " : ";
global.cmn_chat_comp_item_alpha_mult = 0.5;
global.cmn_chat_comp_script_back = undefined;
global.cmn_chat_comp_script_post = undefined;
global.cmn_chat_comp_back_color_inactive = undefined;
global.cmn_chat_comp_back_color_active = undefined;
global.cmn_chat_comp_back_alpha_inactive = undefined;
global.cmn_chat_comp_back_alpha_active = undefined;
global.cmn_chat_comp_cmd_color_inactive = undefined;
global.cmn_chat_comp_cmd_alpha_inactive = 0.7;
global.cmn_chat_comp_cmd_color_active = undefined;
global.cmn_chat_comp_cmd_alpha_active = 1;
global.cmn_chat_comp_cmd_color_args = undefined;
global.cmn_chat_comp_cmd_alpha_args = 0.7;
global.cmn_chat_comp_arg_color_inactive = undefined;
global.cmn_chat_comp_arg_alpha_inactive = 0.7;
global.cmn_chat_comp_arg_color_active = undefined;
global.cmn_chat_comp_arg_alpha_active = 1;
global.cmn_chat_comp_arg_color_noncurrent = undefined;
global.cmn_chat_comp_arg_alpha_noncurrent = 0.7;
global.cmn_chat_comp_arg_color_current = undefined;
global.cmn_chat_comp_arg_alpha_current = 1;
global.cmn_chat_comp_help_color_inactive = undefined;
global.cmn_chat_comp_help_alpha_inactive = 0.5;
global.cmn_chat_comp_help_color_active = undefined;
global.cmn_chat_comp_help_alpha_active = 0.7;
global.cmn_chat_comp_help_color_args = undefined;
global.cmn_chat_comp_help_alpha_args = 0.7;
global.cmn_chat_comp_last = "";
global.cmn_chat_comp_items = ds_list_create();
global.cmn_chat_comp_map = ds_map_create();
global.cmn_chat_comp_shown = ds_list_create();
global.cmn_chat_comp_index = -1;
global.cmn_chat_comp_argh_last = "";
global.cmn_chat_comp_argh_items = -1;
global.cmn_chat_comp_argh_shown = ds_list_create();
global.cmn_chat_comp_argh_select = 0;
global.cmn_chat_comp_argh_last_ks = "";
global.cmn_chat_comp_argh_last_pos = -1;
global.cmn_chat_comp_get_arg_data_1 = 
{
    text: "",
    pos: 0,
    len: 0
};
global.cmn_chat_command_prefix = "/";
global.cmn_chat_area_x1 = 5;
global.cmn_chat_area_x2 = -5;
global.cmn_chat_area_y1 = 5;
global.cmn_chat_area_y2 = -5;
global.cmn_chat_item_x1 = 2;
global.cmn_chat_item_x2 = 2;
global.cmn_chat_item_y1 = 0;
global.cmn_chat_item_y2 = 0;
global.cmn_chat_item_back_color = 0;
global.cmn_chat_item_back_alpha = 1;
global.cmn_chat_item_text_color = c_white;
global.cmn_chat_item_text_alpha = 1;
global.cmn_chat_item_script_back = undefined;
global.cmn_chat_item_script_text = undefined;
global.cmn_chat_item_script_post = undefined;
global.cmn_chat_beam_x1 = 0;
global.cmn_chat_beam_x2 = 1;
global.cmn_chat_beam_y1 = 1;
global.cmn_chat_beam_y2 = 1;
global.cmn_chat_max_length = 150;
global.cmn_chat_max_length_cmd = 1200;
global.cmn_chat_repeat_delay = 300;
global.cmn_chat_repeat_rate = 100;
global.cmn_chat_input_prompt = "> ";
global.cmn_chat_input_back_color_active = undefined;
global.cmn_chat_input_back_color_inactive = undefined;
global.cmn_chat_input_back_alpha_active = undefined;
global.cmn_chat_input_back_alpha_inactive = undefined;
global.cmn_chat_input_text_color_active = undefined;
global.cmn_chat_input_text_color_inactive = undefined;
global.cmn_chat_input_text_alpha_active = undefined;
global.cmn_chat_input_text_alpha_inactive = undefined;
global.cmn_chat_input_custom_data = undefined;
global.cmn_chat_font = -1;
global.cmn_chat_sprite = -1;
global.cmn_chat_select_color = 16616753;
global.cmn_chat_scroll_speed = -3;
global.cmn_chat_scroll_back_x1 = -5;
global.cmn_chat_scroll_back_x2 = 0;
global.cmn_chat_scroll_back_y1 = 0;
global.cmn_chat_scroll_back_y2 = 0;
global.cmn_chat_scroll_back_color = undefined;
global.cmn_chat_scroll_back_alpha = undefined;
global.cmn_chat_scroll_bar_x1 = 0;
global.cmn_chat_scroll_bar_x2 = 0;
global.cmn_chat_scroll_bar_y1 = 0;
global.cmn_chat_scroll_bar_y2 = 0;
global.cmn_chat_scroll_bar_color = undefined;
global.cmn_chat_scroll_bar_alpha = undefined;
global.cmn_chat_input_input_pos = 0;
global.cmn_chat_input_beam_time = 0;
global.cmn_chat_input_select_offset = 0;
global.cmn_chat_input_pan_non_word = cmn_chat_input_pan_non_word_init();
global.cmn_chat_key_can_release = cmn_chat_key_can_release_init();
global.cmn_chat_key_repeat_list = ds_list_create();
global.cmn_chat_key_repeat_map = ds_map_create();
global.cmn_chat_key_shift_bug = cmn_chat_key_shift_bug_init();
global.cmn_chat_log_items = ds_list_create();
global.cmn_chat_log_offset = 0;
global.cmn_chat_log_scroll_height = 0;
global.cmn_chat_log_scroll_offset = 0;
global.cmn_chat_log_max_size = 100;
global.cmn_chat_log_fade_time = 3000;
global.cmn_chat_log_fade_delay = 7000;
global.cmn_chat_log_fade_vert = 0.15;
global.cmn_chat_log_fade_vert_min = 0.1;
global.cmn_chat_log_alpha0 = 0.85;
global.cmn_chat_log_alpha1 = 0.95;
global.cmn_chat_log_scroll_check_limit = 0;
global.cmn_chat_parse_list = ds_list_create();
global.cmn_chat_gml_internal_ArrayImpl_join_buf = undefined;
