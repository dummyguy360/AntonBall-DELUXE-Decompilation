global.mq_dp_Date = [undefined, undefined];
global.mq_dp_net_adapter = [undefined, undefined];
global.mq_dp_net_adapters_adp_steam_wrap = [undefined, undefined, undefined, undefined];
global.mq_dp_hub_link = [undefined, undefined, undefined, undefined, undefined, undefined, 0, undefined, 0, 0];
global.mq_dp_player = [undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, 0, undefined, undefined, undefined, 0, undefined];
global.mq_dp__player_active_player_iterator = [undefined, undefined, 0, 0, undefined];
global.mq_dp_flow_state = [undefined, undefined, undefined, 0, 0, 0];
global.mq_dp_input_adapter = [undefined];
global.mq_dp_scheme = [undefined, undefined, undefined, undefined, undefined];
global.mq_dp_state = [undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, 0];
global.mq_dp_input_node = [undefined, undefined, undefined];
global.mq_dp_net_netlink = [undefined, undefined, undefined, 0, undefined, undefined, undefined, 0, 0, 0, undefined, 0, undefined, undefined, undefined, undefined, undefined, 0, 0, 0, undefined, 0, undefined, undefined, 0, undefined, 0, undefined, undefined, undefined, undefined, undefined, 0, undefined, 0, undefined];
global.mq_dp_link_relpacket = [undefined, undefined, 0, 0, undefined];
global.mq_dp_net_adapters_adp_faucet_net = [undefined, undefined];
global.mq_dp_net_adapters_adp_steam = [undefined, undefined, undefined, undefined];
global.mq_dp_haxe_Exception = [undefined, undefined];
global.mq_dp_haxe_ValueException = [undefined, undefined, undefined];
global.mq_haxe_iterators_array_iterator = [undefined, undefined, 0];
global.dp_haxe_type_markerValue = [];
global.mt_dp_Date = new dp_haxe_class(7, "dp_Date");
global.mt_dp_net_adapter = new dp_haxe_class(8, "dp_net_adapter");
global.mt_dp_net_adapters_adp_steam_wrap = new dp_haxe_class(9, "dp_net_adapters_adp_steam_wrap");
global.mt_dp_net_adapters_adp_steam_wrap.superClass = global.mt_dp_net_adapter;
global.mt_dp_hub_link = new dp_haxe_class(10, "dp_hub_link");
global.mt_dp_player = new dp_haxe_class(11, "dp_player");
global.mt_dp__player_active_player_iterator = new dp_haxe_class(12, "dp__player_active_player_iterator");
global.mt_dp_flow_state = new dp_haxe_class(13, "dp_flow_state");
global.mt_dp_input_adapter = new dp_haxe_class(14, "dp_input_adapter");
global.mt_dp_scheme = new dp_haxe_class(15, "dp_scheme");
global.mt_dp_state = new dp_haxe_class(16, "dp_state");
global.mt_dp_input_state_event = new dp_haxe_enum(17, "dp_input_state_event");
global.mt_dp_input_leaf = new dp_haxe_enum(18, "dp_input_leaf");
global.mt_dp_input_node = new dp_haxe_class(19, "dp_input_node");
global.mt_dp_net_netlink = new dp_haxe_class(20, "dp_net_netlink");
global.mt_dp_link_relpacket = new dp_haxe_class(21, "dp_link_relpacket");
global.mt_dp_net_adapters_adp_faucet_net = new dp_haxe_class(22, "dp_net_adapters_adp_faucet_net");
global.mt_dp_net_adapters_adp_faucet_net.superClass = global.mt_dp_net_adapter;
global.mt_dp_net_adapters_adp_steam = new dp_haxe_class(23, "dp_net_adapters_adp_steam");
global.mt_dp_net_adapters_adp_steam.superClass = global.mt_dp_net_adapter;
global.mt_dp_haxe_class = new dp_haxe_class(-1, "dp_haxe_class");
global.mt_dp_haxe_enum = new dp_haxe_class(-1, "dp_haxe_enum");
global.mt_haxe_stack_item = new dp_haxe_enum(24, "haxe_stack_item");
global.mt_dp_haxe_Exception = new dp_haxe_class(25, "dp_haxe_Exception");
global.mt_dp_haxe_ValueException = new dp_haxe_class(26, "dp_haxe_ValueException");
global.mt_dp_haxe_ValueException.superClass = global.mt_dp_haxe_Exception;
global.mt_haxe_iterators_array_iterator = new dp_haxe_class(27, "haxe_iterators_array_iterator");

function dp_Date_create(argument0, argument1, argument2, argument3, argument4, argument5)
{
    var this = [global.mt_dp_Date];
    array_copy(this, 1, global.mq_dp_Date, 1, 1);
    array_set(this, 1, date_create_datetime(argument0, argument1 + 1, argument2, argument3, argument4, argument5));
    return this;
}

function dp_Date_now()
{
    var l_d = dp_Date_create(2000, 0, 1, 0, 0, 0);
    array_set(l_d, 1, date_current_datetime());
    return l_d;
}

function dp_Std_stringify(argument0)
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
            
            l_s += dp_Std_stringify(variable_struct_get(argument0, l_fields[l_i]));
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

function dp_Std_parseFloat(argument0)
{
    var l_l = string_length(argument0);
    var l_n = string_length(string_digits(argument0));
    var l_p = string_pos(".", argument0);
    var l_e = string_pos("e", argument0);
    
    if (l_e == 0)
        l_e = string_pos("E", argument0);
    
    switch (l_e)
    {
        case 0:
            break;
        
        case 1:
            return NaN;
        
        case 2:
            if (l_p > 0)
                return NaN;
            
            break;
        
        default:
            if (l_p > 0 && l_e < l_p)
                return NaN;
    }
    
    if (l_e != 0 && l_e < (l_l - 1))
    {
        switch (string_ord_at(argument0, l_e + 1))
        {
            case 43:
            case 45:
                l_l--;
                break;
        }
    }
    
    if (l_n && l_n == (l_l - (string_ord_at(argument0, 1) == 45) - (l_p != 0) - (l_e != 0)))
        return real(argument0);
    else
        return NaN;
}

function dp_Std_parseInt(argument0)
{
    var l_n = string_length(string_digits(argument0));
    
    if (l_n && l_n == (string_length(argument0) - (string_ord_at(argument0, 1) == 45)))
        return real(argument0);
    else
        return undefined;
}

function dp_string_substring(argument0, argument1, argument2)
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

function dp_StringTools_lpad(argument0, argument1, argument2)
{
    var l_cl = string_length(argument1);
    
    if (l_cl <= 0)
        return argument0;
    
    return string_repeat(argument1, (argument2 - string_length(argument0)) div l_cl) + argument0;
}

function dp_StringTools_hex(argument0, argument1)
{
    var l_s = "";
    var l_h = "0123456789ABCDEF";
    
    if (argument0 < 0)
        self.argument0 += 4294967295;
    
    while (argument0 > 0)
    {
        l_s = string_char_at(l_h, 1 + (argument0 & 15)) + l_s;
        argument0 = argument0 >> 4;
    }
    
    if (argument1 != undefined)
    {
        self.argument1 -= string_length(l_s);
        
        if (argument1 > 0)
            l_s = string_repeat("0", argument1) + l_s;
    }
    
    return l_s;
}

function dp_debug_log_inner_hx(argument0)
{
    trace(argument0);
}

function dp_debug_log_hx(argument0, argument1)
{
    var l_s = dp_Std_stringify(argument1);
    l_s = "[dp:" + dp_Std_stringify(argument0) + "] [" + (global.dp_debug_precise_time ? string_format((current_time - global.dp_time_offset) / 1000, 0, 3) : date_datetime_string(array_get(dp_Date_now(), 1))) + " @" + string(global.dp_current_frame) + "] " + l_s;
    trace(l_s);
}

function dp_debug_log_haxe_hx(argument0, argument1)
{
    trace(dp_Std_stringify(argument0));
}

function dp_debug_init_hx()
{
}

function dp_net_adapter_new(argument0)
{
}

function dp_net_adapter_create()
{
    var this = [global.mt_dp_net_adapter];
    array_copy(this, 1, global.mq_dp_net_adapter, 1, 1);
    array_set(this, 1, dp_net_adapter_packet);
    dp_net_adapter_new(this);
    return this;
}

function dp_net_adapter_packet(argument0, argument1, argument2, argument3, argument4, argument5)
{
    buffer_seek(argument4, buffer_seek_start, 0);
    dp_net_handle_hx(1, argument1, argument2, argument3, argument4, argument5);
}

function dp_net_adapters_adp_steam_wrap_create()
{
    var this = [global.mt_dp_net_adapters_adp_steam_wrap];
    array_copy(this, 1, global.mq_dp_net_adapters_adp_steam_wrap, 1, 3);
    array_set(this, 1, dp_net_adapters_adp_steam_wrap_packet);
    array_set(this, 3, dp_net_adapters_adp_faucet_net_create());
    array_set(this, 2, dp_net_adapters_adp_steam_create());
    dp_net_adapter_new(this);
    return this;
}

function dp_net_adapters_adp_steam_wrap_host(argument0, argument1, argument2 = 32)
{
    if (global.dp_has_steam)
        return dp_net_adapters_adp_steam_host(argument0[2], argument1, argument2);
    else
        return dp_net_adapters_adp_faucet_net_host(argument0[3], argument1, argument2);
}

function dp_net_adapters_adp_steam_wrap_join(argument0, argument1, argument2)
{
    if (global.dp_has_steam)
        return dp_net_adapters_adp_steam_join(argument0[2], argument1, argument2);
    else
        return dp_net_adapters_adp_faucet_net_join(argument0[3], argument1, argument2);
}

function dp_net_adapters_adp_steam_wrap_packet(argument0, argument1, argument2, argument3, argument4, argument5)
{
    if (global.dp_has_steam)
    {
        script_execute(argument0[2][1], argument0[2], argument1, argument2, argument3, argument4, argument5);
        return 0;
    }
    else
    {
        script_execute(argument0[3][1], argument0[3], argument1, argument2, argument3, argument4, argument5);
        return 0;
    }
}

function dp_net_adapters_adp_steam_wrap_send(argument0, argument1, argument2, argument3, argument4, argument5)
{
    if (global.dp_has_steam)
        return dp_net_adapters_adp_steam_send(argument0[2], argument1, argument2, argument3, argument4, argument5);
    else
        return dp_net_adapters_adp_faucet_net_send(argument0[3], argument1, argument2, argument3, argument4, argument5);
}

function dp_net_adapters_adp_steam_wrap_update(argument0)
{
    if (global.dp_has_steam)
        dp_net_adapters_adp_steam_update(argument0[2]);
    else
        dp_net_adapters_adp_faucet_net_update(argument0[3]);
}

function dp_net_adapters_adp_steam_wrap_destroy_server(argument0, argument1)
{
    if (global.dp_has_steam)
        dp_net_adapters_adp_steam_destroy_server(argument0[2], argument1);
    else
        dp_net_adapters_adp_faucet_net_destroy_server(argument0[3], argument1);
}

function dp_net_adapters_adp_steam_wrap_destroy_socket(argument0, argument1)
{
    if (global.dp_has_steam)
        dp_net_adapters_adp_steam_destroy_socket(argument0[2], argument1);
    else
        dp_net_adapters_adp_faucet_net_destroy_socket(argument0[3], argument1);
}

function dp_array_alloc(argument0 = 0, argument1)
{
    var l_r = [];
    
    while (--argument0 >= 0)
        array_set(l_r, argument0, argument1);
    
    return l_r;
}

function dp_func_valid(argument0)
{
    return argument0 != undefined && argument0 >= 0;
}

function dp_make_buffer(argument0)
{
    var l_i = ds_list_size(global.dp___buffer_pool) - 1;
    var l_r;
    
    if (l_i >= 0)
    {
        l_r = ds_list_find_value(global.dp___buffer_pool, l_i);
        ds_list_delete(global.dp___buffer_pool, l_i);
        
        if (buffer_get_size(l_r) < argument0)
            buffer_resize(l_r, argument0);
    }
    else
    {
        l_r = buffer_create(argument0, buffer_grow, 1);
    }
    
    return l_r;
}

function dp_free_buffer(argument0)
{
    buffer_seek(argument0, buffer_seek_start, 0);
    ds_list_add(global.dp___buffer_pool, argument0);
}

function dp_print_buffer(argument0, argument1, argument2 = 0)
{
    var l_buf_pos = buffer_tell(argument0);
    var l_r = global.dp_print_buffer_buffer;
    var l_length = (argument1 == undefined) ? l_buf_pos : argument1;
    buffer_seek(argument0, buffer_seek_start, argument2);
    buffer_seek(l_r, buffer_seek_start, 0);
    var l_lens = string(l_length);
    buffer_write(l_r, buffer_u8, 91);
    buffer_write(l_r, buffer_text, l_lens);
    buffer_write(l_r, buffer_u8, 93);
    
    for (var l_i = 0; l_i < l_length; l_i++)
    {
        var l_byte = buffer_read(argument0, buffer_u8);
        
        for (var l_shift = 4; l_shift >= 0; l_shift -= 4)
        {
            var l_dig = (l_byte >> l_shift) & 15;
            
            if (l_dig > 9)
                buffer_write(l_r, buffer_u8, 55 + l_dig);
            else
                buffer_write(l_r, buffer_u8, 48 + l_dig);
        }
        
        buffer_write(l_r, buffer_u8, 32);
    }
    
    buffer_seek(argument0, buffer_seek_start, l_buf_pos);
    buffer_write(l_r, buffer_u8, 0);
    buffer_seek(l_r, buffer_seek_start, 0);
    return buffer_read(l_r, buffer_string);
}

function dp_crc32(argument0, argument1, argument2)
{
    var l_val = 4294967295;
    var l_tab = global.dp_crc32tab;
    var l_orig = buffer_tell(argument0);
    buffer_seek(argument0, buffer_seek_start, argument1);
    
    repeat (argument2)
        l_val = l_tab[(l_val ^ buffer_read(argument0, buffer_u8)) & 255] ^ (l_val >> 8);
    
    buffer_seek(argument0, buffer_seek_start, l_orig);
    return l_val ^ 4294967295;
}

function dp_crc16(argument0, argument1, argument2)
{
    var l_r = dp_crc32(argument0, argument1, argument2);
    var l_rl = l_r & 65535;
    
    if (l_r < 0)
        return l_rl ^ (((l_r >> 16) & 32767) | 32768);
    else
        return l_rl ^ ((l_r >> 16) & 65535);
}

function dp_sleep(argument0)
{
    var l_t = (current_time - global.dp_time_offset) + argument0;
    
    while ((current_time - global.dp_time_offset) < l_t)
    {
    }
    
    global.dp_time_offset += argument0;
}

function dp_get_timer()
{
    return current_time - global.dp_time_offset;
}

function dp_core_random()
{
    var l_rf = global.dp_on_random_next;
    var l_f = l_rf;
    
    if (l_f != undefined && l_f >= 0)
        return l_rf();
    
    return random(1);
}

function dp_core_random_set_seed(argument0)
{
    var l_rf = global.dp_on_random_set_seed;
    var l_f = l_rf;
    
    if (l_f != undefined && l_f >= 0)
    {
        l_f = l_rf;
        
        if (l_f != undefined && l_f >= 0)
            l_rf(argument0);
        
        return 0;
    }
    
    random_set_seed(argument0);
}

function dp_core_randomize()
{
    randomize();
    var l_r = irandom(2147483646);
    l_r %= 2147483646;
    
    if (l_r < 0)
        l_r += 2147483646;
    
    dp_core_random_set_seed(l_r + 1);
}

function dp_flow_reset_hx()
{
    global.dp_flow_time_skip_acc_hx = 0;
}

function dp_flow_close()
{
    if (!global.dp_flow_is_active)
        return 0;
    
    if (dp_get_is_server())
    {
        var l_out = global.dp_out;
        buffer_seek(l_out, buffer_seek_start, 0);
        buffer_write(l_out, buffer_u8, 246);
        dp_link_send_hx(l_out);
        dp_flow_close_inner_hx();
        return 1;
    }
    else
    {
        return 0;
    }
}

function dp_flow_close_inner_hx()
{
    if (global.dp_has_steam && dp_steam_lobby_is_owner())
    {
        dp_steam_lobby_update_start();
        dp_steam_lobby_set_type(global.dp_steam_lobby_lobby_type);
        dp_steam_lobby_update_submit();
    }
    
    var l__g_list = global.dp_link_list_hx;
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
    {
        var l_link2 = ds_list_find_value(l__g_list, l__g_index++);
        array_set(l_link2, 13, -1);
    }
    
    dp_flow_reset_hx();
    
    if (global.dp_debug_state)
        dp_debug_log_hx("State", "Flow end!");
    
    dp_replay_reset_hx();
    var l_this1 = global.dp_flow_on_end;
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1();
    
    global.dp_flow_is_active = 0;
    global.dp_lobby_is_locked = 0;
    global.dp_flow_time_skip_acc_hx = 0;
    return 1;
}

function dp_flow_steam_start_hx()
{
    if (!global.dp_has_steam)
        return 0;
    
    if (dp_steam_lobby_is_owner())
        dp_steam_lobby_set_type(0);
    
    var l_i = 0;
    var l__g1 = dp_player_count_sources();
    
    while (l_i < l__g1)
    {
        var l_uid = dp_player_find_source(l_i);
        
        if (l_uid == global.dp_local_uid)
        {
        }
        else
        {
            var l_link = ds_map_find_value(global.dp_link_map_hx, l_uid);
            
            if (l_link == undefined)
            {
            }
            else
            {
                dp_steam_set_played_with_hx(dp_net_netlink_to_steam_id_hx(l_link));
            }
        }
        
        l_i++;
    }
}

function dp_flow_start_hx()
{
    if (global.dp_hub_is_active)
        dp_hub_close();
    
    dp_flow_steam_start_hx();
    
    if (global.dp_replay_is_playing)
    {
        global.dp_replay_post_delay_hx = global.dp_flow_delay_hx;
        global.dp_flow_delay_hx = global.dp_replay_file_delay_hx;
    }
    
    global.dp_flow_delay_delta_hx = 0;
    global.dp_flow_delay_delta_next_hx = 0;
    var l_d = global.dp_flow_delay_hx;
    var l_pl = global.dp_player_list_hx;
    var l_uid = (dp_player_count_uid(global.dp_local_uid) > 0) ? global.dp_local_uid : dp_player_get_uid(dp_player_find_active());
    var l_i = 0;
    var l__g1 = ds_list_size(l_pl);
    
    while (l_i < l__g1)
    {
        var l_player = ds_list_find_value(l_pl, l_i);
        
        if (l_player == undefined)
        {
        }
        else
        {
            dp_state_clear_hx(l_player[6]);
            dp_state_clear_hx(l_player[5]);
            dp_player_destroy_states_hx(l_player);
            
            if (!global.dp_replay_is_playing || global.dp_replay_buffer == undefined)
            {
                var l_states = l_player[4];
                
                for (var l_di = 0; l_di < l_d; l_di++)
                    ds_list_add(l_states, dp_state_create_ext_hx());
            }
            
            array_set(l_player, 7, dp_state_create_ext_hx());
            
            if (global.dp_replay_is_playing)
                array_set(l_player, 15, l_player[1] == global.dp_replay_view_uid);
            else
                array_set(l_player, 15, l_player[1] == l_uid);
        }
        
        l_i++;
    }
    
    dp_flow_reset_hx();
    global.dp_current_frame = 0;
    global.dp_current_time = 0;
    global.dp_current_time_acc_hx = 0;
    
    if (global.dp_replay_is_playing && global.dp_replay_buffer != undefined)
    {
        global.dp_replay_is_reading = 1;
        
        for (var l_di = 0; l_di < l_d; l_di++)
            dp_replay_read_next_hx();
    }
    
    dp_core_random_set_seed(global.dp_flow_initial_seed);
    global.dp_flow_current_seed_hx = 0;
    ds_list_clear(global.dp_flow_stacked_seeds_hx);
    
    for (var l_di = 0; l_di <= l_d; l_di++)
        ds_list_add(global.dp_flow_stacked_seeds_hx, 0);
    
    if (global.dp_flow_dump_on_desyncs)
    {
        while (ds_list_size(global.dp_flow_stacked_buffers_hx) <= l_d)
            ds_list_add(global.dp_flow_stacked_buffers_hx, buffer_create(1024, buffer_grow, 1));
    }
    
    global.dp_flow_is_active = 1;
    global.dp_flow_time_next_hx = current_time - global.dp_time_offset;
    global.dp_flow_force_send_hx = 0;
    
    if (global.dp_debug_state)
        dp_debug_log_hx("State", "Flow start!");
    
    global.dp_flow_auto_input_delay = 0;
    var l_f = global.dp_flow_on_start;
    
    if (l_f != undefined && l_f >= 0)
    {
        var l_this1 = global.dp_flow_on_start;
        l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1();
    }
    else
    {
        room_goto_next();
    }
}

function dp_flow_handle_hash_hx()
{
    var l_f = global.dp_flow_on_state_hash;
    var l_seed;
    
    if (l_f != undefined && l_f >= 0)
    {
        var l_hb = global.dp_flow_hash_buffer_hx;
        
        if (l_hb == undefined)
        {
            l_hb = buffer_create(128, buffer_grow, 1);
            global.dp_flow_hash_buffer_hx = l_hb;
        }
        
        buffer_seek(l_hb, buffer_seek_start, 0);
        var l_this1 = global.dp_flow_on_state_hash;
        l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1(l_hb);
        
        var l_hl = buffer_tell(l_hb);
        l_seed = dp_crc32(l_hb, 0, l_hl);
        
        if (global.dp_flow_dump_on_desyncs)
        {
            var l_n = ds_list_size(global.dp_flow_stacked_buffers_hx);
            var l_q = ds_list_find_value(global.dp_flow_stacked_buffers_hx, l_n - 1);
            ds_list_delete(global.dp_flow_stacked_buffers_hx, l_n - 1);
            
            if (buffer_get_size(l_q) < l_hl)
                buffer_resize(l_q, l_hl);
            
            buffer_copy(l_hb, 0, l_hl, l_q, 0);
            buffer_seek(l_q, buffer_seek_start, l_hl);
            ds_list_insert(global.dp_flow_stacked_buffers_hx, 0, l_q);
        }
    }
    else
    {
        l_seed = (dp_core_random() * 2147483647) | 0;
    }
    
    ds_list_delete(global.dp_flow_stacked_seeds_hx, 0);
    ds_list_add(global.dp_flow_stacked_seeds_hx, l_seed);
    global.dp_flow_current_seed_hx = l_seed;
}

function dp_flow_handle_desyncs_hx()
{
    if (!global.dp_flow_detect_desyncs)
        return 0;
    
    if (global.dp_flow_is_rollback)
        return 0;
    
    var l_plist = global.dp_player_list_hx;
    var l_psize = ds_list_size(l_plist);
    var l_resync = 0;
    var l_desync = 0;
    var l_ref_seed = ds_list_find_value(global.dp_flow_stacked_seeds_hx, 0);
    
    if (l_ref_seed == 0)
        return 0;
    
    for (var l_k = 0; l_k < l_psize; l_k++)
    {
        var l_player = ds_list_find_value(l_plist, l_k);
        
        if (l_player == undefined || l_player[7] == undefined)
            continue;
        
        var l_cmp_seed = l_player[7][9];
        
        if (l_player[17])
        {
            if (l_cmp_seed != l_ref_seed && l_cmp_seed != 0)
                l_desync |= (1 << l_k);
        }
        else if (l_cmp_seed == l_ref_seed)
        {
            array_set(l_player, 17, 1);
            l_resync |= (1 << l_k);
        }
    }
    
    if (l_desync != 0)
    {
        var l_this1 = global.dp_flow_on_desync;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1(l_desync);
        
        if (global.dp_flow_dump_on_desyncs)
        {
            var l_osd = global.dp_flow_on_state_dump;
            l_f = l_osd;
            var l_osv = l_f != undefined && l_f >= 0;
            var l_db = global.dp_flow_dump_buffer_hx;
            
            if (l_db == undefined)
            {
                l_db = buffer_create(1024, buffer_grow, 1);
                global.dp_flow_dump_buffer_hx = l_db;
            }
            
            var l_bp = global.dp_flow_dump_prefix + "_" + dp_StringTools_lpad("" + string(global.dp_current_frame), "0", 5);
            l_this1 = global.dp_flow_on_dump;
            l_f = l_this1;
            
            if (l_f != undefined && l_f >= 0)
                l_this1(l_bp);
            
            for (var l_k = 0; l_k <= 0; l_k++)
            {
                var l_nb = ds_list_find_value(global.dp_flow_stacked_buffers_hx, global.dp_flow_delay_hx + l_k);
                var l_nl = buffer_tell(l_nb);
                l_np = l_bp;
                
                if (l_k > 0)
                    l_np += ".prev";
                
                l_np += ".dump";
                
                if (l_osv)
                {
                    buffer_seek(l_db, buffer_seek_start, 0);
                    buffer_seek(l_nb, buffer_seek_start, 0);
                    l_f = l_osd;
                    
                    if (l_f != undefined && l_f >= 0)
                        l_osd(l_nb, l_db, l_nl);
                    
                    buffer_seek(l_nb, buffer_seek_start, l_nl);
                    buffer_save_ext(l_db, l_np, 0, buffer_tell(l_db));
                }
                else
                {
                    buffer_save_ext(l_nb, l_np, 0, l_nl);
                }
            }
            
            var l_np = l_bp + ".png";
            screen_save(l_np);
        }
        
        for (var l_k = 0; l_k < l_psize; l_k++)
        {
            var l_player = ds_list_find_value(l_plist, l_k);
            
            if (l_player == undefined || l_player[7] == undefined)
                continue;
            
            var l_cmp_seed = l_player[7][9];
            
            if (l_player[17] && l_cmp_seed != l_ref_seed && l_cmp_seed != 0)
            {
                array_set(l_player, 17, 0);
                
                if (global.dp_flow_drop_on_desyncs)
                {
                    var l_player_uid = l_player[1];
                    var l_link = ds_map_find_value(global.dp_link_map_hx, l_player_uid);
                    
                    for (var l_lk = 0; l_lk < l_psize; l_lk++)
                    {
                        var l_lplayer = ds_list_find_value(l_plist, l_lk);
                        
                        if (l_lplayer != undefined && l_lplayer[1] == l_player_uid)
                        {
                            l_this1 = global.dp_player_on_departure;
                            l_f = l_this1;
                            
                            if (l_f != undefined && l_f >= 0)
                                l_this1(l_lk);
                            
                            dp_player_destroy_hx(l_lplayer);
                            ds_list_set(l_plist, l_lk, undefined);
                            var l_this2 = global.dp_player_on_change;
                            var l_f1 = l_this2;
                            
                            if (l_f1 != undefined && l_f1 >= 0)
                                l_this2(l_lk);
                        }
                    }
                    
                    if (l_link != undefined)
                    {
                        if (l_link != undefined)
                        {
                            dp_link_list_remove_hx(global.dp_link_list_hx, l_link);
                            ds_map_delete(global.dp_link_map_hx, l_link[1]);
                        }
                        
                        dp_net_netlink_destroy_hx(l_link, 0);
                    }
                }
            }
        }
    }
    
    if (l_resync != 0)
    {
        var l_this1 = global.dp_flow_on_resync;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1(l_resync);
    }
}

function dp_flow_send_states_hx()
{
    if (!(dp_get_is_online() && ds_list_size(global.dp_link_list_hx) > 0))
        return 0;
    
    var l_sendAnyway = 0;
    
    if (global.dp_flow_force_send_hx > 0)
    {
        global.dp_flow_force_send_hx -= 1;
        l_sendAnyway = 1;
    }
    
    var l_pl = global.dp_player_list_hx;
    var l_k = 0;
    var l__g1 = ds_list_size(l_pl);
    
    while (l_k < l__g1)
    {
        var l_player = ds_list_find_value(l_pl, l_k);
        
        if (l_player != undefined && (l_sendAnyway || l_player[1] == global.dp_local_uid))
        {
            var l_out = global.dp_out;
            var l_states = l_player[4];
            var l_staten = ds_list_size(l_states);
            var l_state = undefined;
            
            if (l_staten > 0)
                l_state = ds_list_find_value(l_states, l_staten - 1);
            else if (l_player[1] == global.dp_local_uid)
                l_state = l_player[9];
            
            if (l_state != undefined)
            {
                buffer_seek(l_out, buffer_seek_start, 0);
                buffer_write(l_out, buffer_u8, 42);
                buffer_write(l_out, buffer_u8, l_k);
                dp_state_write_hx(l_state, l_out);
            }
            else
            {
                throw dp_haxe_Exception_thrown("No outgoing state for player " + string(l_k));
            }
            
            var l_n = dp_link_send_hx(l_out);
            
            if (global.dp_debug_frames)
                dp_debug_log_hx("Frame", "Sent state for f" + string(global.dp_current_frame + global.dp_flow_delay_hx) + " to " + string(l_n) + " players.");
        }
        
        l_k++;
    }
}

function dp_flow_change_delay_hx(argument0)
{
    var l_diff = argument0 - (global.dp_flow_delay_hx + global.dp_flow_delay_delta_hx + global.dp_flow_delay_delta_next_hx);
    
    if (l_diff == 0)
        return 0;
    
    global.dp_flow_delay_delta_next_hx = l_diff;
    return 1;
}

function dp_flow_change_delay_post_hx(argument0)
{
    var l_diff = argument0 - (global.dp_flow_delay_hx + global.dp_flow_delay_delta_hx + global.dp_flow_delay_delta_next_hx);
    
    if (l_diff <= 0)
        return 0;
    
    var l_pl = global.dp_player_list_hx;
    var l_i = 0;
    var l__g1 = ds_list_size(l_pl);
    
    while (l_i < l__g1)
    {
        var l_p = ds_list_find_value(l_pl, l_i);
        
        if (l_p != undefined)
        {
            var l_states = l_p[4];
            
            for (var l_k = 0; l_k < l_diff; l_k++)
                ds_list_add(l_states, dp_state_create_ext_hx());
        }
        
        l_i++;
    }
    
    global.dp_flow_delay_hx = argument0;
    
    if (global.dp_flow_dump_on_desyncs)
    {
        while (ds_list_size(global.dp_flow_stacked_buffers_hx) <= argument0)
            ds_list_add(global.dp_flow_stacked_buffers_hx, buffer_create(1024, buffer_grow, 1));
    }
    
    return 1;
}

function dp_flow_handle_events_hx(argument0)
{
    var l_pl = global.dp_player_list_hx;
    var l_pn = ds_list_size(l_pl);
    var l_oc = 0;
    var l_k = 0;
    var l__g1 = l_pn;
    
    while (l_k < l__g1)
    {
        var l_p = ds_list_find_value(l_pl, l_k);
        
        if (l_p == undefined || l_p[7] == undefined)
        {
        }
        else
        {
            var l_evs = l_p[7][8];
            var l_evc = ds_list_size(l_evs);
            
            for (var l_evi = 0; l_evi < l_evc; l_evi++)
            {
                var l_e = ds_list_find_value(l_evs, l_evi);
                
                switch (l_e[0])
                {
                    case 2:
                        if (global.dp_debug_state)
                            dp_debug_log_hx("State", "Changed P" + string(l_k + 1) + "'s UID.");
                        
                        break;
                    
                    case 0:
                        if (argument0)
                        {
                            var l_this1 = global.dp_player_on_departure;
                            var l_f = l_this1;
                            
                            if (l_f != undefined && l_f >= 0)
                                l_this1(l_k);
                            
                            dp_player_destroy_hx(l_p);
                            ds_list_set(l_pl, l_k, undefined);
                            var l_this2 = global.dp_player_on_change;
                            var l_f1 = l_this2;
                            
                            if (l_f1 != undefined && l_f1 >= 0)
                                l_this2(l_k);
                            
                            l_evi = l_evc;
                        }
                        
                        break;
                    
                    case 1:
                        var l_u = l_e[1];
                        
                        if (argument0)
                        {
                            array_set(l_p, 1, l_u);
                            
                            if (global.dp_debug_state)
                                dp_debug_log_hx("State", "Changed P" + string(l_k + 1) + "'s UID to " + dp_Std_stringify(l_u) + " " + dp_link_get_alias(l_u));
                            
                            l_oc = 1;
                        }
                        
                        break;
                    
                    case 3:
                        if (argument0)
                            global.dp_flow_delay_delta_hx += l_e[1];
                        
                        break;
                }
            }
        }
        
        l_k++;
    }
    
    if (l_oc && global.dp_replay_is_playing)
    {
        dp_flow_change_delay_post_hx(global.dp_replay_post_delay_hx);
        var l_this1 = global.dp_replay_on_takeover;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1();
        
        global.dp_replay_is_playing = 0;
        global.dp_replay_is_reading = 0;
        global.dp_replay_frames = global.dp_current_frame;
        global.dp_flow_force_send_hx = 0;
        
        if (global.dp_replay_buffer != undefined)
        {
            if (global.dp_replay_path != "")
            {
                global.dp_replay_is_recording = 1;
                buffer_seek(global.dp_replay_buffer, buffer_seek_start, global.dp_replay_prev_pos_hx);
            }
            else
            {
                buffer_delete(global.dp_replay_buffer);
                global.dp_replay_buffer = undefined;
            }
        }
    }
}

function dp_flow_next_hx()
{
    var l_pl = global.dp_player_list_hx;
    var l_pn = ds_list_size(l_pl);
    
    if (global.dp_replay_is_playing && dp_get_is_server())
        global.dp_flow_force_send_hx = 1;
    
    if (global.dp_flow_is_normal)
        dp_input_next_hx();
    
    dp_flow_handle_hash_hx();
    dp_flow_handle_events_hx(0);
    
    for (var l_i = 0; l_i < l_pn; l_i++)
    {
        var l_p = ds_list_find_value(l_pl, l_i);
        
        if (l_p != undefined)
            dp_player_advance_hx(l_p, l_i);
    }
    
    if (global.dp_debug_frames)
    {
        for (var l_i = 0; l_i < l_pn; l_i++)
        {
            var l_p = ds_list_find_value(l_pl, l_i);
            
            if (l_p != undefined)
            {
                if (global.dp_debug_frames)
                    dp_debug_log_hx("Frame", "P" + string(l_i + 1) + ": " + dp_state_print_hx(l_p[7]));
            }
        }
    }
    
    dp_flow_handle_desyncs_hx();
    
    if (global.dp_flow_is_normal)
    {
        l_this1 = global.dp_flow_on_input;
        l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1();
        
        dp_flow_send_states_hx();
    }
    
    dp_flow_handle_events_hx(1);
    
    if (global.dp_flow_rollback_force_load && ds_list_size(global.dp_flow_flow_rollback_rollback_states_hx) > 0)
        dp_flow_state_load_hx(ds_list_find_value(global.dp_flow_flow_rollback_rollback_states_hx, 0));
    
    global.dp_current_frame++;
    global.dp_current_time_acc_hx += ((1000000 / global.dp_framerate) | 0);
    global.dp_current_time += ((global.dp_current_time_acc_hx / 1000) | 0);
    global.dp_current_time_acc_hx %= 1000;
    
    if (global.dp_debug_frames)
        dp_debug_log_hx("Frame", "Frame " + string(global.dp_current_frame) + " (seed " + dp_StringTools_hex(global.dp_flow_current_seed_hx, 8) + ")");
    
    if (global.dp_replay_is_recording)
        dp_replay_write_next_hx();
    
    var l_this1 = global.dp_flow_on_frame;
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1();
    
    var l_ri = global.dp_flow_rollback_frames;
    
    if (l_ri > 0)
    {
        var l_state = dp_flow_state_new_hx();
        dp_flow_state_save_hx(l_state);
        var l_rbs = global.dp_flow_flow_rollback_rollback_states_hx;
        ds_list_insert(l_rbs, 0, l_state);
        
        if (ds_list_size(l_rbs) > l_ri)
        {
            dp_flow_state_destroy_hx(ds_list_find_value(l_rbs, l_ri), 1);
            ds_list_delete(l_rbs, l_ri);
        }
    }
}

function dp_flow_can_advance_hx()
{
    var l_l = global.dp_player_list_hx;
    var l_n = ds_list_size(l_l);
    
    if (global.dp_flow_rollback_frames > 0)
        dp_flow_flow_rollback_handle_hx();
    
    var l_ok = 1;
    
    for (var l_i = 0; l_i < l_n; l_i++)
    {
        var l_p = ds_list_find_value(l_l, l_i);
        
        if (l_p == undefined)
            continue;
        
        if (l_p[1] != global.dp_local_uid && ds_list_size(l_p[4]) == 0)
        {
            if (l_p[18] < global.dp_flow_rollback_frames)
            {
                var l_ps = dp_state_clone_hx(l_p[7], 1);
                array_set(l_ps, 11, 1);
                array_set(l_ps, 9, 0);
                ds_list_add(l_p[4], l_ps);
                array_set_post(l_p, 18, array_get(l_p, 18) + 1);
                array_set(l_p, 13, 1);
            }
            else
            {
                array_set(l_p, 13, 0);
                l_ok = 0;
            }
        }
        else
        {
            array_set(l_p, 13, 1);
        }
    }
    
    if (!l_ok)
        return 0;
    
    if (global.dp_flow_delay_delta_hx != 0)
    {
        var l_i;
        
        for (l_i = 0; l_i < l_n; l_i++)
        {
            var l_p = ds_list_find_value(l_l, l_i);
            
            if (l_p != undefined)
            {
                var l_state = ds_list_find_value(array_get(l_p, 4), 0);
                
                if (l_state == undefined || l_state[6] != "" || ds_list_size(l_state[8]) > 0 || ds_list_size(l_state[7]) > 0)
                    break;
            }
        }
        
        if (l_i >= l_n)
        {
            if (global.dp_flow_delay_delta_hx < 0)
            {
                for (l_i = 0; l_i < l_n; l_i++)
                {
                    var l_p = ds_list_find_value(l_l, l_i);
                    
                    if (l_p != undefined)
                        ds_list_delete(l_p[4], 0);
                }
                
                global.dp_flow_delay_delta_hx += 1;
                global.dp_flow_delay_hx -= 1;
                
                if (global.dp_debug_state)
                    dp_debug_log_hx("State", "Delay decreased to " + string(global.dp_flow_delay_hx) + " @ " + string(global.dp_current_frame));
                
                ds_list_delete(global.dp_flow_stacked_seeds_hx, 0);
                
                if (global.dp_flow_dump_on_desyncs)
                    ds_list_delete(global.dp_flow_stacked_buffers_hx, 0);
                
                var l_this1 = global.dp_flow_on_delay_change;
                var l_f = l_this1;
                
                if (l_f != undefined && l_f >= 0)
                    l_this1(global.dp_flow_delay_hx + 1, global.dp_flow_delay_hx);
                
                return dp_flow_can_advance_hx();
            }
            else
            {
                for (l_i = 0; l_i < l_n; l_i++)
                {
                    var l_p = ds_list_find_value(l_l, l_i);
                    
                    if (l_p != undefined)
                        ds_list_insert(l_p[4], 0, dp_state_clone_hx(ds_list_find_value(array_get(l_p, 4), 0), 1));
                }
                
                global.dp_flow_delay_delta_hx -= 1;
                l_i = 1;
                var l_k = 2;
                global.dp_flow_delay_hx += 1;
                
                if (global.dp_debug_state)
                    dp_debug_log_hx("State", "Delay increased to " + string(global.dp_flow_delay_hx) + " @ " + string(global.dp_current_frame));
                
                ds_list_insert(global.dp_flow_stacked_seeds_hx, l_k, ds_list_find_value(global.dp_flow_stacked_seeds_hx, l_i));
                
                if (global.dp_flow_dump_on_desyncs)
                {
                    var l_b0 = ds_list_find_value(global.dp_flow_stacked_buffers_hx, l_i);
                    var l_b1 = buffer_create(buffer_get_size(l_b0), buffer_grow, 1);
                    buffer_copy(l_b0, 0, buffer_tell(l_b0), l_b1, 0);
                    buffer_seek(l_b1, buffer_seek_start, buffer_tell(l_b0));
                    ds_list_insert(global.dp_flow_stacked_buffers_hx, l_k, l_b1);
                }
                
                var l_this1 = global.dp_flow_on_delay_change;
                var l_f = l_this1;
                
                if (l_f != undefined && l_f >= 0)
                    l_this1(global.dp_flow_delay_hx - 1, global.dp_flow_delay_hx);
            }
        }
    }
    
    return 1;
}

function dp_flow_timeout_players_hx()
{
    var l_dropNum = 0;
    var l_dropArr = [];
    var l_playerList = global.dp_player_list_hx;
    var l_playerId = 0;
    var l__g1 = ds_list_size(l_playerList);
    
    while (l_playerId < l__g1)
    {
        var l_player = ds_list_find_value(l_playerList, l_playerId);
        
        if (l_player != undefined && ds_list_size(l_player[4]) == 0)
        {
            var l_playerUid = l_player[1];
            var l_dropIt;
            
            for (l_dropIt = 0; l_dropIt < l_dropNum; l_dropIt++)
            {
                if (l_dropArr[l_dropIt] == l_playerUid)
                    break;
            }
            
            if (l_dropIt >= l_dropNum)
                array_set(l_dropArr, l_dropNum++, l_playerUid);
            
            var l_this1 = global.dp_player_on_departure;
            var l_f = l_this1;
            
            if (l_f != undefined && l_f >= 0)
                l_this1(l_playerId);
            
            dp_player_destroy_hx(l_player);
            ds_list_set(l_playerList, l_playerId, undefined);
            var l_this2 = global.dp_player_on_change;
            var l_f1 = l_this2;
            
            if (l_f1 != undefined && l_f1 >= 0)
                l_this2(l_playerId);
        }
        
        l_playerId++;
    }
    
    for (var l_dropIt = 0; l_dropIt < l_dropNum; l_dropIt++)
    {
        var l_dropLink = ds_map_find_value(global.dp_link_map_hx, array_get(l_dropArr, l_dropIt));
        
        if (l_dropLink != undefined)
        {
            if (global.dp_debug_state)
                dp_debug_log_hx("State", dp_net_netlink_print_hx(l_dropLink) + " timed out.");
            
            if (l_dropLink != undefined)
            {
                dp_link_list_remove_hx(global.dp_link_list_hx, l_dropLink);
                ds_map_delete(global.dp_link_map_hx, l_dropLink[1]);
            }
            
            dp_net_netlink_destroy_hx(l_dropLink, 1);
        }
    }
}

function dp_flow_update_sync_hx()
{
    global.dp_flow_time_next_hx += ((1000 / global.dp_framerate) | 0);
    var l_waitSince = current_time - global.dp_time_offset;
    var l_waitPrev = 0;
    var l_timeoutAt = l_waitSince + global.dp_flow_timeout;
    var l_cap = global.dp_framerate_cap;
    
    if (global.dp_replay_is_playing)
        dp_replay_read_next_hx();
    
    var l_delayTill = current_time - global.dp_time_offset;
    var l_playerList = global.dp_player_list_hx;
    var l_playerCount = ds_list_size(l_playerList);
    
    for (var l_i = 0; l_i < l_playerCount; l_i++)
    {
        var l_player = ds_list_find_value(l_playerList, l_i);
        
        if (l_player != undefined)
            array_set(l_player, 12, 0);
    }
    
    var l_f = global.dp_flow_on_sync_wait;
    var l_hasSyncWait = l_f != undefined && l_f >= 0;
    
    while (!dp_flow_can_advance_hx() || (l_cap && (current_time - global.dp_time_offset) < global.dp_flow_time_next_hx))
    {
        while ((current_time - global.dp_time_offset) < l_delayTill)
        {
        }
        
        l_delayTill = (current_time - global.dp_time_offset) + 3;
        dp_net_update_hx();
        
        if ((current_time - global.dp_time_offset) > l_timeoutAt)
            dp_flow_timeout_players_hx();
        
        var l_waitCurr = current_time - global.dp_time_offset - l_waitSince;
        
        for (var l_i = 0; l_i < l_playerCount; l_i++)
        {
            var l_player = ds_list_find_value(l_playerList, l_i);
            
            if (l_player != undefined && !l_player[13])
                array_set(l_player, 12, l_waitCurr);
        }
        
        if (l_hasSyncWait)
        {
            var l_this1 = global.dp_flow_on_sync_wait;
            l_f = l_this1;
            
            if (l_f != undefined && l_f >= 0)
                l_this1(l_waitCurr, l_waitPrev);
            
            l_waitPrev = l_waitCurr;
        }
        
        if (!global.dp_flow_is_active)
            return 0;
    }
    
    var l_waitTime = global.dp_flow_last_wait_time_hx;
    global.dp_flow_last_wait_time_hx = current_time - global.dp_time_offset - l_waitSince;
    global.dp_flow_time_next_hx = current_time - global.dp_time_offset;
    dp_flow_next_hx();
    
    if (global.dp_framerate_skip)
    {
        global.dp_flow_time_skip_acc_hx += max(0, (((delta_time / 1000) - l_waitTime) / (1000 / global.dp_framerate)) - 1);
        var l_n = floor(global.dp_flow_time_skip_acc_hx);
        global.dp_flow_time_skip_acc_hx -= l_n;
        
        if (l_n > global.dp_max_frame_skip)
            l_n = global.dp_max_frame_skip;
        
        repeat (l_n)
        {
            if (dp_flow_can_advance_hx())
                dp_flow_next_hx();
            else
                break;
        }
    }
}

function dp_flow_update_hx()
{
    dp_lobby_update_auto_delay_hx();
    dp_flow_update_sync_hx();
}

function dp_event_create()
{
    dp_reset();
    global.dp_screen_width_hx = room_width;
    global.dp_screen_height_hx = room_height;
}

function dp_event_update()
{
    var l_flow = global.dp_flow_is_active;
    dp_net_update_hx();
    dp_hub_update_hx();
    dp_input_update_hx();
    
    if (l_flow)
    {
        dp_flow_update_hx();
    }
    else if (!global.dp_flow_is_active)
    {
        dp_lobby_update_hx();
        dp_input_next_hx();
        global.dp_current_frame++;
        global.dp_current_time_acc_hx += ((1000000 / global.dp_framerate) | 0);
        global.dp_current_time += ((global.dp_current_time_acc_hx / 1000) | 0);
        global.dp_current_time_acc_hx %= 1000;
    }
    
    if (global.dp_flow_sync_start_flag_hx)
    {
        global.dp_flow_sync_start_flag_hx = 0;
        dp_flow_start_hx();
    }
}

function dp_event_room_start()
{
    if (global.dp_flow_is_active)
        dp_flow_reset_hx();
    
    room_speed = global.dp_framerate;
}

function dp_event_game_end()
{
    dp_reset();
    dp_steam_cleanup_hx();
}

function dp_event_network()
{
    if (global.dp_has_steam)
        return 0;
}

function dp_event_steam()
{
    dp_steam_steam_impl_async_event_hx(async_load);
}

function dp_hub_holepunch_hx(argument0, argument1, argument2)
{
    var l_out = global.dp_out;
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 181);
    dp_net_adapters_adp_steam_wrap_send(global.dp_adapter, argument2, argument0, argument1, l_out, buffer_tell(l_out));
}

function dp_hub_holepunch_ext_hx(argument0, argument1, argument2, argument3)
{
    if (!ds_map_exists(global.dp_hub_holepunched_hx, argument0))
    {
        dp_hub_holepunch_hx(argument1, argument2, global.dp_hub_link_hx[4]);
        ds_map_set(global.dp_hub_holepunched_hx, argument0, 1);
    }
}

function dp_hub_find_match(argument0 = -1)
{
    if (argument0 < 0)
        argument0 = global.dp_lobby_slot_count_max;
    
    if (!global.dp_hub_is_active)
        return 0;
    
    global.dp_hub_search_slot_count_hx = argument0;
    global.dp_hub_is_searching = 1;
    global.dp_hub_was_searching = 1;
    ds_map_clear(global.dp_hub_search_exclude_hx);
    ds_map_clear(global.dp_hub_search_exclude_by_id_hx);
    global.dp_hub_search_refresh_at_hx = current_time - global.dp_time_offset;
    global.dp_hub_search_refresh_tries_hx = 0;
    global.dp_hub_search_endpoint_hx = "";
    dp_hub_refresh_entries();
    return 1;
}

function dp_hub_stop_search()
{
    global.dp_hub_is_searching = 0;
    global.dp_hub_was_searching = 0;
    ds_map_clear(global.dp_hub_search_exclude_hx);
    ds_map_clear(global.dp_hub_search_exclude_by_id_hx);
    
    if (global.dp_lobby_is_active && dp_player_count_remote() == 0)
        dp_lobby_close();
}

function dp_hub_get_entry_count()
{
    if (global.dp_has_steam)
        return dp_steam_lobbylist_get_count();
    
    return ds_list_size(global.dp_hub_entries_hx);
}

function dp_hub_get_entry_uid(argument0)
{
    if (global.dp_has_steam)
        return dp_steam_lobbylist_get_lobby_id(argument0);
    
    var l_e = ds_list_find_value(global.dp_hub_entries_hx, argument0);
    
    if (l_e != undefined)
        return l_e[1];
    else
        return 0;
}

function dp_hub_get_entry_title(argument0)
{
    if (global.dp_has_steam)
        return dp_steam_lobbylist_get_data(argument0, "title");
    
    var l_e = ds_list_find_value(global.dp_hub_entries_hx, argument0);
    
    if (l_e != undefined)
        return l_e[2];
    else
        return undefined;
}

function dp_hub_get_entry_url(argument0)
{
    if (global.dp_has_steam)
        return dp_type_url_from_int((dp_steam_lobbylist_get_lobby_id(argument0) & 4294967295) div 1);
    
    var l_e = ds_list_find_value(global.dp_hub_entries_hx, argument0);
    
    if (l_e != undefined)
        return l_e[3];
    else
        return "";
}

function dp_hub_get_entry_port(argument0)
{
    if (global.dp_has_steam)
        return dp_steam_lobbylist_get_lobby_id(argument0) >> 32;
    
    var l_e = ds_list_find_value(global.dp_hub_entries_hx, argument0);
    
    if (l_e != undefined)
        return l_e[4];
    else
        return 0;
}

function dp_hub_get_entry_rtt(argument0)
{
    if (global.dp_has_steam)
        return 0;
    
    var l_e = ds_list_find_value(global.dp_hub_entries_hx, argument0);
    
    if (l_e != undefined)
        return l_e[6];
    else
        return 0;
}

function dp_hub_get_entry_slots_total(argument0)
{
    if (global.dp_has_steam)
        return dp_Std_parseInt(dp_steam_lobbylist_get_data(argument0, "slots"));
    
    var l_e = ds_list_find_value(global.dp_hub_entries_hx, argument0);
    
    if (l_e != undefined)
        return l_e[9];
    else
        return 0;
}

function dp_hub_get_entry_slots_taken(argument0)
{
    if (global.dp_has_steam)
        return dp_Std_parseInt(dp_steam_lobbylist_get_data(argument0, "players"));
    
    var l_e = ds_list_find_value(global.dp_hub_entries_hx, argument0);
    
    if (l_e != undefined)
        return l_e[8];
    else
        return 0;
}

function dp_hub_refresh_entries()
{
    if (global.dp_has_steam)
    {
        dp_steam_lobbylist_request(global.dp_hub_distance_filter);
        return 0;
    }
    
    var l_out = global.dp_out;
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 185);
    buffer_write(l_out, buffer_s32, global.dp_hub_local_uid_hx);
    dp_net_netlink_send_hx(global.dp_hub_link_hx, l_out);
    global.dp_hub_refreshing_entries_hx = 1;
}

function dp_hub_is_loading_entries()
{
    if (global.dp_has_steam)
        return dp_steam_lobbylist_is_loading();
    
    return global.dp_hub_refreshing_entries_hx;
}

function dp_hub_ping_entries()
{
    if (global.dp_has_steam)
        return 0;
    
    var l_len = ds_list_size(global.dp_hub_entries_hx);
    
    for (var l_i = 0; l_i < l_len; l_i++)
        dp_hub_link_ping_hx(ds_list_find_value(global.dp_hub_entries_hx, l_i));
}

function dp_hub_join_public(argument0)
{
    if (global.dp_has_steam)
        return dp_steam_lobbylist_join(argument0);
    
    var l_entry = ds_list_find_value(global.dp_hub_entries_hx, argument0);
    
    if (l_entry == undefined)
        return 0;
    
    var l_next = dp_net_netlink_new_hx(l_entry[5], l_entry[3], l_entry[4]);
    array_set(l_next, 14, 1);
    var l_out = global.dp_out;
    var l_uid = l_entry[1];
    
    if (!ds_map_exists(global.dp_hub_holepunched_hx, l_uid))
    {
        dp_hub_holepunch_hx(l_entry[3], l_entry[4], global.dp_hub_link_hx[4]);
        ds_map_set(global.dp_hub_holepunched_hx, l_uid, 1);
    }
    
    dp_net_packet__auth_hx(l_out, -1);
    
    if (dp_net_netlink_send_hx(l_next, l_out))
    {
        global.dp_net_server_link_hx = l_next;
        global.dp_net_is_server_hx = 0;
        ds_list_add(global.dp_link_list_hx, l_next);
        ds_map_set(global.dp_link_map_hx, array_get(l_next, 1), l_next);
        return 1;
    }
    else
    {
        dp_net_netlink_destroy_hx(l_next);
        return 0;
    }
}

function dp_hub_host_public(argument0, argument1 = -1)
{
    if (argument1 < 0)
        argument1 = global.dp_lobby_slot_count_max;
    
    if (global.dp_has_steam)
        dp_steam_lobby_create_hx(2, argument1, argument0);
    
    dp___host_conf_hx(1, argument1);
    global.dp_net_password = "";
    
    if (global.dp_has_steam)
        return 0;
    
    global.dp_net_server_socket_hx = global.dp_hub_link_hx[4];
    var l_out = global.dp_out;
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 190);
    buffer_write(l_out, buffer_string, argument0);
    dp_net_netlink_send_hx(global.dp_hub_link_hx, l_out);
}

function dp_hub_host_private(argument0, argument1 = -1)
{
    if (argument1 < 0)
        argument1 = global.dp_lobby_slot_count_max;
    
    global.dp_hub_game_name_hx = argument0;
    
    if (global.dp_has_steam)
    {
        dp_steam_lobby_create_hx(1, argument1, argument0);
        dp___host_conf_hx(1, argument1);
        global.dp_net_password = "";
        return 0;
    }
    
    var l_out = global.dp_out;
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 191);
    buffer_write(l_out, buffer_string, argument0);
    dp_net_netlink_send_hx(global.dp_hub_link_hx, l_out);
}

function dp_hub_host_stop()
{
    if (global.dp_has_steam)
    {
        dp_steam_lobby_leave();
        return 0;
    }
    
    var l_out = global.dp_out;
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 192);
    dp_net_netlink_send_hx(global.dp_hub_link_hx, l_out);
}

function dp_hub_join_private(argument0)
{
    if (global.dp_has_steam)
        return 0;
    
    global.dp_hub_game_name_hx = argument0;
    var l_out = global.dp_out;
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 193);
    buffer_write(l_out, buffer_string, argument0);
    dp_net_netlink_send_hx(global.dp_hub_link_hx, l_out);
}

function dp_hub_update_hx()
{
    var l_rf;
    
    if (global.dp_hub_is_active)
    {
        l_rf = dp_hub_is_loading_entries();
        var l_now = current_time - global.dp_time_offset;
        var l_inLobby = global.dp_lobby_is_active && (max(dp_player_count_active(), dp_steam_lobby_get_member_count()) >= dp_player_count_total() || !dp_get_is_server());
        
        if (!global.dp_hub_is_searching && global.dp_hub_was_searching && !l_inLobby)
        {
            global.dp_hub_is_searching = 1;
            global.dp_hub_search_refresh_tries_hx = 0;
            global.dp_hub_search_refresh_at_hx = min(global.dp_hub_search_refresh_at_hx, l_now + 1000);
        }
        
        if (!global.dp_steam_lobby_merging_lobby)
        {
            if (global.dp_hub_is_searching)
            {
                if (l_rf)
                {
                    global.dp_hub_search_refresh_at_hx = l_now + 3210 + ((l_now * 3) % 2731);
                }
                else if (l_inLobby)
                {
                    global.dp_hub_is_searching = 0;
                    ds_map_set(global.dp_hub_search_exclude_hx, global.dp_hub_search_endpoint_hx, 1);
                    global.dp_hub_search_endpoint_hx = "";
                }
                else if (!dp_get_is_connecting())
                {
                    if (global.dp_hub_was_refreshing_entries_hx)
                    {
                        var l_sx = global.dp_hub_search_exclude_hx;
                        var l_sxByID = global.dp_hub_search_exclude_by_id_hx;
                        var l_n = dp_hub_get_entry_count();
                        var l_i = 0;
                        
                        while (l_i < l_n)
                        {
                            var l_ep, l_eid;
                            
                            if (global.dp_has_steam)
                            {
                                var l_this1 = dp_steam_lobbylist_get_lobby_id(l_i);
                                l_eid = string(l_this1 >> 32) + ":" + string((l_this1 & 4294967295) div 1);
                                l_ep = dp_steam_lobbylist_get_data(l_i, "owner");
                                var l_title = dp_steam_lobbylist_get_data(l_i, "title");
                                
                                if (global.dp_debug_steam)
                                    dp_debug_log_hx("State", "Considering lobby `" + l_eid + "` - `" + l_title + "`");
                                
                                var l_memberCount = dp_steam_lobbylist_get_lobby_member_count(l_i);
                                
                                if (l_memberCount == 0)
                                {
                                    l_i++;
                                    continue;
                                }
                                
                                var l_slotCount = dp_steam_lobbylist_get_data(l_i, "slots");
                                
                                if (l_slotCount != undefined && l_slotCount != "" && l_memberCount >= dp_Std_parseInt(l_slotCount))
                                {
                                    if (global.dp_debug_steam)
                                        dp_debug_log_hx("State", "Lobby `" + l_eid + "` has enough people as-is, skipping");
                                    
                                    l_i++;
                                    continue;
                                }
                            }
                            else
                            {
                                l_ep = dp_Std_stringify(dp_hub_get_entry_url(l_i)) + ":" + string(dp_hub_get_entry_port(l_i));
                                l_eid = l_ep;
                            }
                            
                            if (ds_map_exists(l_sx, l_ep) || ds_map_exists(l_sxByID, l_eid))
                            {
                                l_i++;
                                continue;
                            }
                            
                            global.dp_hub_search_endpoint_hx = l_ep;
                            global.dp_hub_search_endpoint_id_hx = l_eid;
                            var l_isMerge = 0;
                            
                            if (ds_list_size(global.dp_link_list_hx) > 0)
                            {
                                var l_lid = dp_steam_lobbylist_get_lobby_id(l_i);
                                
                                if (global.dp_debug_state)
                                    dp_debug_log_hx("State", "Moving together to lobby " + (string(l_lid >> 32) + ":" + string((l_lid & 4294967295) div 1)));
                                
                                var l_out = global.dp_out;
                                buffer_seek(l_out, buffer_seek_start, 0);
                                buffer_write(l_out, buffer_u8, 231);
                                buffer_write(l_out, buffer_s32, l_lid >> 32);
                                buffer_write(l_out, buffer_s32, (l_lid & 4294967295) div 1);
                                dp_link_send_hx(l_out);
                                var l_this2 = global.dp_hub_on_steam_lobby_merge;
                                var l_f = l_this2;
                                
                                if (l_f != undefined && l_f >= 0)
                                    l_this2(l_lid);
                                
                                l_isMerge = 1;
                            }
                            
                            dp_lobby_close();
                            dp_hub_join_public(l_i);
                            
                            if (l_isMerge)
                                global.dp_steam_lobby_merging_lobby = 1;
                            
                            break;
                        }
                    }
                    else if (l_now >= global.dp_hub_search_refresh_at_hx)
                    {
                        global.dp_hub_search_refresh_at_hx = l_now + 3000;
                        global.dp_hub_search_refresh_tries_hx += 1;
                        
                        if (global.dp_hub_search_refresh_tries_hx >= 5 && !global.dp_lobby_is_active)
                        {
                            if (global.dp_debug_state)
                                dp_debug_log_hx("State", "Creating a lobby.");
                            
                            dp_hub_host_public(global.dp_player_local_alias + "'s game", global.dp_hub_search_slot_count_hx);
                        }
                        else
                        {
                            if (global.dp_debug_state)
                                dp_debug_log_hx("State", "Refreshing");
                            
                            dp_hub_refresh_entries();
                        }
                    }
                }
            }
        }
    }
    else
    {
        l_rf = 0;
    }
    
    global.dp_hub_was_refreshing_entries_hx = l_rf;
    global.dp_hub_was_searching = global.dp_hub_is_searching;
}

function dp_hub_handle_hx(argument0, argument1)
{
    var l_mid = buffer_read(argument1, buffer_u8);
    var l_out = global.dp_out;
    
    switch (l_mid)
    {
        case 181:
            var l_url = buffer_read(argument1, buffer_string);
            var l_port = buffer_read(argument1, buffer_s32);
            
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "Considering " + dp_Std_stringify(l_url) + ":" + string(l_port) + "...");
            
            dp_hub_holepunch_hx(l_url, l_port, argument0[4]);
            break;
        
        case 194:
            var l_uid = buffer_read(argument1, buffer_s32);
            var l_url = buffer_read(argument1, buffer_string);
            var l_port = buffer_read(argument1, buffer_s32);
            var l_name = buffer_read(argument1, buffer_string);
            
            if (!ds_map_exists(global.dp_hub_holepunched_hx, l_uid))
            {
                dp_hub_holepunch_hx(l_url, l_port, argument0[4]);
                ds_map_set(global.dp_hub_holepunched_hx, l_uid, 1);
            }
            
            buffer_seek(l_out, buffer_seek_start, 0);
            buffer_write(l_out, buffer_u8, 194);
            buffer_write(l_out, buffer_s32, l_uid);
            buffer_write(l_out, buffer_string, l_url);
            buffer_write(l_out, buffer_u32, l_port);
            buffer_write(l_out, buffer_string, l_name);
            dp_net_netlink_send_hx(argument0, l_out);
            break;
        
        case 184:
            global.dp_hub_players_total = buffer_read(argument1, buffer_u32);
            global.dp_hub_players_seeking = buffer_read(argument1, buffer_u32);
            buffer_seek(l_out, buffer_seek_start, 0);
            buffer_write(l_out, buffer_u8, 184);
            buffer_write(l_out, buffer_bool, !global.dp_lobby_is_active);
            dp_net_netlink_send_hx(argument0, l_out);
            break;
        
        case 183:
            global.dp_hub_motd = buffer_read(argument1, buffer_string);
            
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "MOTD set to " + global.dp_hub_motd);
            
            break;
        
        case 186:
            global.dp_hub_refreshing_entries_hx = 0;
            ds_list_clear(global.dp_hub_entries_hx);
            break;
        
        case 187:
            var l_uid = buffer_read(argument1, buffer_s32);
            var l_title = buffer_read(argument1, buffer_string);
            var l_url = buffer_read(argument1, buffer_string);
            var l_port = buffer_read(argument1, buffer_s32);
            var l_entry = dp_hub_link_new_hx(l_uid, l_title, l_url, l_port, argument0[4]);
            ds_list_add(global.dp_hub_entries_hx, l_entry);
            dp_hub_link_ping_hx(l_entry);
            break;
        
        case 192:
            var l_uid = buffer_read(argument1, buffer_s32);
            var l_len = ds_list_size(global.dp_hub_entries_hx);
            
            for (var l_i = 0; l_i < l_len; l_i++)
            {
                if (array_get(ds_list_find_value(global.dp_hub_entries_hx, l_i), 1) == l_uid)
                {
                    ds_list_delete(global.dp_hub_entries_hx, l_i);
                    break;
                }
            }
            
            break;
        
        case 191:
            var l_name = buffer_read(argument1, buffer_string);
            var l_succ = buffer_read(argument1, buffer_bool);
            
            if (l_name == global.dp_hub_game_name_hx)
            {
                if (l_succ)
                {
                    dp___host_conf_hx(1);
                    global.dp_net_server_socket_hx = argument0[4];
                    global.dp_net_password = l_name;
                }
                else if (global.dp_debug_state)
                {
                    dp_debug_log_hx("State", "Can't host a game: " + l_name);
                }
            }
            
            break;
        
        case 193:
            var l_name = buffer_read(argument1, buffer_string);
            var l_succ = buffer_read(argument1, buffer_bool);
            
            if (l_name == global.dp_hub_game_name_hx)
            {
                if (l_succ)
                {
                    var l_uid = buffer_read(argument1, buffer_s32);
                    var l_url = buffer_read(argument1, buffer_string);
                    var l_port = buffer_read(argument1, buffer_s32);
                    var l_next = dp_net_netlink_new_hx(argument0[4], l_url, l_port);
                    array_set(l_next, 14, 1);
                    
                    if (!ds_map_exists(global.dp_hub_holepunched_hx, l_uid))
                    {
                        dp_hub_holepunch_hx(l_url, l_port, global.dp_hub_link_hx[4]);
                        ds_map_set(global.dp_hub_holepunched_hx, l_uid, 1);
                    }
                    
                    global.dp_net_password = l_name;
                    dp_net_packet__auth_hx(l_out, -1);
                    
                    if (dp_net_netlink_send_hx(l_next, l_out))
                    {
                        global.dp_net_server_link_hx = l_next;
                        global.dp_net_is_server_hx = 0;
                        ds_list_add(global.dp_link_list_hx, l_next);
                        ds_map_set(global.dp_link_map_hx, array_get(l_next, 1), l_next);
                    }
                    else
                    {
                        dp_net_netlink_destroy_hx(l_next);
                        
                        if (global.dp_debug_state)
                            dp_debug_log_hx("State", "Can't join a game: " + l_name);
                    }
                }
                else if (global.dp_debug_state)
                {
                    dp_debug_log_hx("State", "Can't find a game: " + l_name);
                }
            }
            
            break;
        
        default:
            if (global.dp_debug_warnings)
                dp_debug_log_hx("Warning", "Unknown hub packet type: " + string(l_mid));
    }
}

function dp_hub_close()
{
    global.dp_hub_is_active = 0;
    global.dp_hub_is_searching = 0;
    global.dp_hub_was_searching = 0;
    
    if (global.dp_hub_link_hx != undefined)
    {
        dp_net_netlink_destroy_hx(global.dp_hub_link_hx, 1);
        
        if (!global.dp_lobby_is_active && !global.dp_flow_is_active)
            dp_net_adapters_adp_steam_wrap_destroy_socket(global.dp_adapter, global.dp_hub_link_hx[4]);
        
        global.dp_hub_link_hx = undefined;
    }
    
    ds_list_clear(global.dp_hub_entries_hx);
    ds_map_clear(global.dp_hub_holepunched_hx);
    global.dp_hub_players_total = 0;
    global.dp_hub_players_seeking = 0;
    global.dp_hub_motd = "";
    global.dp_hub_local_uid_hx = 0;
}

function dp_hub_reset_hx()
{
    if (global.dp_hub_is_active)
        dp_hub_close();
}

function dp_hub_init_hx()
{
    global.dp_hub_entries_hx = ds_list_create();
    global.dp_hub_holepunched_hx = ds_map_create();
}

function dp_hub_link_new_hx(argument0, argument1, argument2, argument3, argument4)
{
    var this = [global.mt_dp_hub_link];
    array_copy(this, 1, global.mq_dp_hub_link, 1, 9);
    array_set(this, 9, 0);
    array_set(this, 8, 0);
    array_set(this, 7, 0);
    array_set(this, 6, 0);
    array_set(this, 1, argument0);
    array_set(this, 2, argument1);
    array_set(this, 3, argument2);
    array_set(this, 4, argument3);
    array_set(this, 5, argument4);
    return this;
}

function dp_hub_link_ping_hx(argument0)
{
    array_set(argument0, 7, current_time - global.dp_time_offset);
    array_set(argument0, 6, 0);
    var l_uid = argument0[1];
    
    if (!ds_map_exists(global.dp_hub_holepunched_hx, l_uid))
    {
        dp_hub_holepunch_hx(argument0[3], argument0[4], global.dp_hub_link_hx[4]);
        ds_map_set(global.dp_hub_holepunched_hx, l_uid, 1);
    }
    
    var l_out = global.dp_out;
    var l_next = dp_net_netlink_new_hx(argument0[5], argument0[3], argument0[4]);
    dp_net_packet__auth_hx(l_out, -2);
    dp_net_netlink_send_hx(l_next, l_out);
    dp_net_netlink_destroy_hx(l_next);
}

function dp_lobby_open_hx()
{
    global.dp_lobby_is_active = 1;
    var l_this1 = global.dp_lobby_on_start;
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1();
}

function dp_lobby_close()
{
    if (global.dp_net_is_online_hx)
    {
        dp_link_clear_hx(1);
        
        if (global.dp_hub_is_active)
        {
            if (dp_get_is_server())
                dp_hub_host_stop();
            
            global.dp_net_server_link_hx = undefined;
            global.dp_net_server_socket_hx = undefined;
            
            if (!global.dp_hub_is_searching)
                dp_hub_refresh_entries();
        }
        
        dp_net_reset_hx();
        dp_player_reset_hx();
    }
    
    if (global.dp_has_steam)
    {
        dp_steam_lobby_leave();
        
        if (global.dp_hub_is_active && !global.dp_hub_is_searching)
            dp_steam_lobbylist_request(global.dp_hub_distance_filter);
    }
    
    global.dp_lobby_is_active = 0;
    global.dp_lobby_is_locked = 0;
    global.dp_local_uid = 0;
}

function dp_lobby_reset_hx()
{
    if (global.dp_lobby_is_active)
        dp_lobby_close();
    
    global.dp_lobby_allow_viewers = 0;
    global.dp_lobby_auto_input_delay_disabled_hx = 0;
}

function dp_lobby_update_auto_delay_hx()
{
    if (dp_get_is_server() && (global.dp_current_frame % global.dp_framerate) == 0)
    {
        var l_ok;
        
        if (global.dp_flow_is_active)
            l_ok = global.dp_flow_auto_input_delay;
        else
            l_ok = global.dp_lobby_auto_input_delay && !global.dp_lobby_auto_input_delay_disabled_hx && !global.dp_lobby_is_locked;
        
        if (l_ok)
        {
            var l_n = ds_list_size(global.dp_player_list_hx);
            var l_mtt = 0;
            
            for (var l_i = 0; l_i < l_n; l_i++)
            {
                var l_att = dp_player_get_att(l_i);
                
                if (l_att > l_mtt)
                    l_mtt = l_att;
            }
            
            if (l_mtt > 0)
            {
                var l_newDelay = floor((l_mtt / (2000 / global.dp_framerate)) + 0.85);
                var l_f = global.dp_lobby_on_auto_delay;
                
                if (l_f != undefined && l_f >= 0)
                    l_newDelay = global.dp_lobby_on_auto_delay(l_newDelay, l_mtt >> 1);
                
                if (global.dp_flow_delay_hx != l_newDelay)
                {
                    dp_lobby_set_input_delay(l_newDelay);
                    global.dp_lobby_auto_input_delay_disabled_hx = 0;
                }
            }
        }
    }
}

function dp_lobby_update_hx()
{
    if (!global.dp_lobby_is_active)
        return 0;
    
    dp_lobby_update_auto_delay_hx();
    var l_tt = current_time - global.dp_time_offset - global.dp_lobby_timeout;
    
    if (dp_get_is_server())
    {
        var l_delCount = 0;
        var l_delArray = undefined;
        var l__g_list = global.dp_link_list_hx;
        var l__g_index = 0;
        
        while (l__g_index < ds_list_size(l__g_list))
        {
            var l_link = ds_list_find_value(l__g_list, l__g_index++);
            
            if (l_link[27] >= l_tt)
                continue;
            
            if (l_delCount == 0)
                l_delArray = [];
            
            array_set(l_delArray, l_delCount++, l_link);
        }
        
        var l_delIter = 0;
        var l__g1 = l_delCount;
        
        while (l_delIter < l__g1)
        {
            var l_link = l_delArray[l_delIter];
            dp_net_netlink_destroy_hx(l_link, 1, 238);
            dp_link_drop(l_link[1]);
            var l_slot = 0;
            var l__g3 = dp_player_count_total();
            
            while (l_slot < l__g3)
            {
                if (dp_player_get_uid(l_slot) != l_link[1])
                {
                    l_slot++;
                    continue;
                }
                
                dp_player_release(l_slot);
                l_slot++;
            }
            
            l_delIter++;
        }
    }
    else if (global.dp_net_server_link_hx != undefined && global.dp_net_server_link_hx[27] < l_tt)
    {
        dp_net_client_handle_error_hx(global.dp_net_server_link_hx, 238);
    }
}

function dp_lobby_init_hx()
{
}

function dp_lobby_input_delay_sufficient()
{
    var l_n = dp_player_count_total();
    var l_r = (1000 / global.dp_framerate) * global.dp_flow_delay_hx * 2;
    
    for (var l_i = 0; l_i < l_n; l_i++)
    {
        if (dp_player_get_rtt(l_i) > l_r)
            return 0;
    }
    
    return 1;
}

function dp_lobby_set_input_delay(argument0)
{
    if (!dp_get_is_server())
        return 0;
    
    if (dp_player_count_remote() > 0 && global.dp_flow_rollback_frames <= 0)
    {
        if (argument0 < 1)
            argument0 = 1;
    }
    else if (argument0 < 0)
    {
        argument0 = 0;
    }
    
    if (global.dp_replay_is_playing)
    {
        if (argument0 < global.dp_replay_file_delay_hx)
            argument0 = global.dp_replay_file_delay_hx;
    }
    
    if (argument0 > global.dp_lobby_max_input_delay)
        argument0 = global.dp_lobby_max_input_delay;
    
    if (global.dp_flow_is_active)
        return dp_flow_change_delay_hx(argument0);
    
    if (global.dp_flow_delay_hx == argument0)
        return 1;
    
    var l_out = global.dp_out;
    dp_net_packet__delay_change_write_hx(l_out, argument0);
    dp_link_send_hx(l_out);
    global.dp_lobby_auto_input_delay_disabled_hx = 1;
    global.dp_flow_delay_hx = argument0;
    return 1;
}

function dp_lobby_get_slot_count()
{
    return ds_list_size(global.dp_player_list_hx);
}

function dp_lobby_set_slot_count(argument0)
{
    var l_curr = dp_lobby_get_slot_count();
    
    if (global.dp_net_is_online_hx && !dp_get_is_server())
        return l_curr;
    
    if (argument0 < global.dp_lobby_slot_count_min)
        argument0 = global.dp_lobby_slot_count_min;
    
    if (argument0 > global.dp_lobby_slot_count_max)
        argument0 = global.dp_lobby_slot_count_max;
    
    if (l_curr == argument0)
        return argument0;
    
    dp_player_set_count(argument0);
    var l_out = global.dp_out;
    dp_net_packet__slot_count_hx(l_out, argument0);
    dp_link_send_hx(l_out);
    return dp_lobby_get_slot_count();
}

function dp_lobby_send_message(argument0, argument1)
{
    var l_player = (argument1 != undefined) ? argument1 : dp_player_find_local();
    var l_out = global.dp_out;
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 253);
    
    if (l_player >= 0)
        buffer_write(l_out, buffer_u8, l_player);
    else
        buffer_write(l_out, buffer_u8, 255);
    
    buffer_write(l_out, buffer_string, argument0);
    dp_link_send_hx(l_out);
    var l_this1 = global.dp_lobby_on_message;
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1(argument0, l_player, global.dp_local_uid);
}

function dp_lobby_send_buffer(argument0, argument1, argument2)
{
    var l_length1 = (argument1 != undefined) ? argument1 : buffer_tell(argument0);
    var l_player1 = (argument2 != undefined) ? argument2 : dp_player_find_local();
    var l_out = global.dp_out;
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 254);
    
    if (l_player1 >= 0)
        buffer_write(l_out, buffer_u8, l_player1);
    else
        buffer_write(l_out, buffer_u8, 255);
    
    buffer_write(l_out, buffer_u32, l_length1);
    dp_buffer_write_buffer(l_out, argument0, l_length1);
    dp_link_send_hx(l_out);
    var l_pos = buffer_tell(argument0);
    buffer_seek(argument0, buffer_seek_start, 0);
    var l_this1 = global.dp_lobby_on_buffer;
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1(argument0, l_length1, l_player1, global.dp_local_uid);
    
    buffer_seek(argument0, buffer_seek_start, l_pos);
}

function dp_lobby_send_buffer_to(argument0, argument1, argument2, argument3)
{
    var l_length1 = (argument2 != undefined) ? argument2 : buffer_tell(argument1);
    var l_sender1 = (argument3 != undefined) ? argument3 : dp_player_find_local();
    var l_out = global.dp_out;
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 254);
    
    if (l_sender1 >= 0)
        buffer_write(l_out, buffer_u8, l_sender1);
    else
        buffer_write(l_out, buffer_u8, 255);
    
    buffer_write(l_out, buffer_u32, l_length1);
    dp_buffer_write_buffer(l_out, argument1, l_length1);
    
    if (argument0 != global.dp_local_uid)
    {
        var l_link = ds_map_find_value(global.dp_link_map_hx, argument0);
        
        if (l_link != undefined)
            dp_net_netlink_send_hx(l_link, l_out);
        else
            return 0;
    }
    
    if (argument0 == global.dp_local_uid)
    {
        var l_this1 = global.dp_lobby_on_buffer;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1(argument1, l_length1, l_sender1, global.dp_local_uid);
    }
    
    return 1;
}

function dp_lobby_show_invite_overlay()
{
    if (global.dp_has_steam)
        return dp_steam_lobby_show_invite_overlay();
    
    return 0;
}

function dp_host(argument0, argument1 = "")
{
    dp_reset();
    
    if (argument0 >= 0)
    {
        if (!dp_net_host_hx(argument0))
            return 0;
        
        global.dp_net_password = argument1;
    }
    else
    {
        global.dp_net_is_online_hx = 0;
    }
    
    dp___host_conf_hx(argument0 >= 0);
    return 1;
}

function dp___host_conf_hx(argument0, argument1 = -1)
{
    if (argument1 < 0)
        argument1 = global.dp_lobby_slot_count_default;
    
    global.dp_net_is_online_hx = argument0;
    global.dp_net_is_server_hx = 1;
    global.dp_net_server_link_hx = undefined;
    global.dp_flow_delay_hx = argument0 ? 1 : 0;
    global.dp_uid_next = 1;
    global.dp_local_uid = dp_uid_create();
    var l_p = dp_player_new_hx();
    array_set(l_p, 1, global.dp_local_uid);
    array_set(l_p, 2, global.dp_player_local_alias);
    ds_list_add(global.dp_player_list_hx, l_p);
    dp_player_set_count(argument1);
    dp_lobby_open_hx();
    var l_online1 = argument0;
}

function dp_join(argument0, argument1, argument2 = "")
{
    dp_reset();
    global.dp_net_password = argument2;
    return dp_net_join_hx(argument0, argument1);
}

function dp_leave()
{
    global.dp_net_is_online_hx = 0;
    dp_net_reset_hx();
    var l_p = 0;
    var l__g1 = dp_player_count_total();
    
    while (l_p < l__g1)
    {
        if (dp_player_is_remote(l_p))
            dp_player_drop(l_p);
        
        l_p++;
    }
    
    if (!global.dp_flow_is_active && global.dp_lobby_is_active)
        dp_lobby_close();
}

function dp_join_hub()
{
    dp_reset();
    global.dp_net_password = "";
    
    if (global.dp_has_steam)
    {
        global.dp_net_is_online_hx = 1;
        global.dp_hub_is_active = 1;
        dp_hub_refresh_entries();
        return 1;
    }
    
    return dp_net_join_hx(global.dp_hub_url, global.dp_hub_port);
}

function dp_start()
{
    var l_len = dp_player_count_total();
    var l_hasRemote = 0;
    l_hasRemote = ds_list_size(global.dp_link_list_hx) > 0;
    
    if (!dp_get_is_server())
        return 0;
    
    var l_noEmptySlots = !global.dp_lobby_allow_empty_slots;
    
    for (l_i = 0; l_i < l_len; l_i++)
    {
        if (l_noEmptySlots && dp_player_is_empty(l_i))
        {
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "Can't start - slot #" + string(l_i) + " is empty.");
            
            return 0;
        }
        
        if (dp_player_is_remote(l_i))
        {
            if (dp_player_get_mtt(l_i) < 0)
            {
                var l_this1 = global.dp_lobby_on_message;
                var l_f = l_this1;
                
                if (l_f != undefined && l_f >= 0)
                    l_this1("Can't start with players not connected to each other.", -1, -2);
                
                return 0;
            }
        }
    }
    
    var l_replay = global.dp_replay_is_playing;
    
    if (!l_replay)
    {
        dp_core_randomize();
        global.dp_flow_initial_seed = (dp_core_random() * 2147483647) | 0;
    }
    
    if (!l_hasRemote)
    {
        if (!global.dp_lobby_auto_input_delay_disabled_hx)
            global.dp_flow_delay_hx = 0;
        
        if (!l_replay)
            global.dp_net_is_online_hx = 0;
        
        if (global.dp_debug_state)
            dp_debug_log_hx("State", "Starting in local mode.");
        
        if (global.dp_flow_sync_start)
            global.dp_flow_sync_start_flag_hx = 1;
        else
            dp_flow_start_hx();
        
        return 1;
    }
    
    var l_now = dp_Date_now();
    var l_pfx = global.dp_flow_dump_directory + "/" + string(date_get_year(l_now[1])) + "-";
    var l_i = (date_get_month(l_now[1]) - 1) + 1;
    
    if (l_i < 10)
        l_pfx += "0";
    
    l_pfx += (string(l_i) + "-");
    l_i = date_get_weekday(l_now[1]);
    
    if (l_i < 10)
        l_pfx += "0";
    
    l_pfx += (string(l_i) + "_");
    l_i = date_get_hour(l_now[1]);
    
    if (l_i < 10)
        l_pfx += "0";
    
    l_pfx += (string(l_i) + "-");
    l_i = date_get_minute(l_now[1]);
    
    if (l_i < 10)
        l_pfx += "0";
    
    l_pfx += (string(l_i) + "-");
    l_i = date_get_second(l_now[1]);
    
    if (l_i < 10)
        l_pfx += "0";
    
    l_pfx += string(l_i);
    global.dp_flow_dump_prefix = l_pfx;
    
    if (!dp_get_is_server())
        return 0;
    
    global.dp_net_server_start_offset_hx = current_time - global.dp_time_offset;
    var l_out = global.dp_out;
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 250);
    dp_link_send_hx(l_out);
    
    if (global.dp_debug_state)
        dp_debug_log_hx("State", "Sent start-packets.");
    
    dp_hub_close();
    return 1;
}

function dp_reset()
{
    global.dp_local_uid = 0;
    global.dp_uid_next = 1;
    dp_player_reset_hx();
    dp_lobby_reset_hx();
    dp_steam_reset_hx();
    global.dp_net_is_online_hx = 0;
    dp_net_reset_hx();
    dp_hub_reset_hx();
    dp_replay_reset_hx();
    global.dp_flow_delay_hx = 0;
    
    if (global.dp_flow_is_active)
        global.dp_flow_is_active = 0;
}

function dp_init_func_hx()
{
    dp_debug_init_hx();
    dp_player_init_hx();
    dp_input_init_hx();
    dp_lobby_init_hx();
    dp_net_init_hx();
    dp_hub_init_hx();
    
    if (global.dp_steam_is_active)
        dp_steam_init_hx();
}

function dp_net_update_hx()
{
    dp_net_adapters_adp_steam_wrap_update(global.dp_adapter);
    var l_link = global.dp_net_server_link_hx;
    
    if (global.dp_net_is_server_hx && l_link != undefined)
    {
        l_link = undefined;
        global.dp_net_server_link_hx = undefined;
    }
    
    if (l_link != undefined && l_link[14] && (current_time - global.dp_time_offset - l_link[27]) > global.dp_net_connect_timeout)
    {
        if (global.dp_hub_was_searching || global.dp_hub_is_searching)
        {
            ds_map_set(global.dp_hub_search_exclude_hx, global.dp_hub_search_endpoint_hx, 1);
            
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "Filtering " + global.dp_hub_search_endpoint_hx + " from search now.");
        }
        
        var l_this1 = global.dp_lobby_on_error;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1("connection_timeout", l_link[5], l_link[6]);
        
        dp_lobby_close();
    }
    
    dp_net_queue_update_hx();
    var l__g_list = global.dp_link_list_hx;
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
        dp_net_netlink_update_hx(ds_list_find_value(l__g_list, l__g_index++));
    
    var l__g1_list = global.dp_net_queue_list_hx;
    var l__g1_index = 0;
    
    while (l__g1_index < ds_list_size(l__g1_list))
        dp_net_netlink_update_hx(ds_list_find_value(l__g1_list, l__g1_index++));
}

function dp_net_join_hx(argument0, argument1, argument2)
{
    var l_skt = dp_net_adapters_adp_steam_wrap_join(global.dp_adapter, argument0, argument1);
    
    if (l_skt == undefined)
    {
        if (global.dp_debug_state)
            dp_debug_log_hx("State", "Failed to connect.");
        
        return 0;
    }
    
    var l_link = dp_net_netlink_new_hx(l_skt, argument0, argument1);
    array_set(l_link, 14, 1);
    var l_out = global.dp_out;
    dp_net_packet__auth_hx(l_out, -1);
    
    if (!dp_net_netlink_send_hx(l_link, l_out))
    {
        if (global.dp_debug_state)
            dp_debug_log_hx("State", "Failed to connect.");
        
        dp_net_adapters_adp_steam_wrap_destroy_socket(global.dp_adapter, l_skt);
        dp_net_netlink_destroy_hx(l_link);
        return 0;
    }
    
    global.dp_net_is_online_hx = 1;
    global.dp_net_is_server_hx = 0;
    global.dp_net_server_link_hx = l_link;
    ds_list_add(global.dp_link_list_hx, l_link);
    ds_map_set(global.dp_link_map_hx, array_get(l_link, 1), l_link);
    
    if (global.dp_debug_state)
        dp_debug_log_hx("State", "Connecting to " + dp_Std_stringify(argument0) + ":" + string(argument1) + "...");
    
    var l_this1 = global.dp_lobby_on_connect;
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1(argument0, argument1, argument2);
    
    return 1;
}

function dp_net_host_hx(argument0)
{
    var l_skt = dp_net_adapters_adp_steam_wrap_host(global.dp_adapter, argument0, 32);
    
    if (l_skt == undefined)
    {
        if (global.dp_debug_state)
            dp_debug_log_hx("State", "Couldn't bind server to port " + string(argument0) + ".");
        
        return 0;
    }
    
    global.dp_net_is_online_hx = 1;
    global.dp_net_is_server_hx = 1;
    global.dp_net_server_port_hx = argument0;
    global.dp_net_server_socket_hx = l_skt;
    
    if (global.dp_debug_state)
        dp_debug_log_hx("State", "Listening on port " + string(argument0));
    
    return 1;
}

function dp_net_pre_handle_hx(argument0, argument1)
{
    var l_del = 1;
    var l_mid = buffer_read(argument1, buffer_u8);
    
    switch (l_mid)
    {
        case 209:
            var l_taken = buffer_read(argument1, buffer_u8);
            var l_total = buffer_read(argument1, buffer_u8);
            
            if (global.dp_hub_is_active)
            {
                var l_entries = global.dp_hub_entries_hx;
                var l_i = 0;
                var l__g1 = ds_list_size(l_entries);
                
                while (l_i < l__g1)
                {
                    var l_entry = ds_list_find_value(l_entries, l_i);
                    
                    if (l_entry[3] == argument0[5] && l_entry[4] == argument0[6])
                    {
                        if (l_entry[7] != 0)
                        {
                            array_set(l_entry, 6, (current_time - global.dp_time_offset - l_entry[7]) | 0);
                            array_set(l_entry, 7, 0);
                            array_set(l_entry, 8, l_taken);
                            array_set(l_entry, 9, l_total);
                        }
                        
                        break;
                    }
                    
                    l_i++;
                }
            }
            
            break;
        
        case 240:
            l_del = !dp_net_queue_handle_hx(argument0, argument1);
            break;
        
        default:
            if (global.dp_debug_rel)
                dp_debug_log_hx("Rel", "#" + string(l_mid) + " is not a known initial packet type.");
    }
    
    if (l_del)
        dp_net_netlink_destroy_hx(argument0);
}

function dp_net_handle_hx(argument0, argument1, argument2, argument3, argument4, argument5)
{
    switch (argument0)
    {
        case 4:
            if (global.dp_debug_state)
                dp_debug_log_hx("State", dp_Std_stringify(argument1) + ":" + string(argument2) + " disconnected.");
            
            break;
        
        case 1:
            if (global.dp_hub_is_active)
            {
                l_link = global.dp_hub_link_hx;
                
                if (l_link != undefined && dp_net_netlink_is_hx(l_link, argument3, argument1, argument2))
                {
                    if (global.dp_debug_packets)
                        dp_debug_log_hx("Packet", dp_net_netlink_print_hx(l_link) + " : " + dp_net_packet_printer_proc_hx(argument4, buffer_tell(argument4), argument5));
                    
                    array_set(l_link, 32, 2);
                    dp_net_netlink_handle_hx(l_link, argument4, argument5);
                    return 0;
                }
            }
            
            var l_link = dp_link_find_endpoint_hx(argument1, argument2);
            
            if (l_link != undefined)
            {
                if (global.dp_debug_packets)
                    dp_debug_log_hx("Packet", dp_net_netlink_print_hx(l_link) + " : " + dp_net_packet_printer_proc_hx(argument4, buffer_tell(argument4), argument5));
                
                array_set(l_link, 32, 1);
                dp_net_netlink_handle_hx(l_link, argument4, argument5);
            }
            else
            {
                l_link = dp_net_netlink_new_hx(argument3, argument1, argument2);
                
                if (global.dp_debug_packets)
                    dp_debug_log_hx("Packet", dp_net_netlink_print_hx(l_link) + " : " + dp_net_packet_printer_proc_hx(argument4, buffer_tell(argument4), argument5));
                
                array_set(l_link, 32, 3);
                
                if (!dp_net_netlink_handle_hx(l_link, argument4, argument5))
                    dp_net_netlink_destroy_hx(l_link);
            }
            
            break;
        
        case 3:
            if (argument5 > 0)
            {
                var l_link = dp_link_find_endpoint_hx(argument1, argument2);
                
                if (l_link != undefined)
                {
                    array_set(l_link, 14, 0);
                    
                    if (global.dp_debug_state)
                        dp_debug_log_hx("State", "Connected to " + dp_net_netlink_print_hx(l_link));
                    
                    var l_out = global.dp_out;
                    dp_net_packet__auth_hx(l_out, -1);
                    dp_net_netlink_send_hx(l_link, l_out);
                }
                else
                {
                    if (global.dp_debug_state)
                        dp_debug_log_hx("State", "Connected to unknown (" + dp_Std_stringify(argument1) + ":" + string(argument2) + ")");
                    
                    dp_net_adapters_adp_steam_wrap_destroy_socket(global.dp_adapter, argument3);
                }
            }
            else
            {
                if (global.dp_debug_state)
                    dp_debug_log_hx("State", "Failed to connect to " + dp_Std_stringify(argument1) + ":" + string(argument2) + ".");
                
                dp_net_adapters_adp_steam_wrap_destroy_socket(global.dp_adapter, argument3);
            }
            
            break;
        
        case 2:
            var l_link = dp_net_netlink_new_hx(argument3, argument1, argument2);
            
            if (global.dp_debug_state)
                dp_debug_log_hx("State", dp_net_netlink_print_hx(l_link) + " is connecting...");
            
            ds_list_add(global.dp_net_queue_list_hx, l_link);
            break;
    }
}

function dp_net_reset_hx()
{
    global.dp_net_password = "";
    
    if (global.dp_net_server_link_hx != undefined)
        global.dp_net_server_link_hx = undefined;
    
    if (global.dp_net_server_socket_hx != undefined)
    {
        dp_net_adapters_adp_steam_wrap_destroy_server(global.dp_adapter, global.dp_net_server_socket_hx);
        global.dp_net_server_socket_hx = undefined;
    }
    
    global.dp_net_is_server_hx = 0;
    global.dp_net_server_start_offset_hx = 0;
    dp_link_clear_hx(1);
    var l__g_list = global.dp_net_queue_list_hx;
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
        dp_net_netlink_destroy_hx(ds_list_find_value(l__g_list, l__g_index++));
    
    ds_list_clear(global.dp_net_queue_list_hx);
}

function dp_net_init_hx()
{
    dp_link_init_hx();
    global.dp_net_queue_list_hx = ds_list_create();
}

function dp_player_new_hx()
{
    var this = [global.mt_dp_player];
    array_copy(this, 1, global.mq_dp_player, 1, 19);
    array_set(this, 19, undefined);
    array_set(this, 18, 0);
    array_set(this, 17, 1);
    array_set(this, 16, 0);
    array_set(this, 15, 0);
    array_set(this, 14, -1);
    array_set(this, 13, 1);
    array_set(this, 12, 0);
    array_set(this, 11, ds_list_create());
    array_set(this, 10, ds_list_create());
    array_set(this, 9, undefined);
    array_set(this, 8, undefined);
    array_set(this, 7, undefined);
    array_set(this, 6, dp_state_create_ext_hx());
    array_set(this, 5, dp_state_create_ext_hx());
    array_set(this, 4, ds_list_create());
    array_set(this, 3, undefined);
    array_set(this, 2, "");
    array_set(this, 1, -1);
    return this;
}

function dp_player_get_haxe_hx(argument0)
{
    if (global.dp_flow_is_active)
        return ds_list_find_value(global.dp_player_list_hx, argument0);
    else
        return ds_list_find_value(global.dp_player_async_hx, argument0);
}

function dp_player_get_active_players()
{
    return dp__player_active_player_iterator_new_hx(global.dp_player_list_hx);
}

function dp_player_set_count(argument0)
{
    var l_pl = global.dp_player_list_hx;
    var l_pn = ds_list_size(l_pl);
    
    while (l_pn > argument0)
    {
        var l_p = ds_list_find_value(l_pl, --l_pn);
        
        if (l_p != undefined)
            dp_player_destroy_hx(l_p);
        
        ds_list_delete(l_pl, l_pn);
    }
    
    while (l_pn < argument0)
    {
        ds_list_add(l_pl, undefined);
        l_pn++;
    }
    
    return argument0;
}

function dp_player_async_enable(argument0, argument1)
{
    if (argument0 < 0)
        return 0;
    
    while (ds_list_size(global.dp_player_async_hx) <= argument0)
        ds_list_add(global.dp_player_async_hx, undefined);
    
    var l_p = ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_p == undefined)
    {
        l_p = dp_player_new_hx();
        array_set(l_p, 7, dp_state_create_ext_hx());
        array_set(l_p, 8, dp_state_create_ext_hx());
        ds_list_set(global.dp_player_async_hx, argument0, l_p);
    }
    
    array_set(l_p, 3, argument1);
    return 1;
}

function dp_player_async_disable(argument0)
{
    if (argument0 < 0 || argument0 >= ds_list_size(global.dp_player_async_hx))
        return 0;
    
    var l_p = ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_p == undefined)
        return 1;
    
    dp_player_destroy_hx(l_p);
    ds_list_set(global.dp_player_async_hx, argument0, undefined);
    var l_n = ds_list_size(global.dp_player_async_hx);
    
    while (l_n > 0 && ds_list_find_value(global.dp_player_async_hx, l_n - 1) == undefined)
        ds_list_delete(global.dp_player_async_hx, --l_n);
    
    return 1;
}

function dp_player_reset_hx()
{
    var l_n = ds_list_size(global.dp_player_list_hx);
    
    for (var l_i = 0; l_i < l_n; l_i++)
    {
        if (ds_list_find_value(global.dp_player_list_hx, l_i) != undefined)
            dp_player_destroy_hx(ds_list_find_value(global.dp_player_list_hx, l_i));
    }
    
    ds_list_clear(global.dp_player_list_hx);
    l_n = ds_list_size(global.dp_player_async_hx);
    
    for (var l_i = 0; l_i < l_n; l_i++)
    {
        if (ds_list_find_value(global.dp_player_async_hx, l_i) != undefined)
            dp_player_destroy_hx(ds_list_find_value(global.dp_player_async_hx, l_i));
    }
    
    ds_list_clear(global.dp_player_async_hx);
    
    if (global.dp_player_on_reset == undefined)
    {
        dp_player_async_enable(0);
    }
    else
    {
        var l_this1 = global.dp_player_on_reset;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1();
    }
}

function dp_player_init_hx()
{
    global.dp_player_list_hx = ds_list_create();
    global.dp_player_async_hx = ds_list_create();
}

function dp_player_get_is_local(argument0)
{
    return argument0[1] == global.dp_local_uid;
}

function dp_player_get_is_remote(argument0)
{
    return argument0[1] != global.dp_local_uid;
}

function dp_player_destroy_hx(argument0)
{
    if (argument0[16])
    {
        if (global.dp_debug_state)
            dp_debug_log_hx("State", "Trying to destroy a Player for a second time");
        
        var l__g = 0;
        var l__g1 = haxe__call_stack_call_stack_impl__call_stack();
        
        while (l__g < array_length(l__g1))
        {
            var l_line = l__g1[l__g];
            l__g++;
            
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "from " + dp_Std_stringify(l_line));
        }
        
        return 0;
    }
    
    array_set(argument0, 16, 1);
    
    if (argument0[5] != undefined)
    {
        dp_state_deref_hx(argument0[5]);
        array_set(argument0, 5, undefined);
    }
    
    if (argument0[6] != undefined)
    {
        dp_state_deref_hx(argument0[6]);
        array_set(argument0, 6, undefined);
    }
    
    dp_player_destroy_states_hx(argument0);
    ds_list_destroy(argument0[4]);
    array_set(argument0, 4, undefined);
    ds_list_destroy(argument0[10]);
    array_set(argument0, 10, undefined);
    var l__g_list = argument0[11];
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
        buffer_delete(ds_list_find_value(l__g_list, l__g_index++));
    
    ds_list_destroy(argument0[11]);
    array_set(argument0, 11, undefined);
}

function dp_player_destroy_states_hx(argument0)
{
    var l_i = ds_list_size(argument0[4]);
    
    while (--l_i >= 0)
    {
        dp_state_deref_hx(ds_list_find_value(array_get(argument0, 4), l_i));
        ds_list_delete(argument0[4], l_i);
    }
    
    if (argument0[7] != undefined)
    {
        dp_state_deref_hx(argument0[7]);
        array_set(argument0, 7, undefined);
    }
    
    if (argument0[8] != undefined)
    {
        dp_state_deref_hx(argument0[8]);
        array_set(argument0, 8, undefined);
    }
    
    l_i = ds_list_size(argument0[11]);
    
    while (--l_i >= 0)
    {
        buffer_delete(ds_list_find_value(array_get(argument0, 11), l_i));
        ds_list_delete(argument0[11], l_i);
    }
    
    ds_list_clear(argument0[10]);
}

function dp_player_advance_hx(argument0, argument1)
{
    if (argument0[1] == global.dp_local_uid && global.dp_flow_is_normal)
    {
        dp_state_set_to_hx(argument0[5], argument0[6], 0);
        dp_state_poll_hx(argument0[6], argument0[3], argument1);
        array_set(array_get(argument0, 6), 9, global.dp_flow_current_seed_hx);
        array_set(argument0, 9, dp_state_clone_hx(argument0[6], 1));
        var l_seq0 = argument0[11];
        var l_seq1 = argument0[9][7];
        var l_n = ds_list_size(l_seq0);
        
        for (l_i = 0; l_i < l_n; l_i++)
            ds_list_add(l_seq1, ds_list_find_value(l_seq0, l_i));
        
        var l_i = l_n;
        
        while (--l_i >= 0)
            ds_list_delete(l_seq0, l_i);
        
        if (ds_list_size(argument0[10]) > 0)
        {
            array_set(array_get(argument0, 9), 6, ds_list_find_value(array_get(argument0, 10), 0));
            ds_list_delete(argument0[10], 0);
        }
        
        l_i = global.dp_flow_delay_delta_next_hx;
        
        if (l_i != 0)
        {
            ds_list_add(argument0[9][8], [3, l_i]);
            global.dp_flow_delay_delta_next_hx = 0;
        }
        
        ds_list_add(argument0[4], argument0[9]);
    }
    
    if (argument0[8] != undefined)
        dp_state_deref_hx(argument0[8]);
    
    array_set(argument0, 8, argument0[7]);
    array_set(argument0, 7, ds_list_find_value(array_get(argument0, 4), 0));
    ds_list_delete(argument0[4], 0);
}

function dp__player_active_player_iterator_new_hx(argument0)
{
    var this = [global.mt_dp__player_active_player_iterator];
    array_copy(this, 1, global.mq_dp__player_active_player_iterator, 1, 4);
    array_set(this, 1, argument0);
    array_set(this, 3, ds_list_size(this[1]));
    array_set(this, 2, -1);
    array_set(this, 4, undefined);
    return this;
}

function dp_player_count_total()
{
    return ds_list_size(global.dp_player_list_hx);
}

function dp_player_count_active()
{
    var l_r = 0;
    var l__g_list = global.dp_player_list_hx;
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
    {
        if (ds_list_find_value(l__g_list, l__g_index++) != undefined)
            l_r++;
    }
    
    return l_r;
}

function dp_player_count_local()
{
    var l_r = 0;
    var l__g_list = global.dp_player_list_hx;
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
    {
        var l_p = ds_list_find_value(l__g_list, l__g_index++);
        
        if (l_p != undefined && l_p[1] == global.dp_local_uid)
            l_r++;
    }
    
    return l_r;
}

function dp_player_count_remote()
{
    var l_r = 0;
    var l__g_list = global.dp_player_list_hx;
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
    {
        var l_p = ds_list_find_value(l__g_list, l__g_index++);
        
        if (l_p != undefined && l_p[1] != global.dp_local_uid)
            l_r++;
    }
    
    return l_r;
}

function dp_player_count_viewed()
{
    if (!global.dp_flow_is_active)
        return dp_player_count_local();
    
    var l_r = 0;
    var l__g_list = global.dp_player_list_hx;
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
    {
        var l_p = ds_list_find_value(l__g_list, l__g_index++);
        
        if (l_p != undefined && l_p[15])
            l_r++;
    }
    
    return l_r;
}

function dp_player_count_uid(argument0)
{
    var l_r = 0;
    var l__g_list = global.dp_player_list_hx;
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
    {
        var l_p = ds_list_find_value(l__g_list, l__g_index++);
        
        if (l_p != undefined && l_p[1] == argument0)
            l_r++;
    }
    
    return l_r;
}

function dp_player_count_sources()
{
    var l_l = global.dp_player_list_hx;
    var l_n = ds_list_size(l_l);
    var l_r = 0;
    
    for (var l_i = 0; l_i < l_n; l_i++)
    {
        var l_p = ds_list_find_value(l_l, l_i);
        
        if (l_p != undefined)
        {
            var l_uid = l_p[1];
            var l_k;
            
            for (l_k = 0; l_k < l_i; l_k++)
            {
                var l_q = ds_list_find_value(l_l, l_k);
                
                if (l_q != undefined && l_q[1] == l_uid)
                    break;
            }
            
            if (l_k >= l_i)
                l_r++;
        }
    }
    
    return l_r;
}

function dp_player_find_active(argument0 = 0)
{
    var l_pl = global.dp_player_list_hx;
    
    if (argument0 < 0)
        return -1;
    
    var l_pk = 0;
    var l__g1 = ds_list_size(l_pl);
    
    while (l_pk < l__g1)
    {
        if (ds_list_find_value(l_pl, l_pk) != undefined && --argument0 == -1)
            return l_pk;
        
        l_pk++;
    }
    
    return -1;
}

function dp_player_find_local(argument0 = 0)
{
    var l_pl = global.dp_player_list_hx;
    
    if (argument0 < 0)
        return -1;
    
    var l_pk = 0;
    var l__g1 = ds_list_size(l_pl);
    
    while (l_pk < l__g1)
    {
        var l_p = ds_list_find_value(l_pl, l_pk);
        
        if (l_p != undefined && l_p[1] == global.dp_local_uid && --argument0 == -1)
            return l_pk;
        
        l_pk++;
    }
    
    return -1;
}

function dp_player_find_remote(argument0 = 0)
{
    var l_pl = global.dp_player_list_hx;
    
    if (argument0 < 0)
        return -1;
    
    var l_pk = 0;
    var l__g1 = ds_list_size(l_pl);
    
    while (l_pk < l__g1)
    {
        var l_p = ds_list_find_value(l_pl, l_pk);
        
        if (l_p != undefined && l_p[1] != global.dp_local_uid && --argument0 == -1)
            return l_pk;
        
        l_pk++;
    }
    
    return -1;
}

function dp_player_find_viewed(argument0 = 0)
{
    if (!global.dp_flow_is_active)
    {
        if (argument0 == 0)
            return 0;
        else
            return -1;
    }
    
    var l_pl = global.dp_player_list_hx;
    
    if (argument0 < 0)
        return -1;
    
    var l_pk = 0;
    var l__g1 = ds_list_size(l_pl);
    
    while (l_pk < l__g1)
    {
        var l_p = ds_list_find_value(l_pl, l_pk);
        
        if (l_p != undefined && l_p[15] && --argument0 == -1)
            return l_pk;
        
        l_pk++;
    }
    
    return -1;
}

function dp_player_find_uid(argument0, argument1 = 0)
{
    var l_l = global.dp_player_list_hx;
    var l_n = ds_list_size(l_l);
    
    for (var l_i = 0; l_i < l_n; l_i++)
    {
        var l_p = ds_list_find_value(l_l, l_i);
        
        if (l_p != undefined && l_p[1] == argument0 && --argument1 == -1)
            return l_i;
    }
    
    return -1;
}

function dp_player_find_source(argument0 = 0)
{
    var l_l = global.dp_player_list_hx;
    var l_n = ds_list_size(l_l);
    
    for (var l_i = 0; l_i < l_n; l_i++)
    {
        var l_p = ds_list_find_value(l_l, l_i);
        
        if (l_p != undefined)
        {
            var l_uid = l_p[1];
            var l_k;
            
            for (l_k = 0; l_k < l_i; l_k++)
            {
                var l_q = ds_list_find_value(l_l, l_k);
                
                if (l_q != undefined && l_q[1] == l_uid)
                    break;
            }
            
            if (l_k >= l_i && --argument0 == -1)
                return l_uid;
        }
    }
    
    return 0;
}

function dp_player_is_empty(argument0)
{
    return ds_list_find_value(global.dp_player_list_hx, argument0) == undefined;
}

function dp_player_is_active(argument0)
{
    return ds_list_find_value(global.dp_player_list_hx, argument0) != undefined;
}

function dp_player_is_local(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    return l_p != undefined && l_p[1] == global.dp_local_uid;
}

function dp_player_is_remote(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    return l_p != undefined && l_p[1] != global.dp_local_uid;
}

function dp_player_is_viewed(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    return l_p != undefined && l_p[15];
}

function dp_player_is_server(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined)
    {
        if (dp_get_is_server())
            return l_p[1] == global.dp_local_uid;
        
        var l_q = ds_map_find_value(global.dp_link_map_hx, array_get(l_p, 1));
        
        if (l_q == undefined)
            return l_p[1] == global.dp_net_server_link_hx[1];
        else
            return dp_net_netlink_get_is_server(l_q);
    }
    
    return 0;
}

function dp_player_get_alias(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined)
        return l_p[2];
    else
        return "";
}

function dp_player_set_alias(argument0, argument1)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined && l_p[2] != argument1)
    {
        array_set(l_p, 2, argument1);
        
        if (global.dp_net_is_online_hx && l_p[1] == global.dp_local_uid)
        {
            var l_out = global.dp_out;
            dp_net_packet__slot_alias_hx(l_out, argument0, argument1);
            dp_link_send_hx(l_out);
        }
        
        return 1;
    }
    else
    {
        return 0;
    }
}

function dp_player_get_uid(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined)
        return l_p[1];
    else
        return 0;
}

function dp_player_get_rtt(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined && l_p[1] != global.dp_local_uid)
    {
        var l_link = ds_map_find_value(global.dp_link_map_hx, array_get(l_p, 1));
        
        if (l_link != undefined)
            return l_link[7];
    }
    
    return 0;
}

function dp_player_get_mtt(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined && l_p[1] != global.dp_local_uid)
    {
        var l_link = ds_map_find_value(global.dp_link_map_hx, array_get(l_p, 1));
        
        if (l_link != undefined)
            return l_link[8];
    }
    
    return 0;
}

function dp_player_get_att(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined && l_p[1] != global.dp_local_uid)
    {
        var l_link = ds_map_find_value(global.dp_link_map_hx, array_get(l_p, 1));
        
        if (l_link != undefined)
            return l_link[9];
    }
    
    return 0;
}

function dp_player_get_wait_time(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined)
        return l_p[12];
    else
        return 0;
}

function dp_player_get_time_since_last_packet(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p == undefined)
        return -1;
    
    var l_l = ds_map_find_value(global.dp_link_map_hx, array_get(l_p, 1));
    
    if (l_l == undefined)
        return -1;
    
    return current_time - global.dp_time_offset - l_l[27];
}

function dp_player_get_steam_id(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined)
    {
        var l_i = l_p[19];
        
        if (l_i != undefined)
            return l_i;
        
        if (l_p[1] != global.dp_local_uid)
        {
            var l_link = ds_map_find_value(global.dp_link_map_hx, array_get(l_p, 1));
            
            if (l_link != undefined)
                return dp_net_netlink_to_steam_id_hx(l_link);
        }
        else
        {
            return dp_steam_get_local_user_hx();
        }
    }
    
    return 0;
}

function dp_player_drop(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p == undefined)
        return 0;
    
    if (dp_get_is_server())
    {
        var l_uid = l_p[1];
        
        if (l_p[1] != global.dp_local_uid && dp_player_count_uid(l_uid) == 1)
            dp_link_drop(l_uid);
        
        dp_player_release(argument0);
        return 1;
    }
    else
    {
        return 0;
    }
}

function dp_player_occupy(argument0)
{
    if (global.dp_net_is_online_hx)
    {
        var l_out = global.dp_out;
        
        if (dp_get_is_server())
        {
            if (!dp_player_is_empty(argument0))
                dp_player_release(argument0);
            
            var l_p = dp_player_new_hx();
            array_set(l_p, 1, global.dp_local_uid);
            ds_list_set(global.dp_player_list_hx, argument0, l_p);
            var l_this1 = global.dp_player_on_change;
            var l_f = l_this1;
            
            if (l_f != undefined && l_f >= 0)
                l_this1(argument0);
            
            dp_net_packet__slot_update_hx(l_out, argument0);
            dp_link_send_hx(l_out);
            dp_player_set_alias(argument0, global.dp_player_local_alias);
        }
        else
        {
            buffer_seek(l_out, buffer_seek_start, 0);
            buffer_write(l_out, buffer_u8, 200);
            buffer_write(l_out, buffer_u8, argument0);
            dp_net_netlink_send_hx(global.dp_net_server_link_hx, l_out);
        }
    }
    else if (ds_list_find_value(global.dp_player_list_hx, argument0) == undefined)
    {
        var l_p = dp_player_new_hx();
        array_set(l_p, 1, global.dp_local_uid);
        array_set(l_p, 2, global.dp_player_local_alias);
        ds_list_set(global.dp_player_list_hx, argument0, l_p);
        var l_this1 = global.dp_player_on_change;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1(argument0);
    }
}

function dp_player_release(argument0)
{
    if (global.dp_net_is_online_hx)
    {
        var l_out = global.dp_out;
        
        if (dp_get_is_server())
        {
            l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
            
            if (l_p != undefined)
            {
                dp_player_destroy_hx(l_p);
                ds_list_set(global.dp_player_list_hx, argument0, undefined);
                var l_this1 = global.dp_player_on_change;
                var l_f = l_this1;
                
                if (l_f != undefined && l_f >= 0)
                    l_this1(argument0);
                
                dp_net_packet__slot_release_hx(l_out, argument0);
                dp_link_send_hx(l_out);
            }
        }
        else
        {
            dp_net_packet__slot_release_hx(l_out, argument0);
            var l_sl = global.dp_net_server_link_hx;
            
            if (l_sl != undefined)
                dp_net_netlink_send_hx(l_sl, l_out);
        }
        
        return 0;
    }
    
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined)
    {
        dp_player_destroy_hx(l_p);
        ds_list_set(global.dp_player_list_hx, argument0, undefined);
        var l_this1 = global.dp_player_on_change;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1(argument0);
    }
}

function dp_player_swap(argument0, argument1)
{
    if (argument0 < 0 || argument0 > ds_list_size(global.dp_player_list_hx))
        return 0;
    
    if (argument1 < 0 || argument1 > ds_list_size(global.dp_player_list_hx))
        return 0;
    
    if (argument0 == argument1)
        return 1;
    
    if (global.dp_net_is_online_hx)
    {
        var l_out = global.dp_out;
        buffer_seek(l_out, buffer_seek_start, 0);
        buffer_write(l_out, buffer_u8, 205);
        buffer_write(l_out, buffer_u8, argument0);
        buffer_write(l_out, buffer_u8, argument1);
        
        if (dp_get_is_server())
        {
            dp_link_send_hx(l_out);
        }
        else
        {
            var l_sl = global.dp_net_server_link_hx;
            
            if (l_sl != undefined)
                dp_net_netlink_send_hx(l_sl, l_out);
            
            return 1;
        }
    }
    
    var l_this1 = global.dp_player_list_hx;
    var l_p = ds_list_find_value(l_this1, argument0);
    ds_list_set(l_this1, argument0, ds_list_find_value(l_this1, argument1));
    ds_list_set(l_this1, argument1, l_p);
    l_this1 = global.dp_player_on_swap;
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1(argument0, argument1);
    
    return 1;
}

function dp_player_get_scheme(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined)
        return l_p[3];
    else
        return undefined;
}

function dp_player_set_scheme(argument0, argument1)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined && l_p[1] == global.dp_local_uid)
    {
        array_set(l_p, 3, argument1);
        return 1;
    }
    else
    {
        return 0;
    }
}

function dp_player_get_button_node(argument0, argument1)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (ds_map_exists(global.dp_button_map, argument1))
    {
        var l_i = ds_map_find_value(global.dp_button_map, argument1);
        
        if (l_p != undefined && l_p[1] == global.dp_local_uid)
        {
            var l_sch = l_p[3];
            
            if (l_sch != undefined)
                return l_sch[1][l_i];
        }
        
        return global.dp_button_nodes[l_i];
    }
    
    return undefined;
}

function dp_player_get_state_count(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined)
        return ds_list_size(l_p[4]);
    
    return 0;
}

function dp_player_get_state(argument0, argument1)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined && argument1 >= 0)
    {
        var l_states = l_p[4];
        
        if (argument1 < ds_list_size(l_states))
            return ds_list_find_value(l_states, argument1);
    }
    
    return undefined;
}

function dp_player_get_seed(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined)
        return l_p[7][9];
    
    return 0;
}

function dp_player_get_gamepad(argument0)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined)
        return l_p[14];
    
    return -1;
}

function dp_player_set_gamepad(argument0, argument1)
{
    var l_p = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_p != undefined && l_p[1] == global.dp_local_uid)
    {
        array_set(l_p, 14, argument1);
        return 1;
    }
    
    return 0;
}

function dp_get_players()
{
    return ds_list_size(global.dp_player_list_hx);
}

function dp_get_is_online()
{
    return global.dp_net_is_online_hx;
}

function dp_get_is_server()
{
    if (!global.dp_net_is_online_hx || ds_list_size(global.dp_link_list_hx) <= 0)
        return 1;
    
    if (global.dp_has_steam)
        return dp_steam_lobby_is_owner();
    
    return global.dp_net_is_server_hx;
}

function dp_get_is_playing()
{
    return global.dp_flow_is_active;
}

function dp_get_is_connecting()
{
    if (global.dp_has_steam && global.dp_steam_lobby_joining_lobby)
        return 1;
    
    if (global.dp_net_server_link_hx != undefined)
        return global.dp_net_server_link_hx[14];
    
    return 0;
}

function dp_get_delay()
{
    return global.dp_flow_delay_hx;
}

function dp_set_delay(argument0)
{
    dp_lobby_set_input_delay(argument0);
}

function dp_get_delay_ms()
{
    return round((dp_get_delay() * 1000) / global.dp_framerate);
}

function dp_set_delay_ms(argument0)
{
    dp_lobby_set_input_delay(ceil((argument0 * global.dp_framerate) / 1000));
    return argument0;
}

function dp_set_deactivation_mode(argument0)
{
}

function dp_set_pause_physics(argument0)
{
}

function dp_copy_path()
{
    var l_argc = parameter_count();
    
    if ((l_argc % 2) == 0)
    {
        var l_argc2 = (l_argc / 2) | 0;
        
        for (l_i = 0; l_i < l_argc2; l_i++)
        {
            if (parameter_string(l_i) != parameter_string(l_i + l_argc2))
                break;
        }
        
        if (l_i >= l_argc2)
            l_argc = l_argc2;
    }
    
    var l_index = 0;
    var l_r = "";
    var l_i = 0;
    
    while (l_i < l_argc)
    {
        var l_arg = parameter_string(l_i);
        
        if (string_pos("-id", l_arg) > 0)
        {
            l_index = dp_Std_parseInt(string_copy(l_arg, 4, string_length(l_arg) - 3));
            l_i++;
            continue;
        }
        
        if (l_r != "")
            l_r += " ";
        
        if (string_pos(" ", l_arg) > 0)
            l_arg = "\"" + l_arg + "\"";
        
        l_r += l_arg;
        l_i++;
    }
    
    if (string_pos("Runner.exe", parameter_string(0)) > 0 || string_pos("gm_ttt_", parameter_string(0)) > 0)
    {
        if (l_index == 0)
        {
            if (global.dp_has_steam)
                l_r = "\"C:\\Program Files\\Sandboxie\\Start.exe\" /box:SteamBox " + l_r;
        }
        
        l_r += (" -id" + string(l_index + 1));
        clipboard_set_text(l_r);
    }
    
    return l_index;
}

function dp_collections__dictionary_dictionary_impl__get(argument0, argument1, argument2)
{
    var l_r = ds_map_find_value(argument0, argument1);
    
    if (l_r == undefined)
        return argument2;
    else
        return l_r;
}

function dp_type_vector_clear(argument0, argument1)
{
    var l_i = array_length(argument0);
    
    while (--l_i >= 0)
        array_set(argument0, l_i, argument1);
}

function dp_flow_flow_rollback_handle_hx()
{
    var l_pl = global.dp_player_list_hx;
    var l_pn = ds_list_size(l_pl);
    var l_pc = dp_array_alloc(l_pn, 0);
    var l_adv = 0;
    
    for (var l_i = 0; l_i < l_pn; l_i++)
    {
        var l_p = ds_list_find_value(l_pl, l_i);
        
        if (l_p != undefined)
        {
            var l_ns = ds_list_size(l_p[4]);
            var l_np = l_p[18];
            var l_nd = (l_ns < l_np) ? l_ns : l_np;
            array_set(l_pc, l_i, l_nd);
            
            if (l_nd > l_adv)
                l_adv = l_nd;
        }
    }
    
    if (l_adv == 0)
        return 0;
    
    if (l_adv >= ds_list_size(global.dp_flow_flow_rollback_rollback_states_hx))
        return 0;
    
    if (global.dp_debug_state)
        dp_debug_log_hx("State", string(l_adv) + " frame rollback");
    
    global.dp_flow_is_rollback = 1;
    global.dp_flow_is_normal = 0;
    
    if (!global.dp_flow_rollback_force_load)
        dp_flow_state_load_hx(ds_list_find_value(global.dp_flow_flow_rollback_rollback_states_hx, l_adv));
    
    var l_ps = array_get(ds_list_find_value(global.dp_flow_flow_rollback_rollback_states_hx, l_adv), 2);
    
    for (var l_i = 0; l_i < l_pn; l_i++)
    {
        if (l_pc[l_i] > 0)
        {
            var l_p = ds_list_find_value(l_pl, l_i);
            
            if (l_p[7] != undefined)
                dp_state_deref_hx(l_p[7]);
            
            array_set(l_p, 7, l_ps[l_i]);
        }
    }
    
    for (var l_k = 0; l_k < l_adv; l_k++)
    {
        l_ps = array_get(ds_list_find_value(global.dp_flow_flow_rollback_rollback_states_hx, l_adv - 1 - l_k), 2);
        
        for (var l_i = 0; l_i < l_pn; l_i++)
        {
            if (l_pc[l_i] > 0)
            {
                array_set(l_pc, l_i, array_get(l_pc, l_i) - 1);
                array_set(ds_list_find_value(l_pl, l_i), 18, array_get(ds_list_find_value(l_pl, l_i), 18) - 1);
                dp_state_deref_hx(l_ps[l_i]);
                array_set(l_ps, l_i, undefined);
            }
            else
            {
                ds_list_insert(array_get(ds_list_find_value(l_pl, l_i), 4), l_k, l_ps[l_i]);
            }
        }
    }
    
    for (var l_k = 0; l_k < l_adv; l_k++)
    {
        dp_flow_state_destroy_hx(ds_list_find_value(global.dp_flow_flow_rollback_rollback_states_hx, 0), 0);
        ds_list_delete(global.dp_flow_flow_rollback_rollback_states_hx, 0);
    }
    
    for (var l_k = 0; l_k < l_adv; l_k++)
        dp_flow_next_hx();
    
    global.dp_flow_is_rollback = 0;
    global.dp_flow_is_normal = 1;
}

function dp_flow_state_new_hx()
{
    var this = [global.mt_dp_flow_state];
    array_copy(this, 1, global.mq_dp_flow_state, 1, 5);
    array_set(this, 1, undefined);
    array_set(this, 2, dp_array_alloc(ds_list_size(global.dp_player_list_hx)));
    return this;
}

function dp_flow_state_destroy_hx(argument0, argument1)
{
    ds_list_add(global.dp_flow_state_state_cache_hx, argument0[1]);
    
    if (argument1)
    {
        var l_ps = argument0[2];
        var l_i = 0;
        var l__g1 = array_length(l_ps);
        
        while (l_i < l__g1)
        {
            var l_q = l_ps[l_i];
            
            if (l_q != undefined)
                dp_state_deref_hx(l_q);
            
            l_i++;
        }
    }
}

function dp_flow_state_save_hx(argument0)
{
    var l_rbb = global.dp_flow_state_state_cache_hx;
    var l_buf;
    
    if (ds_list_size(l_rbb) > 0)
    {
        l_buf = ds_list_find_value(l_rbb, 0);
        buffer_seek(l_buf, buffer_seek_start, 0);
        ds_list_delete(l_rbb, 0);
    }
    else
    {
        l_buf = dp_make_buffer(1024);
    }
    
    var l_this1 = global.dp_flow_on_state_save;
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1(l_buf);
    
    array_set(argument0, 1, l_buf);
    var l_pl = global.dp_player_list_hx;
    var l_pn = ds_list_size(l_pl);
    var l_ps = dp_array_alloc(l_pn, undefined);
    
    for (var l_i = 0; l_i < l_pn; l_i++)
    {
        var l_p = ds_list_find_value(l_pl, l_i);
        
        if (l_p != undefined)
            array_set(l_ps, l_i, dp_state_ref_hx(l_p[7]));
    }
    
    array_set(argument0, 2, l_ps);
    array_set(argument0, 3, global.dp_current_frame);
    array_set(argument0, 4, global.dp_current_time);
    array_set(argument0, 5, global.dp_current_time_acc_hx);
}

function dp_flow_state_load_hx(argument0)
{
    global.dp_current_frame = argument0[3];
    global.dp_current_time = argument0[4];
    global.dp_current_time_acc_hx = argument0[5];
    var l_buf = argument0[1];
    var l_len = buffer_tell(l_buf);
    buffer_seek(l_buf, buffer_seek_start, 0);
    var l_this1 = global.dp_flow_on_state_load;
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1(l_buf, l_len);
    
    buffer_seek(l_buf, buffer_seek_start, 0);
}

function dp_axis_value(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q = l_slot[7];
    
    if (l_q == undefined)
        return 0;
    
    var l_i = ds_map_find_value(global.dp_axis_map, argument1);
    
    if (l_i == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known axis.");
        
        return 0;
    }
    
    var l_r = l_q[2][l_i];
    
    if (abs(l_r) >= global.dp_axis_deadzones[l_i])
        return l_r;
    else
        return 0;
}

function dp_axis_previous(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q = l_slot[8];
    
    if (l_q == undefined)
        return 0;
    
    var l_i = ds_map_find_value(global.dp_axis_map, argument1);
    
    if (l_i == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known axis.");
        
        return 0;
    }
    
    var l_r = l_q[2][l_i];
    
    if (abs(l_r) >= global.dp_axis_deadzones[l_i])
        return l_r;
    else
        return 0;
}

function dp_axis_value_async(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q = l_slot[6];
    
    if (l_q == undefined)
        return 0;
    
    var l_i = ds_map_find_value(global.dp_axis_map, argument1);
    
    if (l_i == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known axis.");
        
        return 0;
    }
    
    var l_r = l_q[2][l_i];
    
    if (abs(l_r) >= global.dp_axis_deadzones[l_i])
        return l_r;
    else
        return 0;
}

function dp_axis_previous_async(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q = l_slot[5];
    
    if (l_q == undefined)
        return 0;
    
    var l_i = ds_map_find_value(global.dp_axis_map, argument1);
    
    if (l_i == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known axis.");
        
        return 0;
    }
    
    var l_r = l_q[2][l_i];
    
    if (abs(l_r) >= global.dp_axis_deadzones[l_i])
        return l_r;
    else
        return 0;
}

function dp_axis_define(argument0, argument1 = "", argument2 = "", argument3 = 0.5, argument4 = 100)
{
    if (ds_map_exists(global.dp_axis_map, argument0))
    {
        throw dp_haxe_Exception_thrown("An axis with id '" + dp_Std_stringify(argument0) + "' already exists!");
    }
    else
    {
        var l_i = global.dp_axis_count++;
        ds_map_set(global.dp_axis_map, argument0, l_i);
        array_set(global.dp_axis_ids, l_i, argument0);
        
        if (argument1 == "")
            argument1 = "Axis " + string(l_i + 1);
        
        array_set(global.dp_axis_names, l_i, argument1);
        array_set(global.dp_axis_names_lq, l_i, string_lower(argument1));
        array_set(global.dp_axis_deadzones, l_i, argument3);
        array_set(global.dp_axis_nodes, l_i, dp_input_node_create(argument2));
        array_set(global.dp_axis_steps, l_i, argument4);
        array_set(global.dp_axis_is_async, l_i, 0);
    }
}

function dp_axis_define_async(argument0, argument1 = 1)
{
    if (ds_map_exists(global.dp_axis_map, argument0))
        array_set(global.dp_axis_is_async, ds_map_find_value(global.dp_axis_map, argument0), argument1);
    else
        throw dp_haxe_Exception_thrown("There is no axis with id \"" + dp_Std_stringify(argument0) + "\"!");
}

function dp_axis_get_index(argument0)
{
    if (ds_map_exists(global.dp_axis_map, argument0))
        return ds_map_find_value(global.dp_axis_map, argument0);
    else
        return -1;
}

function dp_axis_get_name(argument0)
{
    if (ds_map_exists(global.dp_axis_map, argument0))
        return array_get(global.dp_axis_names, ds_map_find_value(global.dp_axis_map, argument0));
    else
        return "";
}

function dp_axis_set_name(argument0, argument1)
{
    if (ds_map_exists(global.dp_axis_map, argument0))
    {
        var l_i = ds_map_find_value(global.dp_axis_map, argument0);
        array_set(global.dp_axis_names, l_i, argument1);
        array_set(global.dp_axis_names_lq, l_i, string_lower(argument1));
    }
}

function dp_axis_get_input(argument0)
{
    if (ds_map_exists(global.dp_axis_map, argument0))
        return array_get(array_get(global.dp_axis_nodes, ds_map_find_value(global.dp_axis_map, argument0)), 2);
    else
        return "";
}

function dp_axis_set_input(argument0, argument1)
{
    if (ds_map_exists(global.dp_axis_map, argument0))
        dp_input_node_set_expr(array_get(global.dp_axis_nodes, ds_map_find_value(global.dp_axis_map, argument0)), argument1);
}

function dp_axis_get_node(argument0)
{
    if (ds_map_exists(global.dp_axis_map, argument0))
        return array_get(global.dp_axis_nodes, ds_map_find_value(global.dp_axis_map, argument0));
    else
        return undefined;
}

function dp_axis_find(argument0, argument1 = 1)
{
    var l_n = global.dp_axis_count;
    
    if (argument1)
    {
        argument0 = string_lower(argument0);
        
        for (var l_i = 0; l_i < l_n; l_i++)
        {
            if (global.dp_axis_names_lq[l_i] == argument0)
                return global.dp_axis_ids[l_i];
        }
    }
    else
    {
        for (var l_i = 0; l_i < l_n; l_i++)
        {
            if (global.dp_axis_names[l_i] == argument0)
                return global.dp_axis_ids[l_i];
        }
    }
    
    return undefined;
}

function dp_button_check(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q = l_slot[7];
    
    if (l_q == undefined)
        return 0;
    
    var l_i = ds_map_find_value(global.dp_button_map, argument1);
    
    if (l_i == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known button.");
        
        return 0;
    }
    
    return l_q[1][l_i];
}

function dp_button_previous(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q = l_slot[8];
    
    if (l_q == undefined)
        return 0;
    
    var l_i = ds_map_find_value(global.dp_button_map, argument1);
    
    if (l_i == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known button.");
        
        return 0;
    }
    
    return l_q[1][l_i];
}

function dp_button_pressed(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q1 = l_slot[7];
    
    if (l_q1 == undefined)
        return 0;
    
    var l_q0 = l_slot[8];
    
    if (l_q0 == undefined)
        return 0;
    
    var l_ii = ds_map_find_value(global.dp_button_map, argument1);
    
    if (l_ii == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known button.");
        
        return 0;
    }
    
    return l_q1[1][l_ii] && !l_q0[1][l_ii];
}

function dp_button_released(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q1 = l_slot[8];
    
    if (l_q1 == undefined)
        return 0;
    
    var l_q0 = l_slot[7];
    
    if (l_q0 == undefined)
        return 0;
    
    var l_ii = ds_map_find_value(global.dp_button_map, argument1);
    
    if (l_ii == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known button.");
        
        return 0;
    }
    
    return l_q1[1][l_ii] && !l_q0[1][l_ii];
}

function dp_button_check_async(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q = l_slot[6];
    
    if (l_q == undefined)
        return 0;
    
    var l_i = ds_map_find_value(global.dp_button_map, argument1);
    
    if (l_i == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known button.");
        
        return 0;
    }
    
    return l_q[1][l_i];
}

function dp_button_previous_async(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q = l_slot[5];
    
    if (l_q == undefined)
        return 0;
    
    var l_i = ds_map_find_value(global.dp_button_map, argument1);
    
    if (l_i == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known button.");
        
        return 0;
    }
    
    return l_q[1][l_i];
}

function dp_button_pressed_async(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q1 = l_slot[6];
    
    if (l_q1 == undefined)
        return 0;
    
    var l_q0 = l_slot[5];
    
    if (l_q0 == undefined)
        return 0;
    
    var l_ii = ds_map_find_value(global.dp_button_map, argument1);
    
    if (l_ii == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known button.");
        
        return 0;
    }
    
    return l_q1[1][l_ii] && !l_q0[1][l_ii];
}

function dp_button_released_async(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q1 = l_slot[5];
    
    if (l_q1 == undefined)
        return 0;
    
    var l_q0 = l_slot[6];
    
    if (l_q0 == undefined)
        return 0;
    
    var l_ii = ds_map_find_value(global.dp_button_map, argument1);
    
    if (l_ii == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known button.");
        
        return 0;
    }
    
    return l_q1[1][l_ii] && !l_q0[1][l_ii];
}

function dp_button_define(argument0, argument1 = "", argument2 = "")
{
    if (ds_map_exists(global.dp_button_map, argument0))
    {
        throw dp_haxe_Exception_thrown("A button with id '" + dp_Std_stringify(argument0) + "' already exists!");
    }
    else
    {
        var l_i = global.dp_button_count++;
        ds_map_set(global.dp_button_map, argument0, l_i);
        array_set(global.dp_button_ids, l_i, argument0);
        
        if (argument1 == "")
            argument1 = "Button " + string(l_i + 1);
        
        array_set(global.dp_button_names, l_i, argument1);
        array_set(global.dp_button_names_lq, l_i, string_lower(argument1));
        array_set(global.dp_button_nodes, l_i, dp_input_node_create(argument2));
        array_set(global.dp_button_is_async, l_i, 0);
    }
}

function dp_button_define_async(argument0, argument1 = 1)
{
    if (ds_map_exists(global.dp_button_map, argument0))
        array_set(global.dp_button_is_async, ds_map_find_value(global.dp_button_map, argument0), argument1);
    else
        throw dp_haxe_Exception_thrown("There is no button with id \"" + dp_Std_stringify(argument0) + "\"!");
}

function dp_button_get_index(argument0)
{
    if (ds_map_exists(global.dp_button_map, argument0))
        return ds_map_find_value(global.dp_button_map, argument0);
    else
        return -1;
}

function dp_button_get_name(argument0)
{
    if (ds_map_exists(global.dp_button_map, argument0))
        return array_get(global.dp_button_names, ds_map_find_value(global.dp_button_map, argument0));
    else
        return "";
}

function dp_button_set_name(argument0, argument1)
{
    if (ds_map_exists(global.dp_button_map, argument0))
    {
        var l_i = ds_map_find_value(global.dp_button_map, argument0);
        array_set(global.dp_button_names, l_i, argument1);
        array_set(global.dp_button_names_lq, l_i, string_lower(argument1));
    }
}

function dp_button_get_input(argument0)
{
    if (ds_map_exists(global.dp_button_map, argument0))
        return array_get(array_get(global.dp_button_nodes, ds_map_find_value(global.dp_button_map, argument0)), 2);
    else
        return "";
}

function dp_button_set_input(argument0, argument1)
{
    if (ds_map_exists(global.dp_button_map, argument0))
        dp_input_node_set_expr(array_get(global.dp_button_nodes, ds_map_find_value(global.dp_button_map, argument0)), argument1);
}

function dp_button_find(argument0, argument1 = 1)
{
    var l_n = global.dp_button_count;
    
    if (argument1)
    {
        argument0 = string_lower(argument0);
        
        for (var l_i = 0; l_i < l_n; l_i++)
        {
            if (global.dp_button_names_lq[l_i] == argument0)
                return global.dp_button_ids[l_i];
        }
    }
    else
    {
        for (var l_i = 0; l_i < l_n; l_i++)
        {
            if (global.dp_button_names[l_i] == argument0)
                return global.dp_button_ids[l_i];
        }
    }
    
    return undefined;
}

function dp_gamepad_get_count()
{
    return gamepad_get_device_count();
}

function dp_gamepad_is_connected_hx(argument0)
{
    return gamepad_is_connected(argument0);
}

function dp_gamepad_button_hx(argument0, argument1)
{
    if (global.dp_gamepad_is_enabled)
    {
        if (argument1 >= 0 && argument1 < 10)
        {
            if (gamepad_button_check(argument0, global.dp_input_adapter_gamepad_buttons[argument1]))
                return 1;
            else
                return 0;
        }
        else
        {
            return 0;
        }
    }
    else
    {
        return 0;
    }
}

function dp_gamepad_axis_hx(argument0, argument1)
{
    if (global.dp_gamepad_is_enabled)
    {
        var l_r = 0;
        
        switch (argument1)
        {
            case 2:
                l_r = gamepad_axis_value(argument0, gp_axisrh);
                break;
            
            case 3:
                l_r = gamepad_axis_value(argument0, gp_axisrv);
                break;
            
            case 5:
                if (gamepad_button_check(argument0, gp_padu))
                    l_r--;
                
                if (gamepad_button_check(argument0, gp_padd))
                    l_r++;
                
                break;
            
            case 4:
                if (gamepad_button_check(argument0, gp_padl))
                    l_r--;
                
                if (gamepad_button_check(argument0, gp_padr))
                    l_r++;
                
                break;
            
            case 1:
                l_r = gamepad_axis_value(argument0, gp_axislv);
                break;
            
            case 0:
                l_r = gamepad_axis_value(argument0, gp_axislh);
                break;
        }
        
        return l_r;
    }
    else
    {
        return 0;
    }
}

function dp_input_key_get_code(argument0)
{
    return dp_collections__dictionary_dictionary_impl__get(global.dp_input_key_codes_hx, argument0, -1);
}

function dp_input_key_get_name(argument0)
{
    var l_r = dp_collections__dictionary_dictionary_impl__get(global.dp_input_key_names_hx, argument0, undefined);
    
    if (l_r != undefined)
        return l_r;
    
    return "key" + string(argument0);
}

function dp_input_key_init_hx()
{
    var l_c2s = ds_map_create();
    global.dp_input_key_names_hx = l_c2s;
    var l_s2c = ds_map_create();
    global.dp_input_key_codes_hx = l_s2c;
    var l_llq = ds_list_create();
    global.dp_input_key_list_lq_hx = l_llq;
    ds_map_set(l_c2s, 27, "Escape");
    ds_map_set(l_s2c, "escape", 27);
    ds_list_add(l_llq, "escape");
    ds_map_set(l_s2c, "esc", 27);
    ds_list_add(l_llq, "esc");
    ds_map_set(l_c2s, 32, "Space");
    ds_map_set(l_s2c, "space", 32);
    ds_list_add(l_llq, "space");
    ds_map_set(l_s2c, "spacebar", 32);
    ds_list_add(l_llq, "spacebar");
    ds_map_set(l_c2s, 13, "Enter");
    ds_map_set(l_s2c, "enter", 13);
    ds_list_add(l_llq, "enter");
    ds_map_set(l_s2c, "return", 13);
    ds_list_add(l_llq, "return");
    ds_map_set(l_c2s, 37, "Left");
    ds_map_set(l_s2c, "left", 37);
    ds_list_add(l_llq, "left");
    ds_map_set(l_c2s, 39, "Right");
    ds_map_set(l_s2c, "right", 39);
    ds_list_add(l_llq, "right");
    ds_map_set(l_c2s, 38, "Up");
    ds_map_set(l_s2c, "up", 38);
    ds_list_add(l_llq, "up");
    ds_map_set(l_c2s, 40, "Down");
    ds_map_set(l_s2c, "down", 40);
    ds_list_add(l_llq, "down");
    ds_map_set(l_c2s, 8, "Backspace");
    ds_map_set(l_s2c, "backspace", 8);
    ds_list_add(l_llq, "backspace");
    ds_map_set(l_s2c, "bksp", 8);
    ds_list_add(l_llq, "bksp");
    ds_map_set(l_c2s, 9, "Tab");
    ds_map_set(l_s2c, "tab", 9);
    ds_list_add(l_llq, "tab");
    ds_map_set(l_c2s, 16, "Shift");
    ds_map_set(l_s2c, "shift", 16);
    ds_list_add(l_llq, "shift");
    ds_map_set(l_c2s, 17, "Control");
    ds_map_set(l_s2c, "control", 17);
    ds_list_add(l_llq, "control");
    ds_map_set(l_s2c, "ctrl", 17);
    ds_list_add(l_llq, "ctrl");
    ds_map_set(l_c2s, 18, "Alt");
    ds_map_set(l_s2c, "alt", 18);
    ds_list_add(l_llq, "alt");
    ds_map_set(l_c2s, 19, "Pause");
    ds_map_set(l_s2c, "pause", 19);
    ds_list_add(l_llq, "pause");
    ds_map_set(l_s2c, "break", 19);
    ds_list_add(l_llq, "break");
    ds_map_set(l_c2s, 20, "Capslock");
    ds_map_set(l_s2c, "capslock", 20);
    ds_list_add(l_llq, "capslock");
    ds_map_set(l_s2c, "caps", 20);
    ds_list_add(l_llq, "caps");
    ds_map_set(l_c2s, 160, "LeftShift");
    ds_map_set(l_s2c, "leftshift", 160);
    ds_list_add(l_llq, "leftshift");
    ds_map_set(l_s2c, "lshift", 160);
    ds_list_add(l_llq, "lshift");
    ds_map_set(l_c2s, 161, "RightShift");
    ds_map_set(l_s2c, "rightshift", 161);
    ds_list_add(l_llq, "rightshift");
    ds_map_set(l_s2c, "rshift", 161);
    ds_list_add(l_llq, "rshift");
    ds_map_set(l_c2s, 162, "LeftControl");
    ds_map_set(l_s2c, "leftcontrol", 162);
    ds_list_add(l_llq, "leftcontrol");
    ds_map_set(l_s2c, "lcontrol", 162);
    ds_list_add(l_llq, "lcontrol");
    ds_map_set(l_s2c, "lctrl", 162);
    ds_list_add(l_llq, "lctrl");
    ds_map_set(l_c2s, 163, "RightControl");
    ds_map_set(l_s2c, "rightcontrol", 163);
    ds_list_add(l_llq, "rightcontrol");
    ds_map_set(l_s2c, "rcontrol", 163);
    ds_list_add(l_llq, "rcontrol");
    ds_map_set(l_s2c, "rctrl", 163);
    ds_list_add(l_llq, "rctrl");
    ds_map_set(l_c2s, 164, "LeftAlt");
    ds_map_set(l_s2c, "leftalt", 164);
    ds_list_add(l_llq, "leftalt");
    ds_map_set(l_s2c, "lalt", 164);
    ds_list_add(l_llq, "lalt");
    ds_map_set(l_c2s, 165, "RightAlt");
    ds_map_set(l_s2c, "rightalt", 165);
    ds_list_add(l_llq, "rightalt");
    ds_map_set(l_s2c, "ralt", 165);
    ds_list_add(l_llq, "ralt");
    ds_map_set(l_c2s, 91, "Windows");
    ds_map_set(l_s2c, "windows", 91);
    ds_list_add(l_llq, "windows");
    ds_map_set(l_s2c, "system", 91);
    ds_list_add(l_llq, "system");
    ds_map_set(l_s2c, "win", 91);
    ds_list_add(l_llq, "win");
    ds_map_set(l_s2c, "sys", 91);
    ds_list_add(l_llq, "sys");
    ds_map_set(l_c2s, 92, "RightWindows");
    ds_map_set(l_s2c, "rightwindows", 92);
    ds_list_add(l_llq, "rightwindows");
    ds_map_set(l_s2c, "rightsystem", 92);
    ds_list_add(l_llq, "rightsystem");
    ds_map_set(l_s2c, "rwin", 92);
    ds_list_add(l_llq, "rwin");
    ds_map_set(l_s2c, "rsys", 92);
    ds_list_add(l_llq, "rsys");
    ds_map_set(l_c2s, 33, "PageUp");
    ds_map_set(l_s2c, "pageup", 33);
    ds_list_add(l_llq, "pageup");
    ds_map_set(l_s2c, "pgup", 33);
    ds_list_add(l_llq, "pgup");
    ds_map_set(l_c2s, 34, "PageDown");
    ds_map_set(l_s2c, "pagedown", 34);
    ds_list_add(l_llq, "pagedown");
    ds_map_set(l_s2c, "pgdown", 34);
    ds_list_add(l_llq, "pgdown");
    ds_map_set(l_c2s, 35, "End");
    ds_map_set(l_s2c, "end", 35);
    ds_list_add(l_llq, "end");
    ds_map_set(l_c2s, 36, "Home");
    ds_map_set(l_s2c, "home", 36);
    ds_list_add(l_llq, "home");
    ds_map_set(l_c2s, 44, "PrintScreen");
    ds_map_set(l_s2c, "printscreen", 44);
    ds_list_add(l_llq, "printscreen");
    ds_map_set(l_s2c, "prtscr", 44);
    ds_list_add(l_llq, "prtscr");
    ds_map_set(l_s2c, "sysrq", 44);
    ds_list_add(l_llq, "sysrq");
    ds_map_set(l_c2s, 45, "Insert");
    ds_map_set(l_s2c, "insert", 45);
    ds_list_add(l_llq, "insert");
    ds_map_set(l_s2c, "ins", 45);
    ds_list_add(l_llq, "ins");
    ds_map_set(l_c2s, 46, "Delete");
    ds_map_set(l_s2c, "delete", 46);
    ds_list_add(l_llq, "delete");
    ds_map_set(l_s2c, "del", 46);
    ds_list_add(l_llq, "del");
    ds_map_set(l_c2s, 145, "ScrollLock");
    ds_map_set(l_s2c, "scrolllock", 145);
    ds_list_add(l_llq, "scrolllock");
    ds_map_set(l_s2c, "scrlck", 145);
    ds_list_add(l_llq, "scrlck");
    ds_map_set(l_c2s, 186, "Semicolon");
    ds_map_set(l_s2c, "semicolon", 186);
    ds_list_add(l_llq, "semicolon");
    ds_map_set(l_s2c, "colon", 186);
    ds_list_add(l_llq, "colon");
    ds_map_set(l_s2c, ":", 186);
    ds_list_add(l_llq, ":");
    ds_map_set(l_s2c, ";", 186);
    ds_list_add(l_llq, ";");
    ds_map_set(l_c2s, 187, "Equals");
    ds_map_set(l_s2c, "equals", 187);
    ds_list_add(l_llq, "equals");
    ds_map_set(l_s2c, "=", 187);
    ds_list_add(l_llq, "=");
    ds_map_set(l_c2s, 188, "Comma");
    ds_map_set(l_s2c, "comma", 188);
    ds_list_add(l_llq, "comma");
    ds_map_set(l_s2c, "less", 188);
    ds_list_add(l_llq, "less");
    ds_map_set(l_s2c, ",", 188);
    ds_list_add(l_llq, ",");
    ds_map_set(l_s2c, "<", 188);
    ds_list_add(l_llq, "<");
    ds_map_set(l_c2s, 189, "Underscore");
    ds_map_set(l_s2c, "underscore", 189);
    ds_list_add(l_llq, "underscore");
    ds_map_set(l_s2c, "_", 189);
    ds_list_add(l_llq, "_");
    ds_map_set(l_c2s, 190, "Period");
    ds_map_set(l_s2c, "period", 190);
    ds_list_add(l_llq, "period");
    ds_map_set(l_s2c, "dot", 190);
    ds_list_add(l_llq, "dot");
    ds_map_set(l_s2c, "more", 190);
    ds_list_add(l_llq, "more");
    ds_map_set(l_s2c, ".", 190);
    ds_list_add(l_llq, ".");
    ds_map_set(l_s2c, ">", 190);
    ds_list_add(l_llq, ">");
    ds_map_set(l_c2s, 191, "Slash");
    ds_map_set(l_s2c, "slash", 191);
    ds_list_add(l_llq, "slash");
    ds_map_set(l_s2c, "?", 191);
    ds_list_add(l_llq, "?");
    ds_map_set(l_s2c, "/", 191);
    ds_list_add(l_llq, "/");
    ds_map_set(l_c2s, 192, "Tilde");
    ds_map_set(l_s2c, "tilde", 192);
    ds_list_add(l_llq, "tilde");
    ds_map_set(l_s2c, "~", 192);
    ds_list_add(l_llq, "~");
    ds_map_set(l_s2c, "`", 192);
    ds_list_add(l_llq, "`");
    ds_map_set(l_c2s, 219, "OpenBracket");
    ds_map_set(l_s2c, "openbracket", 219);
    ds_list_add(l_llq, "openbracket");
    ds_map_set(l_s2c, "[", 219);
    ds_list_add(l_llq, "[");
    ds_map_set(l_s2c, "{", 219);
    ds_list_add(l_llq, "{");
    ds_map_set(l_c2s, 220, "BackSlash");
    ds_map_set(l_s2c, "backslash", 220);
    ds_list_add(l_llq, "backslash");
    ds_map_set(l_s2c, "\\", 220);
    ds_list_add(l_llq, "\\");
    ds_map_set(l_s2c, "|", 220);
    ds_list_add(l_llq, "|");
    ds_map_set(l_c2s, 221, "CloseBracket");
    ds_map_set(l_s2c, "closebracket", 221);
    ds_list_add(l_llq, "closebracket");
    ds_map_set(l_s2c, "]", 221);
    ds_list_add(l_llq, "]");
    ds_map_set(l_s2c, "}", 221);
    ds_list_add(l_llq, "}");
    ds_map_set(l_c2s, 222, "Quote");
    ds_map_set(l_s2c, "quote", 222);
    ds_list_add(l_llq, "quote");
    ds_map_set(l_s2c, "apostrophe", 222);
    ds_list_add(l_llq, "apostrophe");
    ds_map_set(l_s2c, "'", 222);
    ds_list_add(l_llq, "'");
    ds_map_set(l_s2c, "\"", 222);
    ds_list_add(l_llq, "\"");
    
    for (var l_k = 65; l_k <= 90; l_k++)
    {
        var l_c = chr(l_k);
        ds_map_set(l_c2s, l_k, l_c);
        var l_slq = string_lower(l_c);
        ds_map_set(l_s2c, l_slq, l_k);
        ds_list_add(l_llq, l_slq);
    }
    
    ds_map_set(l_c2s, 48, "D0");
    ds_map_set(l_s2c, "d0", 48);
    ds_list_add(l_llq, "d0");
    ds_map_set(l_s2c, "dig0", 48);
    ds_list_add(l_llq, "dig0");
    ds_map_set(l_s2c, "digit0", 48);
    ds_list_add(l_llq, "digit0");
    ds_map_set(l_s2c, "0", 48);
    ds_list_add(l_llq, "0");
    ds_map_set(l_c2s, 49, "D1");
    ds_map_set(l_s2c, "d1", 49);
    ds_list_add(l_llq, "d1");
    ds_map_set(l_s2c, "dig1", 49);
    ds_list_add(l_llq, "dig1");
    ds_map_set(l_s2c, "digit1", 49);
    ds_list_add(l_llq, "digit1");
    ds_map_set(l_s2c, "1", 49);
    ds_list_add(l_llq, "1");
    ds_map_set(l_c2s, 50, "D2");
    ds_map_set(l_s2c, "d2", 50);
    ds_list_add(l_llq, "d2");
    ds_map_set(l_s2c, "dig2", 50);
    ds_list_add(l_llq, "dig2");
    ds_map_set(l_s2c, "digit2", 50);
    ds_list_add(l_llq, "digit2");
    ds_map_set(l_s2c, "2", 50);
    ds_list_add(l_llq, "2");
    ds_map_set(l_c2s, 51, "D3");
    ds_map_set(l_s2c, "d3", 51);
    ds_list_add(l_llq, "d3");
    ds_map_set(l_s2c, "dig3", 51);
    ds_list_add(l_llq, "dig3");
    ds_map_set(l_s2c, "digit3", 51);
    ds_list_add(l_llq, "digit3");
    ds_map_set(l_s2c, "3", 51);
    ds_list_add(l_llq, "3");
    ds_map_set(l_c2s, 52, "D4");
    ds_map_set(l_s2c, "d4", 52);
    ds_list_add(l_llq, "d4");
    ds_map_set(l_s2c, "dig4", 52);
    ds_list_add(l_llq, "dig4");
    ds_map_set(l_s2c, "digit4", 52);
    ds_list_add(l_llq, "digit4");
    ds_map_set(l_s2c, "4", 52);
    ds_list_add(l_llq, "4");
    ds_map_set(l_c2s, 53, "D5");
    ds_map_set(l_s2c, "d5", 53);
    ds_list_add(l_llq, "d5");
    ds_map_set(l_s2c, "dig5", 53);
    ds_list_add(l_llq, "dig5");
    ds_map_set(l_s2c, "digit5", 53);
    ds_list_add(l_llq, "digit5");
    ds_map_set(l_s2c, "5", 53);
    ds_list_add(l_llq, "5");
    ds_map_set(l_c2s, 54, "D6");
    ds_map_set(l_s2c, "d6", 54);
    ds_list_add(l_llq, "d6");
    ds_map_set(l_s2c, "dig6", 54);
    ds_list_add(l_llq, "dig6");
    ds_map_set(l_s2c, "digit6", 54);
    ds_list_add(l_llq, "digit6");
    ds_map_set(l_s2c, "6", 54);
    ds_list_add(l_llq, "6");
    ds_map_set(l_c2s, 55, "D7");
    ds_map_set(l_s2c, "d7", 55);
    ds_list_add(l_llq, "d7");
    ds_map_set(l_s2c, "dig7", 55);
    ds_list_add(l_llq, "dig7");
    ds_map_set(l_s2c, "digit7", 55);
    ds_list_add(l_llq, "digit7");
    ds_map_set(l_s2c, "7", 55);
    ds_list_add(l_llq, "7");
    ds_map_set(l_c2s, 56, "D8");
    ds_map_set(l_s2c, "d8", 56);
    ds_list_add(l_llq, "d8");
    ds_map_set(l_s2c, "dig8", 56);
    ds_list_add(l_llq, "dig8");
    ds_map_set(l_s2c, "digit8", 56);
    ds_list_add(l_llq, "digit8");
    ds_map_set(l_s2c, "8", 56);
    ds_list_add(l_llq, "8");
    ds_map_set(l_c2s, 57, "D9");
    ds_map_set(l_s2c, "d9", 57);
    ds_list_add(l_llq, "d9");
    ds_map_set(l_s2c, "dig9", 57);
    ds_list_add(l_llq, "dig9");
    ds_map_set(l_s2c, "digit9", 57);
    ds_list_add(l_llq, "digit9");
    ds_map_set(l_s2c, "9", 57);
    ds_list_add(l_llq, "9");
    
    for (var l_k = 112; l_k < 136; l_k++)
    {
        var l_c = "F" + string(l_k - 111);
        ds_map_set(l_c2s, l_k, l_c);
        var l_slq = string_lower(l_c);
        ds_map_set(l_s2c, l_slq, l_k);
        ds_list_add(l_llq, l_slq);
    }
    
    ds_map_set(l_c2s, 144, "Numlock");
    ds_map_set(l_s2c, "numlock", 144);
    ds_list_add(l_llq, "numlock");
    ds_map_set(l_c2s, 111, "Divide");
    ds_map_set(l_s2c, "divide", 111);
    ds_list_add(l_llq, "divide");
    ds_map_set(l_s2c, "div", 111);
    ds_list_add(l_llq, "div");
    ds_map_set(l_s2c, "numdiv", 111);
    ds_list_add(l_llq, "numdiv");
    ds_map_set(l_s2c, "/", 111);
    ds_list_add(l_llq, "/");
    ds_map_set(l_c2s, 106, "Multiply");
    ds_map_set(l_s2c, "multiply", 106);
    ds_list_add(l_llq, "multiply");
    ds_map_set(l_s2c, "mul", 106);
    ds_list_add(l_llq, "mul");
    ds_map_set(l_s2c, "nummul", 106);
    ds_list_add(l_llq, "nummul");
    ds_map_set(l_s2c, "*", 106);
    ds_list_add(l_llq, "*");
    ds_map_set(l_c2s, 107, "Add");
    ds_map_set(l_s2c, "add", 107);
    ds_list_add(l_llq, "add");
    ds_map_set(l_s2c, "plus", 107);
    ds_list_add(l_llq, "plus");
    ds_map_set(l_s2c, "numadd", 107);
    ds_list_add(l_llq, "numadd");
    ds_map_set(l_s2c, "+", 107);
    ds_list_add(l_llq, "+");
    ds_map_set(l_c2s, 109, "Subtract");
    ds_map_set(l_s2c, "subtract", 109);
    ds_list_add(l_llq, "subtract");
    ds_map_set(l_s2c, "minus", 109);
    ds_list_add(l_llq, "minus");
    ds_map_set(l_s2c, "numsub", 109);
    ds_list_add(l_llq, "numsub");
    ds_map_set(l_s2c, "-", 109);
    ds_list_add(l_llq, "-");
    ds_map_set(l_c2s, 110, "NumpadDelete");
    ds_map_set(l_s2c, "numpaddelete", 110);
    ds_list_add(l_llq, "numpaddelete");
    ds_map_set(l_s2c, "numdel", 110);
    ds_list_add(l_llq, "numdel");
    ds_map_set(l_s2c, "numperiod", 110);
    ds_list_add(l_llq, "numperiod");
    
    for (var l_k = 96; l_k < 106; l_k++)
    {
        var l_c = dp_Std_stringify(l_k - 96);
        var l_s = "Numpad" + l_c;
        ds_map_set(l_c2s, l_k, l_c);
        var l_slq = string_lower(l_c);
        ds_map_set(l_s2c, l_slq, l_k);
        ds_list_add(l_llq, l_slq);
        l_s = "Num" + l_c;
        l_slq = string_lower(l_s);
        ds_map_set(l_s2c, l_slq, l_k);
        ds_list_add(l_llq, l_slq);
    }
    
    for (var l_k = 0; l_k < 256; l_k++)
    {
        var l_s = "Key" + string(l_k);
        
        if (!ds_map_exists(l_c2s, l_k))
            ds_map_set(l_c2s, l_k, l_s);
        
        var l_slq = string_lower(l_s);
        ds_map_set(l_s2c, l_slq, l_k);
        ds_list_add(l_llq, l_slq);
    }
}

function dp_keyboard_check_hx(argument0)
{
    if (global.dp_keyboard_is_enabled)
        return keyboard_check(argument0);
    else
        return 0;
}

function dp_input_adapter_create()
{
    var this = [global.mt_dp_input_adapter];
    return this;
}

function dp_input_next_hx()
{
    dp_mouse_next_hx();
}

function dp_input_update_hx()
{
    var l_l = global.dp_player_async_hx;
    
    if (!global.dp_flow_is_active)
    {
        var l_i = 0;
        var l__g1 = ds_list_size(l_l);
        
        while (l_i < l__g1)
        {
            var l_p = ds_list_find_value(l_l, l_i);
            
            if (l_p != undefined)
            {
                var l_q0 = l_p[5];
                var l_q1 = l_p[6];
                dp_state_set_to_hx(l_q0, l_q1, 0);
                dp_state_poll_hx(l_q1);
                dp_state_set_to_hx(l_p[8], l_q0, 0);
                dp_state_set_to_hx(l_p[7], l_q1, 0);
            }
            
            l_i++;
        }
    }
    
    dp_mouse_update_hx();
}

function dp_input_exec(argument0, argument1 = 0)
{
    if (argument0 == undefined || argument0 == "")
        return argument1;
    
    var l_r = dp_input_node_create();
    global.dp_input_exec_error = dp_input_node_set_expr(l_r, argument0);
    var l_current1 = argument1;
    
    if (l_current1 == undefined)
        l_current1 = 0;
    
    return dp_input_node_exec_leaf_hx(l_r[1], l_current1, -1, 0);
}

function dp_input_define(argument0, argument1, argument2)
{
    ds_map_set(global.dp_input_parse_input_map_hx, string_lower(argument0), [11, argument1, argument2]);
}

function dp_input_find_buttons(argument0, argument1 = 0)
{
    var l_l = argument1;
    
    for (var l_i = 2; l_i < 256; l_i++)
    {
        if (dp_keyboard_check_hx(l_i) > 0)
            ds_list_add(argument0, dp_input_key_get_name(l_i));
    }
    
    if (dp_mouse_get_bt_left() > 0)
        ds_list_add(argument0, "MouseButtonLeft");
    
    if (dp_mouse_get_bt_right() > 0)
        ds_list_add(argument0, "MouseButtonRight");
    
    if (dp_mouse_get_bt_middle() > 0)
        ds_list_add(argument0, "MouseButtonMiddle");
    
    var l_n = dp_gamepad_get_count();
    
    for (var l_i = 0; l_i < l_n; l_i++)
    {
        var l_gp = "Joy" + string(l_i + 1);
        
        if (dp_gamepad_button_hx(l_i, 0) > 0.5)
        {
            if (l_l)
                ds_list_add(argument0, l_gp + "Button1");
            else
                ds_list_add(argument0, l_gp + "b1");
        }
        
        if (dp_gamepad_button_hx(l_i, 1) > 0.5)
        {
            if (l_l)
                ds_list_add(argument0, l_gp + "Button2");
            else
                ds_list_add(argument0, l_gp + "b2");
        }
        
        if (dp_gamepad_button_hx(l_i, 2) > 0.5)
        {
            if (l_l)
                ds_list_add(argument0, l_gp + "Button3");
            else
                ds_list_add(argument0, l_gp + "b3");
        }
        
        if (dp_gamepad_button_hx(l_i, 3) > 0.5)
        {
            if (l_l)
                ds_list_add(argument0, l_gp + "Button4");
            else
                ds_list_add(argument0, l_gp + "b4");
        }
        
        if (dp_gamepad_button_hx(l_i, 4) > 0.5)
        {
            if (l_l)
                ds_list_add(argument0, l_gp + "ShoulderRight");
            else
                ds_list_add(argument0, l_gp + "sr");
        }
        
        if (dp_gamepad_button_hx(l_i, 5) > 0.5)
        {
            if (l_l)
                ds_list_add(argument0, l_gp + "TriggerRight");
            else
                ds_list_add(argument0, l_gp + "tr");
        }
        
        if (dp_gamepad_button_hx(l_i, 6) > 0.5)
        {
            if (l_l)
                ds_list_add(argument0, l_gp + "ShoulderLeft");
            else
                ds_list_add(argument0, l_gp + "sl");
        }
        
        if (dp_gamepad_button_hx(l_i, 7) > 0.5)
        {
            if (l_l)
                ds_list_add(argument0, l_gp + "TriggerLeft");
            else
                ds_list_add(argument0, l_gp + "tl");
        }
        
        if (dp_gamepad_button_hx(l_i, 8) > 0.5)
        {
            if (l_l)
                ds_list_add(argument0, l_gp + "Select");
            else
                ds_list_add(argument0, l_gp + "sel");
        }
        
        if (dp_gamepad_button_hx(l_i, 9) > 0.5)
        {
            if (l_l)
                ds_list_add(argument0, l_gp + "Start");
            else
                ds_list_add(argument0, l_gp + "start");
        }
        
        var l_f = dp_gamepad_axis_hx(l_i, 0);
        var l_a2 = l_l ? "AxisLeftX" : "AxLX";
        
        if (l_f < -0.5)
            ds_list_add(argument0, "-" + l_gp + l_a2);
        else if (l_f > 0.5)
            ds_list_add(argument0, l_gp + l_a2);
        
        l_f = dp_gamepad_axis_hx(l_i, 1);
        l_a2 = l_l ? "AxisLeftY" : "AxLY";
        
        if (l_f < -0.5)
            ds_list_add(argument0, "-" + l_gp + l_a2);
        else if (l_f > 0.5)
            ds_list_add(argument0, l_gp + l_a2);
        
        l_f = dp_gamepad_axis_hx(l_i, 2);
        l_a2 = l_l ? "AxisRightX" : "AxRX";
        
        if (l_f < -0.5)
            ds_list_add(argument0, "-" + l_gp + l_a2);
        else if (l_f > 0.5)
            ds_list_add(argument0, l_gp + l_a2);
        
        l_f = dp_gamepad_axis_hx(l_i, 3);
        l_a2 = l_l ? "AxisRightY" : "AxRY";
        
        if (l_f < -0.5)
            ds_list_add(argument0, "-" + l_gp + l_a2);
        else if (l_f > 0.5)
            ds_list_add(argument0, l_gp + l_a2);
        
        l_f = dp_gamepad_axis_hx(l_i, 4);
        l_a2 = l_l ? "DPadX" : "DpX";
        
        if (l_f < -0.5)
            ds_list_add(argument0, "-" + l_gp + l_a2);
        else if (l_f > 0.5)
            ds_list_add(argument0, l_gp + l_a2);
        
        l_f = dp_gamepad_axis_hx(l_i, 5);
        l_a2 = l_l ? "DPadY" : "DpY";
        
        if (l_f < -0.5)
            ds_list_add(argument0, "-" + l_gp + l_a2);
        else if (l_f > 0.5)
            ds_list_add(argument0, l_gp + l_a2);
    }
}

function dp_input_init_hx()
{
    dp_input_key_init_hx();
    dp_input_parse_init_hx();
}

function dp_mouse_get_bt_left()
{
    if (global.dp_mouse_is_enabled)
    {
        if (mouse_check_button(mb_left))
            return 1;
        else
            return 0;
    }
    else
    {
        return 0;
    }
}

function dp_mouse_get_bt_right()
{
    if (global.dp_mouse_is_enabled)
    {
        if (mouse_check_button(mb_right))
            return 1;
        else
            return 0;
    }
    else
    {
        return 0;
    }
}

function dp_mouse_get_bt_middle()
{
    if (global.dp_mouse_is_enabled)
    {
        if (mouse_check_button(mb_middle))
            return 1;
        else
            return 0;
    }
    else
    {
        return 0;
    }
}

function dp_mouse_next_hx()
{
    if (global.dp_mouse_is_enabled)
    {
        var l_ap = application_get_position();
        var l_mx = (device_mouse_x_to_gui(0) / (l_ap[2] - l_ap[0])) * global.dp_screen_width_hx;
        l_ap = application_get_position();
        var l_my = (device_mouse_y_to_gui(0) / (l_ap[3] - l_ap[1])) * global.dp_screen_height_hx;
        global.dp_mouse_moved_hx = global.dp_mouse_pos_x != l_mx || global.dp_mouse_pos_y != l_my;
        global.dp_mouse_pos_x = l_mx;
        global.dp_mouse_pos_y = l_my;
        global.dp_mouse_wheel_delta_hx = global.dp_mouse_wheel_delta_next_hx;
    }
    else
    {
        global.dp_mouse_moved_hx = 0;
        global.dp_mouse_wheel_delta_hx = 0;
    }
    
    global.dp_mouse_wheel_delta_next_hx = 0;
}

function dp_mouse_update_hx()
{
    if (global.dp_mouse_is_enabled)
        global.dp_mouse_wheel_delta_next_hx += (mouse_wheel_up() - mouse_wheel_down());
}

function dp_pos_value(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q = l_slot[7];
    
    if (l_q == undefined)
        return 0;
    
    var l_i = ds_map_find_value(global.dp_pos_map, argument1);
    
    if (l_i == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known position.");
        
        return 0;
    }
    
    return l_q[3][l_i];
}

function dp_pos_previous(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q = l_slot[8];
    
    if (l_q == undefined)
        return 0;
    
    var l_i = ds_map_find_value(global.dp_pos_map, argument1);
    
    if (l_i == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known position.");
        
        return 0;
    }
    
    return l_q[3][l_i];
}

function dp_pos_value_async(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q = l_slot[6];
    
    if (l_q == undefined)
        return 0;
    
    var l_i = ds_map_find_value(global.dp_pos_map, argument1);
    
    if (l_i == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known position.");
        
        return 0;
    }
    
    return l_q[3][l_i];
}

function dp_pos_previous_async(argument0, argument1)
{
    var l_slot = global.dp_flow_is_active ? ds_list_find_value(global.dp_player_list_hx, argument0) : ds_list_find_value(global.dp_player_async_hx, argument0);
    
    if (l_slot == undefined)
        return 0;
    
    var l_q = l_slot[5];
    
    if (l_q == undefined)
        return 0;
    
    var l_i = ds_map_find_value(global.dp_pos_map, argument1);
    
    if (l_i == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known position.");
        
        return 0;
    }
    
    return l_q[3][l_i];
}

function dp_pos_define(argument0, argument1, argument2, argument3 = "", argument4 = "", argument5 = 1)
{
    if (ds_map_exists(global.dp_pos_map, argument0))
    {
        throw dp_haxe_Exception_thrown("A position with id \"" + dp_Std_stringify(argument0) + "\" already exists!");
    }
    else
    {
        var l_i = global.dp_pos_count++;
        ds_map_set(global.dp_pos_map, argument0, l_i);
        array_set(global.dp_pos_ids, l_i, argument0);
        
        if (argument3 == "")
            argument3 = "Position " + string(l_i + 1);
        
        array_set(global.dp_pos_min, l_i, argument1);
        array_set(global.dp_pos_max, l_i, argument2);
        array_set(global.dp_pos_names, l_i, argument3);
        array_set(global.dp_pos_names_lq, l_i, string_lower(argument3));
        array_set(global.dp_pos_nodes, l_i, dp_input_node_create(argument4));
        array_set(global.dp_pos_steps, l_i, argument5);
        array_set(global.dp_pos_is_async, l_i, 0);
    }
}

function dp_pos_define_async(argument0, argument1 = 1)
{
    if (ds_map_exists(global.dp_pos_map, argument0))
        array_set(global.dp_pos_is_async, ds_map_find_value(global.dp_pos_map, argument0), argument1);
    else
        throw dp_haxe_Exception_thrown("There is no position with id \"" + dp_Std_stringify(argument0) + "\"!");
}

function dp_pos_get_index(argument0)
{
    if (ds_map_exists(global.dp_pos_map, argument0))
        return ds_map_find_value(global.dp_pos_map, argument0);
    else
        return -1;
}

function dp_pos_get_name(argument0)
{
    if (ds_map_exists(global.dp_pos_map, argument0))
        return array_get(global.dp_pos_names, ds_map_find_value(global.dp_pos_map, argument0));
    else
        return "";
}

function dp_pos_set_name(argument0, argument1)
{
    if (ds_map_exists(global.dp_pos_map, argument0))
    {
        var l_i = ds_map_find_value(global.dp_pos_map, argument0);
        array_set(global.dp_pos_names, l_i, argument1);
        array_set(global.dp_pos_names_lq, l_i, string_lower(argument1));
    }
}

function dp_pos_get_input(argument0)
{
    if (ds_map_exists(global.dp_pos_map, argument0))
        return array_get(array_get(global.dp_pos_nodes, ds_map_find_value(global.dp_pos_map, argument0)), 2);
    else
        return "";
}

function dp_pos_set_input(argument0, argument1)
{
    if (ds_map_exists(global.dp_pos_map, argument0))
        dp_input_node_set_expr(array_get(global.dp_pos_nodes, ds_map_find_value(global.dp_pos_map, argument0)), argument1);
}

function dp_pos_find(argument0, argument1 = 1)
{
    var l_n = global.dp_pos_count;
    
    if (argument1)
    {
        argument0 = string_lower(argument0);
        
        for (var l_i = 0; l_i < l_n; l_i++)
        {
            if (global.dp_pos_names_lq[l_i] == argument0)
                return global.dp_pos_ids[l_i];
        }
    }
    else
    {
        for (var l_i = 0; l_i < l_n; l_i++)
        {
            if (global.dp_pos_names[l_i] == argument0)
                return global.dp_pos_ids[l_i];
        }
    }
    
    return undefined;
}

function dp_replay_record(argument0 = "")
{
    if (global.dp_replay_is_playing)
    {
        global.dp_replay_path = argument0;
        return 0;
    }
    
    if (global.dp_current_frame > 0)
        throw dp_haxe_Exception_thrown("Can only start recording on flow start!");
    
    if (global.dp_replay_buffer != undefined)
        buffer_delete(global.dp_replay_buffer);
    
    global.dp_replay_buffer = buffer_create(1024, buffer_grow, 1);
    var l_buf = global.dp_replay_buffer;
    buffer_write(l_buf, buffer_string, ".replay");
    buffer_write(l_buf, buffer_string, global.dp_game_name);
    buffer_write(l_buf, buffer_u32, global.dp_game_version);
    global.dp_replay_frames_pos_hx = buffer_tell(l_buf);
    buffer_write(l_buf, buffer_u32, 0);
    buffer_write(l_buf, buffer_s32, global.dp_flow_initial_seed);
    global.dp_replay_view_uid = global.dp_local_uid;
    buffer_write(l_buf, buffer_s32, global.dp_replay_view_uid);
    global.dp_replay_file_delay_hx = global.dp_flow_delay_hx;
    buffer_write(l_buf, buffer_u8, global.dp_replay_file_delay_hx);
    var l_n = ds_list_size(global.dp_player_list_hx);
    buffer_write(l_buf, buffer_u8, l_n);
    
    for (var l_i = 0; l_i < l_n; l_i++)
    {
        var l_uid = dp_player_get_uid(l_i);
        buffer_write(l_buf, buffer_s32, l_uid);
        
        if (l_uid != 0)
        {
            buffer_write(l_buf, buffer_string, dp_player_get_alias(l_i));
            var l_id = dp_player_get_steam_id(l_i);
            buffer_write(l_buf, buffer_s32, (l_id & 4294967295) div 1);
            buffer_write(l_buf, buffer_s32, l_id >> 32);
        }
    }
    
    global.dp_replay_path = argument0;
    global.dp_replay_prev_pos_hx = buffer_tell(l_buf);
    global.dp_replay_is_recording = 1;
    global.dp_replay_is_playing = 0;
    return 1;
}

function dp_replay_play(argument0, argument1 = -1)
{
    if (buffer_read(argument0, buffer_string) != ".replay")
        return "Not a valid replay file.";
    
    if (buffer_read(argument0, buffer_string) != global.dp_game_name)
        return "Game mismatch.";
    
    if (buffer_read(argument0, buffer_u32) != global.dp_game_version)
        return "Version mismatch.";
    
    dp_host(argument1);
    global.dp_replay_frames_pos_hx = buffer_tell(argument0);
    global.dp_replay_frames = buffer_read(argument0, buffer_u32);
    global.dp_flow_initial_seed = buffer_read(argument0, buffer_s32);
    global.dp_replay_view_uid = buffer_read(argument0, buffer_s32);
    global.dp_replay_file_delay_hx = buffer_read(argument0, buffer_u8);
    var l_n = buffer_read(argument0, buffer_u8);
    var l_maxUID = 0;
    dp_lobby_set_slot_count(l_n);
    
    for (var l_i = 0; l_i < l_n; l_i++)
        dp_player_release(l_i);
    
    for (var l_i = 0; l_i < l_n; l_i++)
    {
        var l_uid = buffer_read(argument0, buffer_s32);
        
        if (l_uid != 0)
        {
            if (l_maxUID < l_uid)
                l_maxUID = l_uid;
            
            var l_p = dp_player_new_hx();
            array_set(l_p, 1, l_uid);
            array_set(l_p, 2, buffer_read(argument0, buffer_string));
            array_set(l_p, 19, dp_buffer_read_steam_id(argument0));
            ds_list_set(global.dp_player_list_hx, l_i, l_p);
            var l_this1 = global.dp_player_on_change;
            var l_f = l_this1;
            
            if (l_f != undefined && l_f >= 0)
                l_this1(l_i);
        }
        else
        {
            ds_list_set(global.dp_player_list_hx, l_i, undefined);
            var l_this2 = global.dp_player_on_change;
            var l_f1 = l_this2;
            
            if (l_f1 != undefined && l_f1 >= 0)
                l_this2(l_i);
        }
    }
    
    global.dp_uid_next = l_maxUID + 1;
    global.dp_local_uid = dp_uid_create();
    global.dp_net_is_online_hx = dp_player_count_sources() > 1;
    global.dp_replay_prev_pos_hx = buffer_tell(argument0);
    global.dp_replay_buffer = argument0;
    global.dp_replay_is_recording = 0;
    global.dp_replay_is_playing = 1;
    
    if (argument1 < 0)
    {
        global.dp_flow_delay_hx = 0;
        dp_start();
    }
    else
    {
        global.dp_lobby_allow_viewers = 1;
    }
    
    return "";
}

function dp_replay_takeover()
{
    if (!global.dp_replay_is_playing || !global.dp_replay_is_reading || global.dp_replay_takeover_state_hx != 0)
        return 0;
    
    global.dp_replay_takeover_state_hx = 1;
    return 1;
}

function dp_replay_handle_takeover_hx()
{
    var l_ln1 = 0;
    var l_ll = global.dp_link_list_hx;
    l_ln1 = ds_list_size(l_ll);
    var l_pl = global.dp_player_list_hx;
    var l_pn = ds_list_size(l_pl);
    var l_i = 0;
    
    while (l_i < l_pn)
    {
        var l_player = ds_list_find_value(l_pl, l_i);
        
        if (l_player == undefined)
        {
            l_i++;
            continue;
        }
        
        var l_uid = 0;
        
        if (l_player[15])
        {
            l_uid = global.dp_local_uid;
        }
        else
        {
            var l_li = 0;
            
            while (l_li < l_ln1)
            {
                if (((array_get(ds_list_find_value(l_ll, l_li), 3) >> l_i) & 1) == 0)
                {
                    l_li++;
                    continue;
                }
                
                l_uid = array_get(ds_list_find_value(l_ll, l_li), 1);
                break;
            }
        }
        
        var l_states = l_player[4];
        var l_state = ds_list_find_value(l_states, ds_list_size(l_states) - 1);
        
        if (l_uid != 0)
            ds_list_add(l_state[8], [1, l_uid]);
        else
            ds_list_add(l_state[8], global.dp_input_state_event_leaving);
        
        l_i++;
    }
    
    global.dp_replay_takeover_state_hx = -1;
}

function dp_replay_set_view(argument0)
{
    if (!(global.dp_replay_is_playing || dp_player_find_local(0) < 0))
        return 0;
    
    if (!dp_player_is_active(argument0))
        return 0;
    
    var l_l = global.dp_player_list_hx;
    var l_uid = array_get(ds_list_find_value(l_l, argument0), 1);
    var l_n = ds_list_size(l_l);
    var l_f = 0;
    
    for (var l_i = 0; l_i < l_n; l_i++)
    {
        var l_p = ds_list_find_value(l_l, l_i);
        
        if (l_p != undefined)
        {
            if (l_p[1] == l_uid)
            {
                array_set(l_p, 15, 1);
                l_f |= (1 << l_i);
            }
            else
            {
                array_set(l_p, 15, 0);
            }
        }
    }
    
    if (ds_list_size(global.dp_link_list_hx) > 0)
    {
        var l_out = global.dp_out;
        buffer_seek(l_out, buffer_seek_start, 0);
        buffer_write(l_out, buffer_u8, 248);
        buffer_write(l_out, buffer_u32, l_f);
        dp_link_send_hx(l_out);
    }
    
    return 1;
}

function dp_replay_write_next_hx()
{
    var l_pl = global.dp_player_list_hx;
    var l_pn = ds_list_size(l_pl);
    var l_v = 0;
    
    for (var l_i = 0; l_i < l_pn; l_i++)
    {
        if (ds_list_find_value(l_pl, l_i) != undefined)
            l_v |= (1 << l_i);
    }
    
    buffer_write(global.dp_replay_buffer, buffer_u32, l_v);
    
    for (var l_i = 0; l_i < l_pn; l_i++)
    {
        if (ds_list_find_value(l_pl, l_i) != undefined)
            dp_state_write_hx(array_get(ds_list_find_value(l_pl, l_i), 7), global.dp_replay_buffer, 1);
    }
    
    global.dp_replay_frames += 1;
}

function dp_replay_read_next_hx()
{
    if (!global.dp_replay_is_playing || !global.dp_replay_is_reading)
        return 0;
    
    var l_pl = global.dp_player_list_hx;
    var l_pn = ds_list_size(l_pl);
    var l_cf = global.dp_current_frame;
    var l_tf = global.dp_replay_frames;
    
    if (l_cf < l_tf && global.dp_replay_buffer != undefined && buffer_tell(global.dp_replay_buffer) < buffer_get_size(global.dp_replay_buffer))
    {
        global.dp_replay_prev_pos_hx = buffer_tell(global.dp_replay_buffer);
        var l_f = buffer_read(global.dp_replay_buffer, buffer_u32);
        
        for (var l_i = 0; l_i < l_pn; l_i++)
        {
            if ((l_f & (1 << l_i)) != 0)
            {
                if (ds_list_find_value(l_pl, l_i) != undefined)
                {
                    var l_state = dp_state_create_ext_hx();
                    dp_state_read_hx(l_state, global.dp_replay_buffer);
                    ds_list_add(array_get(ds_list_find_value(l_pl, l_i), 4), l_state);
                }
                else if (global.dp_debug_warnings)
                {
                    dp_debug_log_hx("Warning", "Can't read state for empty P" + string(l_i + 1) + ".");
                }
            }
            else if (ds_list_find_value(l_pl, l_i) != undefined)
            {
                var l_state = dp_state_create_ext_hx();
                ds_list_add(l_state[8], global.dp_input_state_event_leaving);
                ds_list_add(array_get(ds_list_find_value(l_pl, l_i), 4), l_state);
            }
        }
        
        if (global.dp_replay_takeover_state_hx > 0)
            dp_replay_handle_takeover_hx();
    }
    else
    {
        if (global.dp_debug_state)
            dp_debug_log_hx("State", "frames: " + string(l_cf) + "/" + string(l_tf));
        
        if (global.dp_replay_buffer != undefined)
        {
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "buffer: " + string(buffer_tell(global.dp_replay_buffer)) + "/" + string(buffer_get_size(global.dp_replay_buffer)));
        }
        else if (global.dp_debug_state)
        {
            dp_debug_log_hx("State", "no buffer.");
        }
        
        if (global.dp_debug_state)
            dp_debug_log_hx("State", "Replay end.");
        
        var l_this1 = global.dp_replay_on_complete;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1();
        
        global.dp_replay_is_reading = 0;
        
        for (var l_i = 0; l_i < l_pn; l_i++)
        {
            var l_p = ds_list_find_value(l_pl, l_i);
            
            if (l_p != undefined)
            {
                if (l_p[1] != global.dp_local_uid)
                {
                    dp_player_destroy_hx(l_p);
                    ds_list_set(l_pl, l_i, undefined);
                    l_this1 = global.dp_player_on_change;
                    l_f = l_this1;
                    
                    if (l_f != undefined && l_f >= 0)
                        l_this1(l_i);
                }
            }
        }
    }
}

function dp_replay_reset_hx()
{
    if (global.dp_replay_is_recording)
    {
        if (global.dp_replay_path != "")
        {
            var l_p = buffer_tell(global.dp_replay_buffer);
            buffer_seek(global.dp_replay_buffer, buffer_seek_start, global.dp_replay_frames_pos_hx);
            buffer_write(global.dp_replay_buffer, buffer_u32, global.dp_replay_frames);
            buffer_save_ext(global.dp_replay_buffer, global.dp_replay_path, 0, l_p);
        }
        
        global.dp_replay_is_recording = 0;
    }
    
    global.dp_replay_takeover_state_hx = 0;
    global.dp_replay_is_reading = 0;
    global.dp_replay_is_playing = 0;
    
    if (global.dp_replay_buffer != undefined)
    {
        buffer_delete(global.dp_replay_buffer);
        global.dp_replay_buffer = undefined;
    }
    
    global.dp_replay_path = "";
}

function dp_scheme_create()
{
    var this = [global.mt_dp_scheme];
    array_copy(this, 1, global.mq_dp_scheme, 1, 4);
    array_set(this, 4, []);
    var l_n = global.dp_button_count;
    array_set(this, 1, dp_array_alloc(l_n, undefined));
    
    for (var l_i = 0; l_i < l_n; l_i++)
        array_set(array_get(this, 1), l_i, dp_input_node_create());
    
    l_n = global.dp_axis_count;
    array_set(this, 2, dp_array_alloc(l_n, undefined));
    
    for (var l_i = 0; l_i < l_n; l_i++)
        array_set(array_get(this, 2), l_i, dp_input_node_create());
    
    l_n = global.dp_pos_count;
    array_set(this, 3, dp_array_alloc(l_n, undefined));
    
    for (var l_i = 0; l_i < l_n; l_i++)
        array_set(array_get(this, 3), l_i, dp_input_node_create());
    
    return this;
}

function dp_scheme_copy(argument0)
{
    var l_r = dp_scheme_create();
    var l_n = array_length(argument0[1]);
    
    for (var l_i = 0; l_i < l_n; l_i++)
        dp_input_node_set_expr(l_r[1][l_i], argument0[1][l_i][2]);
    
    l_n = array_length(argument0[2]);
    
    for (var l_i = 0; l_i < l_n; l_i++)
        dp_input_node_set_expr(l_r[2][l_i], argument0[2][l_i][2]);
    
    l_n = array_length(argument0[3]);
    
    for (var l_i = 0; l_i < l_n; l_i++)
        dp_input_node_set_expr(l_r[3][l_i], argument0[3][l_i][2]);
    
    array_set(l_r, 4, dp_gml_internal_ArrayImpl_copy(argument0[4]));
    return l_r;
}

function dp_scheme_get_button(argument0, argument1)
{
    if (ds_map_exists(global.dp_button_map, argument1))
    {
        return array_get(array_get(array_get(argument0, 1), ds_map_find_value(global.dp_button_map, argument1)), 2);
    }
    else
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known button.");
        
        return undefined;
    }
}

function dp_scheme_set_button(argument0, argument1, argument2)
{
    if (ds_map_exists(global.dp_button_map, argument1))
        dp_input_node_set_expr(array_get(array_get(argument0, 1), ds_map_find_value(global.dp_button_map, argument1)), argument2);
    else if (global.dp_debug_warnings)
        dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known button.");
}

function dp_scheme_get_axis(argument0, argument1)
{
    if (ds_map_exists(global.dp_axis_map, argument1))
    {
        return array_get(array_get(array_get(argument0, 2), ds_map_find_value(global.dp_axis_map, argument1)), 2);
    }
    else
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known axis.");
        
        return undefined;
    }
}

function dp_scheme_set_axis(argument0, argument1, argument2)
{
    if (ds_map_exists(global.dp_axis_map, argument1))
        dp_input_node_set_expr(array_get(array_get(argument0, 2), ds_map_find_value(global.dp_axis_map, argument1)), argument2);
    else if (global.dp_debug_warnings)
        dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known axis.");
}

function dp_scheme_get_pos(argument0, argument1)
{
    if (ds_map_exists(global.dp_pos_map, argument1))
    {
        return array_get(array_get(array_get(argument0, 3), ds_map_find_value(global.dp_pos_map, argument1)), 2);
    }
    else
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known position.");
        
        return undefined;
    }
}

function dp_scheme_set_pos(argument0, argument1, argument2)
{
    if (ds_map_exists(global.dp_pos_map, argument1))
        dp_input_node_set_expr(array_get(array_get(argument0, 3), ds_map_find_value(global.dp_pos_map, argument1)), argument2);
    else if (global.dp_debug_warnings)
        dp_debug_log_hx("Warning", "\"" + dp_Std_stringify(argument1) + "\" is not a known position.");
}

function dp_scheme_get_button_node(argument0, argument1)
{
    if (ds_map_exists(global.dp_button_map, argument1))
        return array_get(array_get(argument0, 1), ds_map_find_value(global.dp_button_map, argument1));
    else
        return undefined;
}

function dp_scheme_get_axis_node(argument0, argument1)
{
    if (ds_map_exists(global.dp_axis_map, argument1))
        return array_get(array_get(argument0, 2), ds_map_find_value(global.dp_axis_map, argument1));
    else
        return undefined;
}

function dp_scheme_get_pos_node(argument0, argument1)
{
    if (ds_map_exists(global.dp_pos_map, argument1))
        return array_get(array_get(argument0, 3), ds_map_find_value(global.dp_pos_map, argument1));
    else
        return undefined;
}

function dp_scheme_get_data(argument0, argument1)
{
    return argument0[4][argument1];
}

function dp_scheme_set_data(argument0, argument1, argument2)
{
    array_set(array_get(argument0, 4), argument1, argument2);
}

function dp_scheme_write_ini(argument0, argument1)
{
    var l_n = global.dp_button_count;
    
    for (var l_i = 0; l_i < l_n; l_i++)
        ini_write_string(argument1, global.dp_button_names[l_i], argument0[1][l_i][2]);
    
    l_n = global.dp_axis_count;
    
    for (var l_i = 0; l_i < l_n; l_i++)
        ini_write_string(argument1, global.dp_axis_names[l_i], argument0[2][l_i][2]);
    
    l_n = global.dp_pos_count;
    
    for (var l_i = 0; l_i < l_n; l_i++)
        ini_write_string(argument1, global.dp_pos_names[l_i], argument0[3][l_i][2]);
}

function dp_scheme_read_ini(argument0, argument1)
{
    var l_n = global.dp_button_count;
    
    for (var l_i = 0; l_i < l_n; l_i++)
        dp_input_node_set_expr(argument0[1][l_i], ini_read_string(argument1, global.dp_button_names[l_i], ""));
    
    l_n = global.dp_axis_count;
    
    for (var l_i = 0; l_i < l_n; l_i++)
        dp_input_node_set_expr(argument0[2][l_i], ini_read_string(argument1, global.dp_axis_names[l_i], ""));
    
    l_n = global.dp_pos_count;
    
    for (var l_i = 0; l_i < l_n; l_i++)
        dp_input_node_set_expr(argument0[3][l_i], ini_read_string(argument1, global.dp_pos_names[l_i], ""));
}

function dp_buffer_count(argument0)
{
    var l_slot = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_slot != undefined)
        return ds_list_size(l_slot[7][7]);
    
    return 0;
}

function dp_buffer_id(argument0, argument1)
{
    var l_slot = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_slot != undefined && argument1 >= 0)
    {
        var l_seq = l_slot[7][7];
        
        if (argument1 < ds_list_size(l_seq))
            return ds_list_find_value(l_seq, argument1);
    }
    
    return undefined;
}

function dp_buffer_size(argument0, argument1)
{
    var l_slot = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_slot != undefined && argument1 >= 0)
    {
        var l_seq = l_slot[7][7];
        
        if (argument1 < ds_list_size(l_seq))
            return buffer_get_size(ds_list_find_value(l_seq, argument1));
    }
    
    return 0;
}

function dp_buffer_send(argument0, argument1, argument2)
{
    var l_player1 = (argument1 != undefined) ? argument1 : dp_player_find_local();
    var l_size1 = (argument2 != undefined) ? argument2 : buffer_tell(argument0);
    var l_slot = ds_list_find_value(global.dp_player_list_hx, l_player1);
    
    if (l_slot != undefined && l_slot[1] == global.dp_local_uid)
    {
        var l_copy = buffer_create(l_size1, buffer_grow, 1);
        buffer_copy(argument0, 0, l_size1, l_copy, 0);
        ds_list_add(l_slot[11], l_copy);
        return 1;
    }
    else
    {
        return 0;
    }
}

function dp_state_new_hx()
{
    var this = [global.mt_dp_state];
    array_copy(this, 1, global.mq_dp_state, 1, 12);
    array_set(this, 12, 1);
    array_set(this, 11, 0);
    array_set(this, 10, 0);
    array_set(this, 9, 0);
    array_set(this, 8, ds_list_create());
    array_set(this, 7, ds_list_create());
    array_set(this, 6, "");
    array_set(this, 5, array_create(global.dp_pos_count));
    array_set(this, 4, array_create(global.dp_axis_count));
    array_set(this, 3, array_create(global.dp_pos_count));
    array_set(this, 2, array_create(global.dp_axis_count));
    array_set(this, 1, array_create(global.dp_button_count));
    return this;
}

function dp_state_create_ext_hx()
{
    var l_i = ds_list_size(global.dp_state_pool_hx) - 1;
    var l_q;
    
    if (l_i >= 0)
    {
        l_q = ds_list_find_value(global.dp_state_pool_hx, l_i);
        ds_list_delete(global.dp_state_pool_hx, l_i);
    }
    else
    {
        l_q = dp_state_new_hx();
    }
    
    array_set(l_q, 10, 0);
    array_set(l_q, 11, 0);
    dp_type_vector_clear(l_q[1], 0);
    dp_type_vector_clear(l_q[2], 0);
    dp_type_vector_clear(l_q[3], 0);
    dp_type_vector_clear(l_q[4], 0);
    dp_type_vector_clear(l_q[5], 0);
    array_set(l_q, 6, "");
    array_set(l_q, 9, 0);
    array_set(l_q, 12, 1);
    return l_q;
}

function dp_state_init_hx(argument0)
{
    array_set(argument0, 10, 0);
    array_set(argument0, 11, 0);
    dp_type_vector_clear(argument0[1], 0);
    dp_type_vector_clear(argument0[2], 0);
    dp_type_vector_clear(argument0[3], 0);
    dp_type_vector_clear(argument0[4], 0);
    dp_type_vector_clear(argument0[5], 0);
    array_set(argument0, 6, "");
    array_set(argument0, 9, 0);
    array_set(argument0, 12, 1);
}

function dp_state_ref_hx(argument0)
{
    array_set_post(argument0, 12, array_get(argument0, 12) + 1);
    return argument0;
}

function dp_state_deref_hx(argument0)
{
    if (array_set_pre(argument0, 12, array_get(argument0, 12) - 1) <= 0)
        dp_state_destroy_hx(argument0);
}

function dp_state_destroy_hx(argument0)
{
    if (argument0[10])
        return 0;
    
    array_set(argument0, 10, 1);
    array_set(argument0, 6, undefined);
    var l__g_list = argument0[7];
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
        buffer_delete(ds_list_find_value(l__g_list, l__g_index++));
    
    ds_list_clear(argument0[7]);
    ds_list_clear(argument0[8]);
    ds_list_add(global.dp_state_pool_hx, argument0);
}

function dp_state_clear_hx(argument0)
{
    dp_type_vector_clear(argument0[1], 0);
    dp_type_vector_clear(argument0[2], 0);
    dp_type_vector_clear(argument0[3], 0);
    dp_type_vector_clear(argument0[4], 0);
    dp_type_vector_clear(argument0[5], 0);
    array_set(argument0, 6, "");
    var l_seq = argument0[7];
    var l_i = ds_list_size(l_seq);
    
    while (--l_i >= 0)
    {
        buffer_delete(ds_list_find_value(l_seq, l_i));
        ds_list_delete(l_seq, l_i);
    }
    
    ds_list_clear(argument0[8]);
    array_set(argument0, 9, 0);
}

function dp_state_equals_hx(argument0, argument1)
{
    var l_b0 = argument0[1];
    var l_b1 = argument1[1];
    var l_n = array_length(l_b0);
    
    for (l_i = 0; l_i < l_n; l_i++)
    {
        if (l_b0[l_i] != l_b1[l_i])
            return 0;
    }
    
    var l_a0 = argument0[4];
    var l_a1 = argument1[4];
    l_n = array_length(l_a0);
    
    for (l_i = 0; l_i < l_n; l_i++)
    {
        if (l_a0[l_i] != l_a1[l_i])
            return 0;
    }
    
    var l_p0 = argument0[5];
    var l_p1 = argument1[5];
    l_n = array_length(l_p0);
    
    for (l_i = 0; l_i < l_n; l_i++)
    {
        if (l_p0[l_i] != l_p1[l_i])
            return 0;
    }
    
    if (argument0[6] != argument1[6])
        return 0;
    
    var l_i = ds_list_size(argument0[7]);
    var l_k = ds_list_size(argument1[7]);
    
    if (l_i > 0 || l_k > 0)
        return 0;
    
    l_n = (l_i < l_k) ? l_i : l_k;
    
    if (ds_list_size(argument0[8]) > 0 || ds_list_size(argument1[8]) > 0)
        return 0;
    
    return 1;
}

function dp_state_clone_hx(argument0, argument1)
{
    var l_r = dp_state_create_ext_hx();
    dp_state_set_to_hx(l_r, argument0, argument1);
    return l_r;
}

function dp_state_set_to_hx(argument0, argument1, argument2)
{
    var l_i = global.dp_button_count;
    var l_buttons0 = argument0[1];
    var l_buttons1 = argument1[1];
    
    while (--l_i >= 0)
        array_set(l_buttons0, l_i, l_buttons1[l_i]);
    
    if (argument2)
    {
        l_i = global.dp_axis_count;
        var l_nx1 = argument0[4];
        var l_nx0 = argument1[4];
        
        while (--l_i >= 0)
            array_set(l_nx1, l_i, l_nx0[l_i]);
        
        l_i = global.dp_pos_count;
        var l_np1 = argument0[5];
        var l_np0 = argument1[5];
        
        while (--l_i >= 0)
            array_set(l_np1, l_i, l_np0[l_i]);
        
        dp_state_net_read_hx(argument0);
    }
    else
    {
        l_i = global.dp_axis_count;
        
        while (--l_i >= 0)
            array_set(array_get(argument0, 2), l_i, argument1[2][l_i]);
        
        l_i = global.dp_pos_count;
        
        while (--l_i >= 0)
            array_set(array_get(argument0, 3), l_i, argument1[3][l_i]);
        
        dp_state_net_set_hx(argument0);
    }
    
    array_set(argument0, 9, argument1[9]);
}

function dp_state_net_set_hx(argument0)
{
    var l_i = global.dp_axis_count;
    
    while (--l_i >= 0)
        array_set(array_get(argument0, 4), l_i, round(argument0[2][l_i] * global.dp_axis_steps[l_i]));
    
    l_i = global.dp_pos_count;
    
    while (--l_i >= 0)
        array_set(array_get(argument0, 5), l_i, round((argument0[3][l_i] - global.dp_pos_min[l_i]) * global.dp_pos_steps[l_i]));
}

function dp_state_net_read_hx(argument0)
{
    var l_i = global.dp_axis_count;
    
    while (--l_i >= 0)
        array_set(array_get(argument0, 2), l_i, argument0[4][l_i] / global.dp_axis_steps[l_i]);
    
    l_i = global.dp_pos_count;
    
    while (--l_i >= 0)
    {
        var l_pmin = global.dp_pos_min[l_i];
        var l_pmax = global.dp_pos_max[l_i];
        var l_pval = (argument0[5][l_i] / global.dp_pos_steps[l_i]) + l_pmin;
        
        if (l_pval < l_pmin)
            l_pval = l_pmin;
        
        if (l_pval > l_pmax)
            l_pval = l_pmax;
        
        array_set(array_get(argument0, 3), l_i, l_pval);
    }
}

function dp_state_poll_hx(argument0, argument1, argument2 = -1)
{
    var l_fn = global.dp_state_on_poll;
    var l_f = l_fn;
    
    if (l_f != undefined && l_f >= 0)
    {
        l_f = l_fn;
        
        if (l_f != undefined && l_f >= 0)
            l_fn(argument0, argument2);
        
        dp_state_net_set_hx(argument0);
        return 0;
    }
    
    var l_q = undefined;
    var l_n = global.dp_button_count;
    
    if (l_n > 0)
    {
        var l_buttons = argument0[1];
        
        for (var l_i = 0; l_i < l_n; l_i++)
        {
            if (argument1 != undefined)
                l_q = argument1[1][l_i];
            else
                l_q = global.dp_button_nodes[l_i];
            
            if (l_q != undefined)
            {
                l_f = l_buttons[l_i] ? 1 : 0;
                var l_current = l_f;
                var l_slot1 = argument2;
                
                if (l_slot1 == undefined)
                    l_slot1 = -1;
                
                if (l_current == undefined)
                    l_current = 0;
                
                array_set(l_buttons, l_i, dp_input_node_exec_leaf_hx(l_q[1], l_current, l_slot1, 0) > 0.5);
            }
        }
    }
    
    l_n = global.dp_axis_count;
    
    if (l_n > 0)
    {
        var l_axes = argument0[2];
        
        for (var l_i = 0; l_i < l_n; l_i++)
        {
            if (argument1 != undefined)
                l_q = argument1[2][l_i];
            else
                l_q = global.dp_axis_nodes[l_i];
            
            if (l_q != undefined)
            {
                var l_current = l_axes[l_i];
                var l_slot1 = argument2;
                
                if (l_slot1 == undefined)
                    l_slot1 = -1;
                
                if (l_current == undefined)
                    l_current = 0;
                
                array_set(l_axes, l_i, clamp(dp_input_node_exec_leaf_hx(l_q[1], l_current, l_slot1, 0), -1, 1));
            }
        }
    }
    
    l_n = global.dp_pos_count;
    
    if (l_n > 0)
    {
        var l_posx = argument0[3];
        var l_pmin = global.dp_pos_min;
        var l_pmax = global.dp_pos_max;
        
        for (var l_i = 0; l_i < l_n; l_i++)
        {
            if (argument1 != undefined)
                l_q = argument1[3][l_i];
            else
                l_q = global.dp_pos_nodes[l_i];
            
            if (l_q != undefined)
            {
                l_f = l_posx[l_i];
                var l_current = l_f;
                var l_slot1 = argument2;
                
                if (l_slot1 == undefined)
                    l_slot1 = -1;
                
                if (l_current == undefined)
                    l_current = 0;
                
                array_set(l_posx, l_i, clamp(l_f + dp_input_node_exec_leaf_hx(l_q[1], l_current, l_slot1, 0), l_pmin[l_i], l_pmax[l_i]));
            }
        }
    }
    
    dp_state_net_set_hx(argument0);
}

function dp_state_write_hx(argument0, argument1, argument2 = 0)
{
    var l_buttons = argument0[1];
    var l_i = 0;
    var l_n = global.dp_button_count;
    var l_k = 0;
    var l_f = 0;
    
    while (l_i < l_n)
    {
        var l_sync = !global.dp_button_is_async[l_i];
        
        if (l_sync)
        {
            if (l_buttons[l_i])
                l_f |= (1 << (l_k & 7));
            
            l_k++;
        }
        
        l_i++;
        
        if ((l_sync && (l_k & 7) == 0) || l_i >= l_n)
        {
            buffer_write(argument1, buffer_u8, l_f);
            l_f = 0;
        }
    }
    
    var l_axes = argument0[4];
    l_i = 0;
    l_n = global.dp_axis_count;
    
    while (l_i < l_n)
    {
        if (!global.dp_axis_is_async[l_i])
        {
            l_k = global.dp_axis_steps[l_i];
            
            if (l_k < 127)
                buffer_write(argument1, buffer_s8, l_axes[l_i]);
            else if (l_k < 32767)
                buffer_write(argument1, buffer_s16, l_axes[l_i]);
            else
                buffer_write(argument1, buffer_s32, l_axes[l_i]);
        }
        
        l_i++;
    }
    
    var l_positions = argument0[5];
    l_i = 0;
    l_n = global.dp_pos_count;
    
    while (l_i < l_n)
    {
        if (!global.dp_pos_is_async[l_i])
        {
            l_k = ceil((global.dp_pos_steps[l_i] * (global.dp_pos_max[l_i] - global.dp_pos_min[l_i])) + 1);
            
            if (l_k <= 255)
                buffer_write(argument1, buffer_u8, l_positions[l_i]);
            else if (l_k <= 65535)
                buffer_write(argument1, buffer_u16, l_positions[l_i]);
            else
                buffer_write(argument1, buffer_u32, l_positions[l_i]);
        }
        
        l_i++;
    }
    
    var l_seq = argument0[7];
    var l_evs = argument0[8];
    l_f = 0;
    
    if (argument0[6] != "")
        l_f |= 1;
    
    if (ds_list_size(l_seq) > 0)
        l_f |= 2;
    
    if (ds_list_size(l_evs) > 0)
        l_f |= 4;
    
    buffer_write(argument1, buffer_u8, l_f);
    
    if ((l_f & 1) != 0)
        buffer_write(argument1, buffer_string, argument0[6]);
    
    if ((l_f & 2) != 0)
    {
        l_n = ds_list_size(l_seq);
        buffer_write(argument1, buffer_u32, l_n);
        
        for (l_i = 0; l_i < l_n; l_i++)
        {
            var l_sqb = ds_list_find_value(l_seq, l_i);
            buffer_write(argument1, buffer_u32, buffer_get_size(l_sqb));
            dp_buffer_write_buffer(argument1, l_sqb, buffer_get_size(l_sqb));
        }
    }
    
    if ((l_f & 4) != 0)
    {
        l_n = ds_list_size(l_evs);
        buffer_write(argument1, buffer_u32, l_n);
        
        for (l_i = 0; l_i < l_n; l_i++)
        {
            var l__g = ds_list_find_value(l_evs, l_i);
            
            switch (l__g[0])
            {
                case 0:
                    buffer_write(argument1, buffer_u8, 1);
                    break;
                
                case 1:
                    if (argument2)
                    {
                        buffer_write(argument1, buffer_u8, 3);
                    }
                    else
                    {
                        buffer_write(argument1, buffer_u8, 2);
                        buffer_write(argument1, buffer_s32, l__g[1]);
                    }
                    
                    break;
                
                case 2:
                    buffer_write(argument1, buffer_u8, 3);
                    break;
                
                case 3:
                    buffer_write(argument1, buffer_u8, 4);
                    buffer_write(argument1, buffer_s8, l__g[1]);
                    break;
            }
        }
    }
    
    if (global.dp_flow_detect_desyncs)
        buffer_write(argument1, buffer_u32, argument0[9]);
}

function dp_state_read_hx(argument0, argument1)
{
    var l_buttons = argument0[1];
    var l_i = 0;
    var l_n = global.dp_button_count;
    var l_k = 0;
    var l_f = 0;
    
    while (l_i < l_n)
    {
        if (!global.dp_button_is_async[l_i])
        {
            if ((l_k & 7) == 0)
                l_f = buffer_read(argument1, buffer_u8);
            
            array_set(l_buttons, l_i, (l_f & (1 << (l_k & 7))) != 0);
            l_k++;
        }
        
        l_i++;
    }
    
    var l_axes = argument0[4];
    l_i = 0;
    l_n = global.dp_axis_count;
    
    while (l_i < l_n)
    {
        if (!global.dp_axis_is_async[l_i])
        {
            l_k = global.dp_axis_steps[l_i];
            
            if (l_k < 127)
                array_set(l_axes, l_i, buffer_read(argument1, buffer_s8));
            else if (l_k < 32767)
                array_set(l_axes, l_i, buffer_read(argument1, buffer_s16));
            else
                array_set(l_axes, l_i, buffer_read(argument1, buffer_s32));
        }
        
        l_i++;
    }
    
    var l_positions = argument0[5];
    l_i = 0;
    l_n = global.dp_pos_count;
    
    while (l_i < l_n)
    {
        if (!global.dp_pos_is_async[l_i])
        {
            l_k = ceil((global.dp_pos_steps[l_i] * (global.dp_pos_max[l_i] - global.dp_pos_min[l_i])) + 1);
            
            if (l_k <= 255)
                array_set(l_positions, l_i, buffer_read(argument1, buffer_u8));
            else if (l_k <= 65535)
                array_set(l_positions, l_i, buffer_read(argument1, buffer_u16));
            else
                array_set(l_positions, l_i, buffer_read(argument1, buffer_u32));
        }
        
        l_i++;
    }
    
    l_f = buffer_read(argument1, buffer_u8);
    
    if ((l_f & 1) != 0)
        array_set(argument0, 6, buffer_read(argument1, buffer_string));
    
    if ((l_f & 2) != 0)
    {
        l_n = buffer_read(argument1, buffer_u32);
        
        for (l_i = 0; l_i < l_n; l_i++)
        {
            l_k = buffer_read(argument1, buffer_u32);
            var l_buf = buffer_create(l_k, buffer_grow, 1);
            dp_buffer_read_buffer(argument1, l_buf, 0, l_k);
            ds_list_add(argument0[7], l_buf);
        }
    }
    
    if ((l_f & 4) != 0)
    {
        l_n = buffer_read(argument1, buffer_u32);
        var l_evs = argument0[8];
        
        for (l_i = 0; l_i < l_n; l_i++)
        {
            switch (buffer_read(argument1, buffer_u8))
            {
                case 1:
                    ds_list_add(l_evs, global.dp_input_state_event_leaving);
                    break;
                
                case 2:
                    ds_list_add(l_evs, [1, buffer_read(argument1, buffer_s32)]);
                    break;
                
                case 3:
                    ds_list_add(l_evs, global.dp_input_state_event_owner_change_re);
                    break;
                
                case 4:
                    ds_list_add(l_evs, [3, buffer_read(argument1, buffer_s8)]);
                    break;
            }
        }
    }
    
    if (global.dp_flow_detect_desyncs)
        array_set(argument0, 9, buffer_read(argument1, buffer_u32));
    
    dp_state_net_read_hx(argument0);
}

function dp_state_get_button(argument0, argument1)
{
    if (ds_map_exists(global.dp_button_map, argument1))
        return array_get(array_get(argument0, 1), ds_map_find_value(global.dp_button_map, argument1));
    else
        return 0;
}

function dp_state_set_button(argument0, argument1, argument2)
{
    if (ds_map_exists(global.dp_button_map, argument1))
        array_set(array_get(argument0, 1), ds_map_find_value(global.dp_button_map, argument1), argument2);
}

function dp_state_get_axis(argument0, argument1)
{
    if (ds_map_exists(global.dp_axis_map, argument1))
        return array_get(array_get(argument0, 2), ds_map_find_value(global.dp_axis_map, argument1));
    else
        return 0;
}

function dp_state_set_axis(argument0, argument1, argument2)
{
    if (ds_map_exists(global.dp_axis_map, argument1))
        array_set(array_get(argument0, 2), ds_map_find_value(global.dp_axis_map, argument1), argument2);
}

function dp_state_get_pos(argument0, argument1)
{
    if (ds_map_exists(global.dp_pos_map, argument1))
        return array_get(array_get(argument0, 3), ds_map_find_value(global.dp_pos_map, argument1));
    else
        return 0;
}

function dp_state_set_pos(argument0, argument1, argument2)
{
    if (ds_map_exists(global.dp_pos_map, argument1))
        array_set(array_get(argument0, 3), ds_map_find_value(global.dp_pos_map, argument1), argument2);
}

function dp_state_print_hx(argument0)
{
    var l_r = "{ seed: " + dp_StringTools_hex(argument0[9], 8);
    var l_n = global.dp_button_count;
    
    for (var l_i = 0; l_i < l_n; l_i++)
        l_r += (", " + global.dp_button_names[l_i] + ": " + dp_Std_stringify(argument0[1][l_i]));
    
    l_n = global.dp_axis_count;
    
    for (var l_i = 0; l_i < l_n; l_i++)
        l_r += (", " + global.dp_axis_names[l_i] + ": " + dp_Std_stringify(argument0[2][l_i]));
    
    l_n = global.dp_pos_count;
    
    for (var l_i = 0; l_i < l_n; l_i++)
        l_r += (", " + global.dp_pos_names[l_i] + ": " + dp_Std_stringify(argument0[3][l_i]));
    
    var l_s = argument0[6];
    
    if (l_s != "")
        l_r += (", text: \"" + l_s + "\"");
    
    var l_seq = argument0[7];
    l_n = ds_list_size(l_seq);
    
    if (l_n > 0)
    {
        l_r += ", seq: [";
        
        for (var l_i = 0; l_i < l_n; l_i++)
        {
            if (l_i > 0)
                l_r += ", ";
            
            var l_sqb = ds_list_find_value(l_seq, l_i);
            l_r += dp_print_buffer(l_sqb, buffer_get_size(l_sqb));
        }
        
        l_r += "]";
    }
    
    var l_evs = argument0[8];
    l_n = ds_list_size(l_evs);
    
    if (l_n > 0)
    {
        l_r += ", events: [";
        
        for (var l_i = 0; l_i < l_n; l_i++)
        {
            var l_e = ds_list_find_value(l_evs, l_i);
            
            if (l_i > 0)
                l_r += ", ";
            
            switch (l_e[0])
            {
                case 0:
                    l_r += "Leaving";
                    break;
                
                case 1:
                    l_r += ("OwnerChange(" + dp_Std_stringify(l_e[1]) + ")");
                    break;
                
                case 2:
                    l_r += "OwnerChangeRe";
                    break;
                
                case 3:
                    l_r += ("DelayChange(" + string(l_e[1]) + ")");
                    break;
            }
        }
        
        l_r += "]";
    }
    
    l_r += " }";
    return l_r;
}

function dp_text_get(argument0)
{
    var l_slot = ds_list_find_value(global.dp_player_list_hx, argument0);
    
    if (l_slot != undefined)
        return l_slot[7][6];
    
    return "";
}

function dp_text_send(argument0, argument1)
{
    var l_player1 = (argument1 != undefined) ? argument1 : dp_player_find_local();
    var l_slot = ds_list_find_value(global.dp_player_list_hx, l_player1);
    
    if (l_slot == undefined)
    {
        if (global.dp_text_mode < 0)
            return 0;
    }
    else if (l_slot[1] != global.dp_local_uid)
    {
        return 0;
    }
    
    if (global.dp_text_mode >= 0)
    {
        var l_out = global.dp_out;
        var l_uslot = (l_player1 >= 0) ? l_player1 : 255;
        buffer_seek(l_out, buffer_seek_start, 0);
        buffer_write(l_out, buffer_u8, 253);
        buffer_write(l_out, buffer_u8, l_uslot);
        buffer_write(l_out, buffer_string, argument0);
        dp_link_send_hx(l_out);
        var l_this1 = global.dp_flow_on_message;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1(argument0, l_player1, global.dp_local_uid);
    }
    
    if (global.dp_text_mode <= 0 && l_slot != undefined)
        ds_list_add(l_slot[10], argument0);
    
    return 1;
}

function dp_input_ast_in_func_def_call1_hx(argument0, argument1)
{
    switch (argument0)
    {
        case 0:
            return abs(argument1);
        
        case 1:
            if (argument1 < 0)
                return -1;
            else if (argument1 > 0)
                return 1;
            else
                return 0;
        
        default:
            return 0;
    }
}

function dp_input_ast_in_func_def_call2_hx(argument0, argument1, argument2)
{
    if (argument0 == 0)
    {
        if (abs(argument1) >= argument2)
            return argument1;
        else
            return 0;
    }
    else
    {
        return 0;
    }
}

function dp_input_ast_in_func_def_call3_hx(argument0, argument1, argument2, argument3)
{
    switch (argument0)
    {
        case 0:
            if (argument1 < argument2)
                return argument2;
            else if (argument1 > argument3)
                return argument3;
            else
                return argument1;
        
        case 1:
            return argument1 + ((argument2 - argument1) * argument3);
        
        case 2:
            if (argument2 != argument3)
                return (argument1 - argument2) / (argument3 - argument2);
            else
                return 0;
        
        case 3:
            if (argument1 < argument2)
            {
                self.argument1 += argument3;
                
                if (argument1 < argument2)
                    return argument1;
                else
                    return argument2;
            }
            else
            {
                self.argument1 -= argument3;
                
                if (argument1 > argument2)
                    return argument1;
                else
                    return argument2;
            }
        
        default:
            return 0;
    }
}

function dp_input_ast_in_func_def_callx_hx(argument0, argument1)
{
    var l_n = array_length(argument1);
    
    switch (argument0)
    {
        case 0:
            var l_r = argument1[0];
            
            for (var l_i = 1; l_i < l_n; l_i++)
            {
                var l_v = argument1[l_i];
                
                if (l_v < l_r)
                    l_r = l_v;
            }
            
            return l_r;
        
        case 1:
            l_r = argument1[0];
            
            for (var l_i = 1; l_i < l_n; l_i++)
            {
                var l_v = argument1[l_i];
                
                if (l_v > l_r)
                    l_r = l_v;
            }
            
            return l_r;
        
        case 2:
            l_r = argument1[0];
            
            for (var l_i = 1; l_i < l_n; l_i++)
                l_r += argument1[l_i];
            
            return l_r / l_n;
        
        case 3:
            var l_q = argument1[0];
            
            if (l_n <= 1)
                return l_q;
            
            l_r = argument1[1];
            var l_rd = abs(l_r - l_q);
            
            for (var l_i = 2; l_i < l_n; l_i++)
            {
                var l_v = argument1[l_i];
                var l_d = abs(l_v - l_q);
                
                if (l_d < l_rd)
                {
                    l_r = l_v;
                    l_rd = l_d;
                }
            }
            
            return l_r;
        
        case 4:
            l_q = argument1[0];
            
            if (l_n <= 1)
                return l_q;
            
            l_r = argument1[1];
            l_rd = abs(l_r - l_q);
            
            for (var l_i = 2; l_i < l_n; l_i++)
            {
                var l_v = argument1[l_i];
                var l_d = abs(l_v - l_q);
                
                if (l_d > l_rd)
                {
                    l_r = l_v;
                    l_rd = l_d;
                }
            }
            
            return l_r;
        
        default:
            return 0;
    }
}

function dp_input_ast_in_func_def_init_hx()
{
    ds_map_set(global.dp_input_ast_in_func_def_map1_hx, "abs", 0);
    ds_map_set(global.dp_input_ast_in_func_def_map1_hx, "sign", 1);
    ds_map_set(global.dp_input_ast_in_func_def_map2_hx, "deadzone", 0);
    ds_map_set(global.dp_input_ast_in_func_def_map2_hx, "dz", 0);
    ds_map_set(global.dp_input_ast_in_func_def_map3_hx, "clamp", 0);
    ds_map_set(global.dp_input_ast_in_func_def_map3_hx, "lerp", 1);
    ds_map_set(global.dp_input_ast_in_func_def_map3_hx, "unlerp", 2);
    ds_map_set(global.dp_input_ast_in_func_def_map3_hx, "approach", 3);
    ds_map_set(global.dp_input_ast_in_func_def_mapx_hx, "min", 0);
    ds_map_set(global.dp_input_ast_in_func_def_mapx_hx, "max", 1);
    ds_map_set(global.dp_input_ast_in_func_def_mapx_hx, "mean", 2);
    ds_map_set(global.dp_input_ast_in_func_def_mapx_hx, "avg", 2);
    ds_map_set(global.dp_input_ast_in_func_def_mapx_hx, "average", 2);
    ds_map_set(global.dp_input_ast_in_func_def_mapx_hx, "near", 3);
    ds_map_set(global.dp_input_ast_in_func_def_mapx_hx, "far", 4);
}

function dp_input_leaf_equals_hx(argument0, argument1)
{
    if (argument0[0] != argument1[0])
        return 0;
    
    switch (argument0[0])
    {
        case 0:
            if (argument1[0] == 0)
                return argument0[1] == argument1[1];
            else
                return undefined;
        
        case 1:
            return 1;
        
        case 2:
            if (argument1[0] == 2)
                return argument0[1] == argument1[1];
            
            break;
        
        case 3:
            if (argument1[0] == 3)
            {
                var l_b2 = argument1[3];
                var l_a2 = argument1[2];
                return dp_input_leaf_equals_hx(argument0[1], argument1[1]) && dp_input_leaf_equals_hx(argument0[2], l_a2) && dp_input_leaf_equals_hx(argument0[3], l_b2);
            }
            
            break;
        
        case 4:
            if (argument1[0] == 4)
                return argument0[1] == argument1[1];
            
            break;
        
        case 5:
            if (argument1[0] == 5)
                return argument0[1] == argument1[1];
            
            break;
        
        case 6:
            if (argument1[0] == 6)
                return argument0[1] == argument1[1];
            
            break;
        
        case 7:
            if (argument1[0] == 7)
            {
                var l_k2 = argument1[2];
                return argument0[1] == argument1[1] && argument0[2] == l_k2;
            }
            
            break;
        
        case 8:
            if (argument1[0] == 8)
            {
                var l_k2 = argument1[2];
                return argument0[1] == argument1[1] && argument0[2] == l_k2;
            }
            
            break;
        
        case 9:
            if (argument1[0] == 9)
            {
                var l_q2 = argument1[2];
                return argument0[1] == argument1[1] && dp_input_leaf_equals_hx(argument0[2], l_q2);
            }
            
            break;
        
        case 10:
            if (argument1[0] == 10)
            {
                var l_b2 = argument1[3];
                var l_a2 = argument1[2];
                return argument0[1] == argument1[1] && dp_input_leaf_equals_hx(argument0[2], l_a2) && dp_input_leaf_equals_hx(argument0[3], l_b2);
            }
            
            break;
        
        case 11:
            if (argument1[0] == 11)
            {
                var l_v2 = argument1[2];
                
                if (argument0[1] == argument1[1])
                    return argument0[2] == l_v2;
            }
            
            break;
        
        case 12:
            if (argument1[0] == 12)
            {
                var l_a2 = argument1[2];
                return argument0[1] == argument1[1] && dp_input_leaf_equals_hx(argument0[2], l_a2);
            }
            
            break;
        
        case 13:
            if (argument1[0] == 13)
            {
                var l_b2 = argument1[3];
                var l_a2 = argument1[2];
                return argument0[1] == argument1[1] && dp_input_leaf_equals_hx(argument0[2], l_a2) && dp_input_leaf_equals_hx(argument0[3], l_b2);
            }
            
            break;
        
        case 14:
            if (argument1[0] == 14)
            {
                var l_c2 = argument1[4];
                var l_b2 = argument1[3];
                var l_a2 = argument1[2];
                return argument0[1] == argument1[1] && dp_input_leaf_equals_hx(argument0[2], l_a2) && dp_input_leaf_equals_hx(argument0[3], l_b2) && dp_input_leaf_equals_hx(argument0[4], l_c2);
            }
            
            break;
        
        case 15:
            var l_w1 = argument0[2];
            
            if (argument1[0] == 15)
            {
                var l_w2 = argument1[2];
                
                if (argument0[1] != argument1[1])
                    return 0;
                
                var l_n = array_length(l_w1);
                
                if (l_n != array_length(l_w2))
                    return 0;
                
                var l_i = 0;
                var l__g1 = l_n;
                
                while (l_i < l__g1)
                {
                    if (!dp_input_leaf_equals_hx(l_w1[l_i], l_w2[l_i]))
                        return 0;
                    
                    l_i++;
                }
                
                return 1;
            }
            
            break;
    }
    
    return 0;
}

function dp_input_leaf_contains_hx(argument0, argument1)
{
    if (dp_input_leaf_equals_hx(argument0, argument1))
        return 1;
    
    switch (argument0[0])
    {
        case 3:
            return (dp_input_leaf_contains_hx(argument0[1], argument1) || dp_input_leaf_contains_hx(argument0[2], argument1)) || dp_input_leaf_contains_hx(argument0[3], argument1);
        
        case 10:
            return dp_input_leaf_contains_hx(argument0[2], argument1) || dp_input_leaf_contains_hx(argument0[3], argument1);
        
        case 9:
            return dp_input_leaf_contains_hx(argument0[2], argument1);
        
        case 12:
            return dp_input_leaf_contains_hx(argument0[2], argument1);
        
        case 13:
            return dp_input_leaf_contains_hx(argument0[2], argument1) || dp_input_leaf_contains_hx(argument0[3], argument1);
        
        case 14:
            return (dp_input_leaf_contains_hx(argument0[2], argument1) || dp_input_leaf_contains_hx(argument0[3], argument1)) || dp_input_leaf_contains_hx(argument0[4], argument1);
        
        case 15:
            var l_nodes = argument0[2];
            var l_i = 0;
            var l__g1 = array_length(l_nodes);
            
            while (l_i < l__g1)
            {
                if (dp_input_leaf_contains_hx(l_nodes[l_i], argument1))
                    return 1;
                
                l_i++;
            }
            
            break;
    }
    
    return 0;
}

function dp_input_leaf_print_hx(argument0)
{
    if (argument0 == undefined)
        return "null";
    
    switch (argument0[0])
    {
        case 1:
            return "Current";
        
        case 2:
            var l_v = argument0[1];
            
            if (l_v == undefined)
                return "null";
            else
                return "" + dp_Std_stringify(l_v);
        
        case 3:
            return "(" + dp_input_leaf_print_hx(argument0[1]) + " ? " + dp_input_leaf_print_hx(argument0[2]) + " : " + dp_input_leaf_print_hx(argument0[3]) + ")";
        
        case 4:
            return "Key(" + string(argument0[1]) + ")";
        
        case 5:
            return "MouseButton(" + string(argument0[1]) + ")";
        
        case 6:
            return "MouseAxis(" + string(argument0[1]) + ")";
        
        case 7:
            return "JoyButton(" + string(argument0[1]) + ", " + string(argument0[2]) + ")";
        
        case 8:
            return "JoyAxis(" + string(argument0[1]) + ", " + string(argument0[2]) + ")";
        
        case 9:
            var l_r;
            
            switch (argument0[1])
            {
                case 0:
                    l_r = "-";
                    break;
                
                case 1:
                    l_r = "!";
                    break;
                
                default:
                    l_r = "?";
            }
            
            return l_r + dp_input_leaf_print_hx(argument0[2]);
        
        case 10:
            switch (argument0[1])
            {
                case 64:
                    l_r = "&&";
                    break;
                
                case 80:
                    l_r = "||";
                    break;
                
                default:
                    l_r = "?";
            }
            
            return "(" + dp_input_leaf_print_hx(argument0[2]) + " " + l_r + " " + dp_input_leaf_print_hx(argument0[3]) + ")";
        
        case 11:
            return script_get_name(argument0[1]) + ("(" + dp_Std_stringify(argument0[2]) + ")");
        
        default:
            return dp_Std_stringify(argument0);
    }
}

function dp_input_node_create(argument0)
{
    var this = [global.mt_dp_input_node];
    array_copy(this, 1, global.mq_dp_input_node, 1, 2);
    
    if (argument0 == undefined)
        argument0 = "";
    
    array_set(this, 1, global.dp_input_node_zero_leaf_hx);
    
    if (argument0 != "")
        dp_input_node_set_expr(this, argument0);
    else
        array_set(this, 2, "");
    
    return this;
}

function dp_input_node_exec_leaf_hx(argument0, argument1, argument2, argument3)
{
    if (argument3 > 40)
        throw dp_haxe_Exception_thrown("Too much nesting in an input node.");
    
    switch (argument0[0])
    {
        case 0:
            return 0;
        
        case 1:
            return argument1;
        
        case 2:
            return argument0[1];
        
        case 3:
            if (abs(dp_input_node_exec_leaf_hx(argument0[1], argument1, argument2, argument3 + 1)) >= 0.5)
                return dp_input_node_exec_leaf_hx(argument0[2], argument1, argument2, argument3 + 1);
            else
                return dp_input_node_exec_leaf_hx(argument0[3], argument1, argument2, argument3 + 1);
        
        case 4:
            return dp_keyboard_check_hx(argument0[1]);
        
        case 5:
            switch (argument0[1])
            {
                case 0:
                    return dp_mouse_get_bt_left();
                
                case 1:
                    return dp_mouse_get_bt_right();
                
                case 2:
                    return dp_mouse_get_bt_middle();
                
                case 3:
                    return global.dp_mouse_wheel_delta_hx < 0;
                
                case 4:
                    return global.dp_mouse_wheel_delta_hx > 0;
                
                default:
                    return 0;
            }
        
        case 6:
            var l_id = argument0[1];
            
            switch (l_id)
            {
                case 0:
                    return global.dp_mouse_pos_x - argument1;
                
                case 1:
                    return global.dp_mouse_pos_y - argument1;
                
                case 2:
                    return global.dp_mouse_wheel_delta_hx;
                
                case 3:
                case 4:
                    var l_fx = global.dp_screen_width_hx / 2;
                    var l_fy = global.dp_screen_height_hx / 2;
                    var l_f = min(l_fx, l_fy);
                    
                    if (l_id == 3)
                    {
                        var l_fn = global.dp_mouse_on_vec_x;
                        
                        if (l_fn != undefined)
                            return l_fn(argument2);
                        else
                            return (global.dp_mouse_pos_x - l_fx) / l_f;
                    }
                    else
                    {
                        var l_fn = global.dp_mouse_on_vec_y;
                        
                        if (l_fn != undefined)
                            return l_fn(argument2);
                        else
                            return (global.dp_mouse_pos_y - l_fy) / l_f;
                    }
                
                default:
                    return 0;
            }
        
        case 7:
            var l_q = argument0[1];
            var l_k = argument0[2];
            
            if (l_q < 0)
            {
                if (global.dp_flow_is_active)
                {
                    var l_p = ds_list_find_value(global.dp_player_list_hx, argument2);
                    
                    if (l_p == undefined)
                        return 0;
                    
                    l_q = l_p[14];
                    
                    if (l_q >= 0)
                        return dp_gamepad_button_hx(l_q, l_k);
                }
                
                l_n = dp_gamepad_get_count();
                
                for (l_i = 0; l_i < l_n; l_i++)
                {
                    l_v1 = dp_gamepad_button_hx(l_i, l_k);
                    
                    if (abs(l_v1) >= 0.5)
                        return l_v1;
                }
                
                return 0;
            }
            else
            {
                var l_p = ds_list_find_value(global.dp_player_list_hx, argument2);
                
                if (l_p != undefined && l_p[14] < 0)
                    array_set(l_p, 14, l_q);
                
                return dp_gamepad_button_hx(l_q, l_k);
            }
        
        case 8:
            l_q = argument0[1];
            l_k = argument0[2];
            
            if (l_q < 0)
            {
                if (global.dp_flow_is_active)
                {
                    var l_p = ds_list_find_value(global.dp_player_list_hx, argument2);
                    
                    if (l_p == undefined)
                        return 0;
                    
                    l_q = l_p[14];
                    
                    if (l_q >= 0)
                        return dp_gamepad_axis_hx(l_q, l_k);
                }
                
                l_n = dp_gamepad_get_count();
                
                for (l_i = 0; l_i < l_n; l_i++)
                {
                    l_v1 = dp_gamepad_axis_hx(l_i, l_k);
                    
                    if (abs(l_v1) >= 0.5)
                        return l_v1;
                }
                
                return 0;
            }
            else
            {
                var l_p = ds_list_find_value(global.dp_player_list_hx, argument2);
                
                if (l_p != undefined && l_p[14] < 0)
                    array_set(l_p, 14, l_q);
                
                return dp_gamepad_axis_hx(l_q, l_k);
            }
        
        case 9:
            var l_v1 = dp_input_node_exec_leaf_hx(argument0[2], argument1, argument2, argument3 + 1);
            
            switch (argument0[1])
            {
                case 0:
                    return -l_v1;
                
                case 1:
                    if (abs(l_v1) >= 0.5)
                        return 0;
                    else
                        return 1;
                
                default:
                    return l_v1;
            }
        
        case 10:
            l_v1 = dp_input_node_exec_leaf_hx(argument0[2], argument1, argument2, argument3 + 1);
            var l_v2 = dp_input_node_exec_leaf_hx(argument0[3], argument1, argument2, argument3 + 1);
            
            switch (argument0[1])
            {
                case 0:
                    l_v1 *= l_v2;
                    break;
                
                case 1:
                    if (l_v2 != 0)
                        l_v1 /= l_v2;
                    else
                        l_v1 = 0;
                    
                    break;
                
                case 2:
                    if (l_v2 != 0)
                        l_v1 %= l_v2;
                    else
                        l_v1 = 0;
                    
                    break;
                
                case 16:
                    l_v1 += l_v2;
                    break;
                
                case 17:
                    l_v1 -= l_v2;
                    break;
                
                case 32:
                    l_v1 = l_v1 < l_v2;
                    break;
                
                case 33:
                    l_v1 = l_v1 <= l_v2;
                    break;
                
                case 34:
                    l_v1 = l_v1 > l_v2;
                    break;
                
                case 35:
                    l_v1 = l_v1 >= l_v2;
                    break;
                
                case 48:
                    l_v1 = l_v1 == l_v2;
                    break;
                
                case 49:
                    l_v1 = l_v1 != l_v2;
                    break;
                
                case 64:
                    if (abs(l_v1) >= 0.5)
                        l_v1 = l_v2;
                    
                    break;
                
                case 80:
                    if (abs(l_v2) > abs(l_v1))
                        l_v1 = l_v2;
                    
                    break;
            }
            
            return l_v1;
        
        case 11:
            return argument0[1](argument1, argument2, argument0[2]);
        
        case 12:
            return dp_input_ast_in_func_def_call1_hx(argument0[1], dp_input_node_exec_leaf_hx(argument0[2], argument1, argument2, argument3 + 1));
        
        case 13:
            return dp_input_ast_in_func_def_call2_hx(argument0[1], dp_input_node_exec_leaf_hx(argument0[2], argument1, argument2, argument3 + 1), dp_input_node_exec_leaf_hx(argument0[3], argument1, argument2, argument3 + 1));
        
        case 14:
            return dp_input_ast_in_func_def_call3_hx(argument0[1], dp_input_node_exec_leaf_hx(argument0[2], argument1, argument2, argument3 + 1), dp_input_node_exec_leaf_hx(argument0[3], argument1, argument2, argument3 + 1), dp_input_node_exec_leaf_hx(argument0[4], argument1, argument2, argument3 + 1));
        
        case 15:
            var l_x = argument0[2];
            var l_w = [];
            var l_i = 0;
            var l_n = array_length(l_x);
            
            while (l_i < l_n)
            {
                dp_gml_internal_ArrayImpl_push(l_w, dp_input_node_exec_leaf_hx(l_x[l_i], argument1, argument2, argument3 + 1));
                l_i++;
            }
            
            return dp_input_ast_in_func_def_callx_hx(argument0[1], l_w);
    }
}

function dp_input_node_leaf_uses_gamepad_hx(argument0)
{
    switch (argument0[0])
    {
        case 7:
            return 1;
        
        case 8:
            return 1;
        
        default:
            switch (argument0[0])
            {
                case 3:
                    return (dp_input_node_leaf_uses_gamepad_hx(argument0[1]) || dp_input_node_leaf_uses_gamepad_hx(argument0[2])) || dp_input_node_leaf_uses_gamepad_hx(argument0[3]);
                
                case 10:
                    return dp_input_node_leaf_uses_gamepad_hx(argument0[2]) || dp_input_node_leaf_uses_gamepad_hx(argument0[3]);
                
                case 9:
                    return dp_input_node_leaf_uses_gamepad_hx(argument0[2]);
                
                case 12:
                    return dp_input_node_leaf_uses_gamepad_hx(argument0[2]);
                
                case 13:
                    return dp_input_node_leaf_uses_gamepad_hx(argument0[2]) || dp_input_node_leaf_uses_gamepad_hx(argument0[3]);
                
                case 14:
                    return (dp_input_node_leaf_uses_gamepad_hx(argument0[2]) || dp_input_node_leaf_uses_gamepad_hx(argument0[3])) || dp_input_node_leaf_uses_gamepad_hx(argument0[4]);
                
                case 15:
                    var l_nodes = argument0[2];
                    var l_i = 0;
                    var l__g1 = array_length(l_nodes);
                    
                    while (l_i < l__g1)
                    {
                        if (dp_input_node_leaf_uses_gamepad_hx(l_nodes[l_i]))
                            return 1;
                        
                        l_i++;
                    }
                    
                    break;
            }
            
            return 0;
    }
}

function dp_input_node_leaf_uses_mouse_pos_hx(argument0)
{
    if (argument0[0] == 6)
    {
        switch (argument0[1])
        {
            case 0:
            case 1:
            case 3:
            case 4:
                return 1;
            
            default:
                return 0;
        }
    }
    else
    {
        switch (argument0[0])
        {
            case 3:
                if (dp_input_node_leaf_uses_mouse_pos_hx(argument0[1]) || dp_input_node_leaf_uses_mouse_pos_hx(argument0[2]) || dp_input_node_leaf_uses_mouse_pos_hx(argument0[3]))
                    return 1;
                
                break;
            
            case 10:
                var l_b = argument0[3];
                
                if (dp_input_node_leaf_uses_mouse_pos_hx(argument0[2]) || dp_input_node_leaf_uses_mouse_pos_hx(l_b))
                    return 1;
                
                break;
            
            case 9:
                return dp_input_node_leaf_uses_mouse_pos_hx(argument0[2]);
            
            case 12:
                return dp_input_node_leaf_uses_mouse_pos_hx(argument0[2]);
            
            case 13:
                var l_b = argument0[3];
                
                if (dp_input_node_leaf_uses_mouse_pos_hx(argument0[2]) || dp_input_node_leaf_uses_mouse_pos_hx(l_b))
                    return 1;
                
                break;
            
            case 14:
                var l_c = argument0[4];
                var l_b = argument0[3];
                
                if (dp_input_node_leaf_uses_mouse_pos_hx(argument0[2]) || dp_input_node_leaf_uses_mouse_pos_hx(l_b) || dp_input_node_leaf_uses_mouse_pos_hx(l_c))
                    return 1;
                
                break;
            
            case 15:
                var l_nodes = argument0[2];
                var l_i = 0;
                var l__g1 = array_length(l_nodes);
                
                while (l_i < l__g1)
                {
                    if (dp_input_node_leaf_uses_mouse_pos_hx(l_nodes[l_i]))
                        return 1;
                    
                    l_i++;
                }
                
                break;
        }
        
        return 0;
    }
}

function dp_input_node_get_expr(argument0)
{
    return argument0[2];
}

function dp_input_node_set_expr(argument0, argument1)
{
    array_set(argument0, 2, argument1);
    global.dp_input_parse_string_hx = argument1;
    global.dp_input_parse_length_hx = string_length(argument1);
    global.dp_input_parse_offset_hx = 0;
    global.dp_input_parse_error_text_hx = "";
    var l_leaf = dp_input_parse_values_hx(0);
    var l_err = global.dp_input_parse_error_text_hx;
    
    if (l_err != "")
        l_leaf = [0, l_err];
    
    array_set(argument0, 1, l_leaf);
    return l_err;
}

function dp_input_node_exec(argument0, argument1 = 0, argument2 = -1)
{
    return dp_input_node_exec_leaf_hx(argument0[1], argument1, argument2, 0);
}

function dp_input_node_exec_expr(argument0, argument1, argument2 = 0, argument3 = -1)
{
    if (argument1 == "")
        return argument2;
    
    if (argument0[2] != argument1)
        dp_input_node_set_expr(argument0, argument1);
    
    var l_current1 = argument2;
    var l_slot1 = argument3;
    
    if (l_slot1 == undefined)
        l_slot1 = -1;
    
    if (l_current1 == undefined)
        l_current1 = 0;
    
    return dp_input_node_exec_leaf_hx(argument0[1], l_current1, l_slot1, 0);
}

function dp_input_node_uses_input(argument0, argument1)
{
    dp_input_node_set_expr(global.dp_input_node_uses_input_node_hx, argument1);
    return dp_input_leaf_contains_hx(argument0[1], global.dp_input_node_uses_input_node_hx[1]);
}

function dp_input_node_uses_node(argument0, argument1)
{
    return dp_input_leaf_contains_hx(argument0[1], argument1[1]);
}

function dp_input_node_uses_gamepad(argument0)
{
    return dp_input_node_leaf_uses_gamepad_hx(argument0[1]);
}

function dp_input_node_uses_mouse_pos(argument0)
{
    return dp_input_node_leaf_uses_mouse_pos_hx(argument0[1]);
}

function dp_input_node_print(argument0)
{
    return dp_input_leaf_print_hx(argument0[1]);
}

function dp_input_parse_get_cond()
{
    return global.dp_input_parse_offset_hx < global.dp_input_parse_length_hx;
}

function dp_input_parse_next_hx()
{
    return string_ord_at(global.dp_input_parse_string_hx, ++global.dp_input_parse_offset_hx);
}

function dp_input_parse_curr_hx()
{
    return string_ord_at(global.dp_input_parse_string_hx, global.dp_input_parse_offset_hx + 1);
}

function dp_input_parse_mark_hx(argument0)
{
    return "`" + string_insert("@", global.dp_input_parse_string_hx, argument0 + 1) + "`";
}

function dp_input_parse_get_error()
{
    return global.dp_input_parse_error_text_hx;
}

function dp_input_parse_set_error_hx(argument0)
{
    global.dp_input_parse_error_text_hx = argument0;
    return undefined;
}

function dp_input_parse_value_hx()
{
    var l_unary = dp_array_alloc();
    var l_unaries = 0;
    var l_startOfs = global.dp_input_parse_offset_hx;
    var l_loop = 1;
    var l_r = undefined;
    
    while (l_loop && global.dp_input_parse_offset_hx < global.dp_input_parse_length_hx)
    {
        var l_c = string_ord_at(global.dp_input_parse_string_hx, ++global.dp_input_parse_offset_hx);
        
        switch (l_c)
        {
            case 9:
            case 10:
            case 13:
            case 32:
                break;
            
            case 45:
                array_set(l_unary, l_unaries++, 0);
                break;
            
            case 43:
                break;
            
            case 34:
            case 39:
                l_startOfs = global.dp_input_parse_offset_hx;
                
                while (l_loop && global.dp_input_parse_offset_hx < global.dp_input_parse_length_hx)
                {
                    if (string_ord_at(global.dp_input_parse_string_hx, global.dp_input_parse_offset_hx + 1) != l_c)
                        global.dp_input_parse_offset_hx++;
                    else
                        l_loop = 0;
                }
                
                if (l_loop)
                {
                    global.dp_input_parse_error_text_hx = "Unclosed string starting at #" + string(l_startOfs);
                    return undefined;
                }
                else
                {
                    l_r = dp_input_parse_input_hx(dp_string_substring(global.dp_input_parse_string_hx, l_startOfs, global.dp_input_parse_offset_hx));
                }
                
                break;
            
            case 33:
            case 126:
                array_set(l_unary, l_unaries++, 1);
                break;
            
            case 40:
                l_r = dp_input_parse_values_hx(1);
                l_loop = 0;
                break;
            
            default:
                if (l_c == 95 || (l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90))
                {
                    l_startOfs = global.dp_input_parse_offset_hx - 1;
                    
                    while (true)
                    {
                        l_c = string_ord_at(global.dp_input_parse_string_hx, global.dp_input_parse_offset_hx + 1);
                        
                        if (l_c == 95 || (l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90) || (l_c >= 48 && l_c <= 57))
                            global.dp_input_parse_offset_hx++;
                        else
                            l_loop = 0;
                        
                        if (!(l_loop && global.dp_input_parse_offset_hx < global.dp_input_parse_length_hx))
                            break;
                    }
                    
                    var l_ident = dp_string_substring(global.dp_input_parse_string_hx, l_startOfs, global.dp_input_parse_offset_hx);
                    l_loop = 1;
                    
                    while (l_loop && global.dp_input_parse_offset_hx < global.dp_input_parse_length_hx)
                    {
                        switch (l_c)
                        {
                            case 9:
                            case 10:
                            case 13:
                            case 32:
                                global.dp_input_parse_offset_hx += 1;
                                l_c = string_ord_at(global.dp_input_parse_string_hx, global.dp_input_parse_offset_hx + 1);
                                break;
                            
                            default:
                                l_loop = 0;
                        }
                    }
                    
                    if (l_c == 40)
                    {
                        global.dp_input_parse_offset_hx += 1;
                        var l_args1 = [];
                        var l_n = 0;
                        l_loop = 1;
                        
                        while (l_loop && global.dp_input_parse_offset_hx < global.dp_input_parse_length_hx)
                        {
                            l_r = dp_input_parse_values_hx(2);
                            
                            if (l_r == undefined)
                                return undefined;
                            
                            array_set(l_args1, l_n, l_r);
                            l_n++;
                            global.dp_input_parse_offset_hx -= 1;
                            
                            if (string_ord_at(global.dp_input_parse_string_hx, global.dp_input_parse_offset_hx + 1) == 41)
                                l_loop = 0;
                            
                            global.dp_input_parse_offset_hx += 1;
                        }
                        
                        l_ident = string_lower(l_ident);
                        
                        if (l_ident == "if")
                        {
                            if (l_n < 2 || l_n > 3)
                            {
                                global.dp_input_parse_error_text_hx = "`if` takes 2 or 3 arguments.";
                                return undefined;
                            }
                            
                            if (l_n < 3)
                                array_set(l_args1, 2, [2, 0]);
                            
                            l_r = [3, l_args1[0], l_args1[1], l_args1[2]];
                        }
                        else
                        {
                            while (true)
                            {
                                var l_i = dp_collections__dictionary_dictionary_impl__get(global.dp_input_ast_in_func_def_map1_hx, l_ident, -1);
                                
                                if (l_i >= 0)
                                {
                                    if (l_n != 1)
                                    {
                                        global.dp_input_parse_error_text_hx = "`" + l_ident + "` expects 1 argument.";
                                        return undefined;
                                    }
                                    
                                    l_r = [12, l_i, l_args1[0]];
                                    break;
                                }
                                
                                l_i = dp_collections__dictionary_dictionary_impl__get(global.dp_input_ast_in_func_def_map2_hx, l_ident, -1);
                                
                                if (l_i >= 0)
                                {
                                    if (l_n != 2)
                                    {
                                        global.dp_input_parse_error_text_hx = "`" + l_ident + "` expects 2 arguments.";
                                        return undefined;
                                    }
                                    
                                    l_r = [13, l_i, l_args1[0], l_args1[1]];
                                    break;
                                }
                                
                                l_i = dp_collections__dictionary_dictionary_impl__get(global.dp_input_ast_in_func_def_map3_hx, l_ident, -1);
                                
                                if (l_i >= 0)
                                {
                                    if (l_n != 3)
                                    {
                                        global.dp_input_parse_error_text_hx = "`" + l_ident + "` expects 3 arguments.";
                                        return undefined;
                                    }
                                    
                                    l_r = [14, l_i, l_args1[0], l_args1[1], l_args1[2]];
                                    break;
                                }
                                
                                l_i = dp_collections__dictionary_dictionary_impl__get(global.dp_input_ast_in_func_def_mapx_hx, l_ident, -1);
                                
                                if (l_i >= 0)
                                {
                                    l_r = [15, l_i, l_args1];
                                    break;
                                }
                                
                                global.dp_input_parse_error_text_hx = "`" + l_ident + "` is not a known function.";
                                return undefined;
                            }
                        }
                    }
                    else
                    {
                        l_r = dp_input_parse_input_hx(l_ident);
                    }
                    
                    l_loop = 0;
                    break;
                }
                
                if ((l_c >= 48 && l_c <= 57) || l_c == 46)
                {
                    l_startOfs = global.dp_input_parse_offset_hx - 1;
                    var l_dot = l_c == 46;
                    
                    while (true)
                    {
                        l_c = string_ord_at(global.dp_input_parse_string_hx, global.dp_input_parse_offset_hx + 1);
                        
                        if (l_c >= 48 && l_c <= 57)
                        {
                            global.dp_input_parse_offset_hx++;
                        }
                        else if (l_c == 46)
                        {
                            if (l_dot)
                            {
                                break;
                            }
                            else
                            {
                                l_dot = 1;
                                global.dp_input_parse_offset_hx++;
                            }
                        }
                        else
                        {
                            break;
                        }
                        
                        if (!(global.dp_input_parse_offset_hx < global.dp_input_parse_length_hx))
                            break;
                    }
                    
                    l_r = [2, dp_Std_parseFloat(dp_string_substring(global.dp_input_parse_string_hx, l_startOfs, global.dp_input_parse_offset_hx))];
                    l_loop = 0;
                    break;
                }
                
                global.dp_input_parse_error_text_hx = "Unexpected \"" + string_char_at(global.dp_input_parse_string_hx, (global.dp_input_parse_offset_hx - 1) + 1) + "\" at #" + string(global.dp_input_parse_offset_hx);
                return undefined;
        }
    }
    
    if (l_loop && global.dp_input_parse_offset_hx >= global.dp_input_parse_length_hx)
    {
        global.dp_input_parse_error_text_hx = "Unexpected end of input starting at " + ("`" + string_insert("@", global.dp_input_parse_string_hx, l_startOfs + 1) + "`");
        return undefined;
    }
    
    if (l_r == undefined)
        return undefined;
    
    while (--l_unaries >= 0)
        l_r = [9, l_unary[l_unaries], l_r];
    
    return l_r;
}

function dp_input_parse_values_hx(argument0)
{
    var l_loop = 1;
    var l_found = 0;
    var l_list = dp_array_alloc();
    var l_ops = dp_array_alloc();
    var l_brackets = argument0 > 0;
    var l_startOffset = global.dp_input_parse_offset_hx;
    
    if (global.dp_input_parse_offset_hx >= global.dp_input_parse_length_hx)
    {
        global.dp_input_parse_error_text_hx = "Unexpected end of input starting at " + ("`" + string_insert("@", global.dp_input_parse_string_hx, l_startOffset + 1) + "`");
        return undefined;
    }
    
    while (l_loop && global.dp_input_parse_offset_hx < global.dp_input_parse_length_hx)
    {
        var l_v = dp_input_parse_value_hx();
        
        if (l_v == undefined)
            return undefined;
        
        array_set(l_list, l_found, l_v);
        var l_seekOp = 1;
        var l_binop = -1;
        
        while (l_seekOp && global.dp_input_parse_offset_hx < global.dp_input_parse_length_hx)
        {
            var l_c = string_ord_at(global.dp_input_parse_string_hx, ++global.dp_input_parse_offset_hx);
            l_seekOp = 0;
            
            switch (l_c)
            {
                case 9:
                case 10:
                case 13:
                case 32:
                    l_seekOp = 1;
                    break;
                
                case 41:
                    if (l_brackets)
                    {
                        l_brackets = 0;
                        l_loop = 0;
                    }
                    else
                    {
                        global.dp_input_parse_error_text_hx = "Unexpected `)` at " + ("`" + string_insert("@", global.dp_input_parse_string_hx, (global.dp_input_parse_offset_hx - 1) + 1) + "`");
                        return undefined;
                    }
                    
                    break;
                
                case 44:
                    if (argument0 == 2)
                    {
                        l_brackets = 0;
                        l_loop = 0;
                    }
                    else
                    {
                        global.dp_input_parse_error_text_hx = "Unexpected `,` at " + ("`" + string_insert("@", global.dp_input_parse_string_hx, (global.dp_input_parse_offset_hx - 1) + 1) + "`");
                        return undefined;
                    }
                    
                    break;
                
                case 37:
                    l_binop = 2;
                    break;
                
                case 42:
                    l_binop = 0;
                    break;
                
                case 43:
                    l_binop = 16;
                    break;
                
                case 45:
                    l_binop = 17;
                    break;
                
                case 60:
                    switch (string_ord_at(global.dp_input_parse_string_hx, ++global.dp_input_parse_offset_hx))
                    {
                        case 61:
                            l_binop = 33;
                            break;
                        
                        case 62:
                            l_binop = 49;
                            break;
                        
                        default:
                            l_binop = 32;
                            global.dp_input_parse_offset_hx--;
                    }
                    
                    break;
                
                case 61:
                    if (string_ord_at(global.dp_input_parse_string_hx, ++global.dp_input_parse_offset_hx) == 61)
                    {
                        l_binop = 48;
                    }
                    else
                    {
                        l_binop = 48;
                        global.dp_input_parse_offset_hx--;
                    }
                    
                    break;
                
                case 62:
                    if (string_ord_at(global.dp_input_parse_string_hx, ++global.dp_input_parse_offset_hx) == 61)
                    {
                        l_binop = 35;
                    }
                    else
                    {
                        l_binop = 34;
                        global.dp_input_parse_offset_hx--;
                    }
                    
                    break;
                
                case 38:
                    if (string_ord_at(global.dp_input_parse_string_hx, global.dp_input_parse_offset_hx + 1) == 38)
                        global.dp_input_parse_offset_hx++;
                    
                    l_binop = 64;
                    break;
                
                case 124:
                    if (string_ord_at(global.dp_input_parse_string_hx, global.dp_input_parse_offset_hx + 1) == 124)
                        global.dp_input_parse_offset_hx++;
                    
                    l_binop = 80;
                    break;
                
                default:
                    global.dp_input_parse_error_text_hx = "Unexpected `" + chr(l_c) + "` at " + ("`" + string_insert("@", global.dp_input_parse_string_hx, (global.dp_input_parse_offset_hx - 1) + 1) + "`");
                    return undefined;
            }
        }
        
        if (global.dp_input_parse_offset_hx >= global.dp_input_parse_length_hx)
            l_loop = 0;
        
        if (l_loop)
            array_set(l_ops, l_found++, l_binop);
    }
    
    if (l_brackets)
    {
        global.dp_input_parse_error_text_hx = "Expected a `)` to close " + ("`" + string_insert("@", global.dp_input_parse_string_hx, l_startOffset + 1) + "`");
        return undefined;
    }
    
    for (var l_pri = 0; l_pri < 6 && l_found > 0; l_pri++)
    {
        var l_i = 0;
        
        while (l_i < l_found)
        {
            var l_binop = l_ops[l_i];
            
            if ((l_binop >> 4) == l_pri)
            {
                var l_vx = [10, l_binop, l_list[l_i], l_list[l_i + 1]];
                l_found--;
                var l_k;
                
                for (l_k = l_i; l_k < l_found; l_k++)
                {
                    array_set(l_ops, l_k, l_ops[l_k + 1]);
                    array_set(l_list, l_k, l_list[l_k + 1]);
                }
                
                array_set(l_list, l_k, l_list[l_k + 1]);
                array_set(l_list, l_i, l_vx);
            }
            else
            {
                l_i++;
            }
        }
    }
    
    return l_list[0];
}

function dp_input_parse_input_hx(argument0)
{
    var l_str = string_lower(argument0);
    var l_out = ds_map_find_value(global.dp_input_parse_input_map_hx, l_str);
    
    if (l_out != undefined)
        return l_out;
    
    if (string_pos("_", l_str))
        l_str = string_replace_all(l_str, "_", "");
    
    var l_known = 1;
    
    switch (string_ord_at(l_str, 1))
    {
        case 109:
            if (string_pos("mouse", l_str))
                l_str = string_replace_all(l_str, "mouse", "m");
            
            if (string_pos("button", l_str))
                l_str = string_replace_all(l_str, "button", "");
            else if (string_pos("btn", l_str))
                l_str = string_replace_all(l_str, "btn", "");
            else if (string_pos("bt", l_str))
                l_str = string_replace_all(l_str, "bt", "");
            else if (string_pos("b", l_str))
                l_str = string_replace_all(l_str, "b", "");
            
            if (string_pos("axis", l_str))
                l_str = string_replace_all(l_str, "axis", "");
            else if (string_pos("ax", l_str))
                l_str = string_replace_all(l_str, "ax", "");
            else if (string_pos("pos", l_str))
                l_str = string_replace_all(l_str, "pos", "");
            
            break;
        
        case 103:
        case 106:
            if (string_pos("gamepad", l_str))
                l_str = string_replace_all(l_str, "gamepad", "g");
            else if (string_pos("joy", l_str))
                l_str = string_replace_all(l_str, "joy", "g");
            else if (string_pos("gp", l_str))
                l_str = string_replace_all(l_str, "gp", "g");
            
            if (string_pos("button", l_str))
                l_str = string_replace_all(l_str, "button", "b");
            else if (string_pos("btn", l_str))
                l_str = string_replace_all(l_str, "btn", "b");
            else if (string_pos("bt", l_str))
                l_str = string_replace_all(l_str, "bt", "b");
            
            if (string_pos("axis", l_str))
                l_str = string_replace_all(l_str, "axis", "a");
            else if (string_pos("ax", l_str))
                l_str = string_replace_all(l_str, "ax", "a");
            
            if (string_pos("trigger", l_str))
                l_str = string_replace_all(l_str, "trigger", "t");
            
            if (string_pos("shoulder", l_str))
                l_str = string_replace_all(l_str, "shoulder", "s");
            
            if (string_pos("dpad", l_str))
                l_str = string_replace_all(l_str, "dpad", "p");
            else if (string_pos("pad", l_str))
                l_str = string_replace_all(l_str, "pad", "p");
            else if (string_pos("dp", l_str))
                l_str = string_replace_all(l_str, "dp", "p");
            
            break;
        
        default:
            l_known = 0;
    }
    
    if (l_known)
    {
        l_out = ds_map_find_value(global.dp_input_parse_input_map_hx, l_str);
        
        if (l_out != undefined)
            return l_out;
    }
    
    global.dp_input_parse_error_text_hx = "\"" + argument0 + "\" is not a known input.";
    return undefined;
}

function dp_input_parse_init_hx()
{
    var l_map = ds_map_create();
    ds_map_set(l_map, "current", global.dp_input_leaf_in_current);
    ds_map_set(l_map, "value", global.dp_input_leaf_in_current);
    ds_map_set(l_map, "val", global.dp_input_leaf_in_current);
    var l__g_list = global.dp_input_key_list_lq_hx;
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
    {
        var l_k = ds_list_find_value(l__g_list, l__g_index++);
        ds_map_set(l_map, l_k, [4, dp_input_key_get_code(l_k)]);
    }
    
    var l_s = "m";
    var l_node = [5, 0];
    ds_map_set(l_map, l_s + "1", l_node);
    ds_map_set(l_map, l_s + "l", l_node);
    ds_map_set(l_map, l_s + "left", l_node);
    l_node = [5, 1];
    ds_map_set(l_map, l_s + "2", l_node);
    ds_map_set(l_map, l_s + "r", l_node);
    ds_map_set(l_map, l_s + "right", l_node);
    l_node = [5, 2];
    ds_map_set(l_map, l_s + "3", l_node);
    ds_map_set(l_map, l_s + "m", l_node);
    ds_map_set(l_map, l_s + "middle", l_node);
    l_node = [5, 3];
    ds_map_set(l_map, l_s + "4", l_node);
    ds_map_set(l_map, l_s + "wu", l_node);
    ds_map_set(l_map, l_s + "wheelup", l_node);
    l_node = [5, 4];
    ds_map_set(l_map, l_s + "5", l_node);
    ds_map_set(l_map, l_s + "wd", l_node);
    ds_map_set(l_map, l_s + "wheeldown", l_node);
    l_node = [6, 0];
    ds_map_set(l_map, l_s + "x", l_node);
    l_node = [6, 1];
    ds_map_set(l_map, l_s + "y", l_node);
    l_node = [6, 2];
    ds_map_set(l_map, l_s + "z", l_node);
    ds_map_set(l_map, l_s + "w", l_node);
    ds_map_set(l_map, l_s + "wheel", l_node);
    l_node = [6, 3];
    ds_map_set(l_map, l_s + "ax", l_node);
    ds_map_set(l_map, l_s + "vx", l_node);
    ds_map_set(l_map, l_s + "vecx", l_node);
    ds_map_set(l_map, l_s + "aimx", l_node);
    l_node = [6, 4];
    ds_map_set(l_map, l_s + "ay", l_node);
    ds_map_set(l_map, l_s + "vy", l_node);
    ds_map_set(l_map, l_s + "vecy", l_node);
    ds_map_set(l_map, l_s + "aimy", l_node);
    
    for (var l_k = -1; l_k < 12; l_k++)
    {
        var l_gs = "g";
        
        if (l_k >= 0)
            l_gs += string(l_k + 1);
        
        var l_gb = [];
        l_s = l_gs + "b";
        
        for (var l_i = 0; l_i < 10; l_i++)
        {
            l_node = [7, l_k, l_i];
            ds_map_set(l_map, l_s + string(l_i + 1), l_node);
            array_set(l_gb, l_i, l_node);
        }
        
        ds_map_set(l_map, l_s + "a", l_gb[0]);
        ds_map_set(l_map, l_s + "cross", l_gb[0]);
        ds_map_set(l_map, l_gs + "cross", l_gb[0]);
        ds_map_set(l_map, l_s + "b", l_gb[1]);
        ds_map_set(l_map, l_s + "circle", l_gb[1]);
        ds_map_set(l_map, l_gs + "circle", l_gb[1]);
        ds_map_set(l_map, l_s + "x", l_gb[2]);
        ds_map_set(l_map, l_s + "square", l_gb[2]);
        ds_map_set(l_map, l_gs + "square", l_gb[2]);
        ds_map_set(l_map, l_s + "y", l_gb[3]);
        ds_map_set(l_map, l_s + "triangle", l_gb[3]);
        ds_map_set(l_map, l_gs + "triangle", l_gb[3]);
        ds_map_set(l_map, l_gs + "select", l_gb[8]);
        ds_map_set(l_map, l_gs + "back", l_gb[8]);
        ds_map_set(l_map, l_gs + "start", l_gb[9]);
        ds_map_set(l_map, l_s + "sel", l_gb[8]);
        ds_map_set(l_map, l_s + "select", l_gb[8]);
        ds_map_set(l_map, l_s + "back", l_gb[8]);
        ds_map_set(l_map, l_s + "start", l_gb[9]);
        var l__g = 0;
        
        while (l__g < 2)
        {
            var l_t;
            
            switch (l__g++)
            {
                case 0:
                    l_t = "f";
                    break;
                
                case 1:
                    l_t = "face";
                    break;
                
                default:
                    l_t = undefined;
            }
            
            l_s = l_gs + l_t;
            
            for (var l_i = 0; l_i < 4; l_i++)
                ds_map_set(l_map, l_s + string(l_i + 1), l_gb[l_i]);
        }
        
        var l__g1 = 0;
        
        while (l__g1 < 2)
        {
            var l_t;
            
            switch (l__g1++)
            {
                case 0:
                    l_t = "r";
                    break;
                
                case 1:
                    l_t = "right";
                    break;
                
                default:
                    l_t = undefined;
            }
            
            ds_map_set(l_map, l_gs + "s" + l_t, l_gb[4]);
            ds_map_set(l_map, l_gs + "t" + l_t, l_gb[5]);
        }
        
        var l__g2 = 0;
        
        while (l__g2 < 2)
        {
            var l_t;
            
            switch (l__g2++)
            {
                case 0:
                    l_t = "l";
                    break;
                
                case 1:
                    l_t = "left";
                    break;
                
                default:
                    l_t = undefined;
            }
            
            ds_map_set(l_map, l_gs + "s" + l_t, l_gb[6]);
            ds_map_set(l_map, l_gs + "t" + l_t, l_gb[7]);
        }
        
        var l_gx = [];
        
        for (var l_i = 0; l_i < 6; l_i++)
        {
            l_node = [8, l_k, l_i];
            array_set(l_gx, l_i, l_node);
        }
        
        l_s = l_gs + "a";
        var l__g3 = 0;
        
        while (l__g3 < 2)
        {
            var l_t;
            
            switch (l__g3++)
            {
                case 0:
                    l_t = "l";
                    break;
                
                case 1:
                    l_t = "left";
                    break;
                
                default:
                    l_t = undefined;
            }
            
            ds_map_set(l_map, l_s + l_t + "x", l_gx[0]);
            ds_map_set(l_map, l_s + l_t + "h", l_gx[0]);
            ds_map_set(l_map, l_s + l_t + "hor", l_gx[0]);
            ds_map_set(l_map, l_s + l_t + "y", l_gx[1]);
            ds_map_set(l_map, l_s + l_t + "v", l_gx[1]);
            ds_map_set(l_map, l_s + l_t + "vert", l_gx[1]);
        }
        
        var l__g4 = 0;
        
        while (l__g4 < 2)
        {
            var l_t;
            
            switch (l__g4++)
            {
                case 0:
                    l_t = "r";
                    break;
                
                case 1:
                    l_t = "right";
                    break;
                
                default:
                    l_t = undefined;
            }
            
            ds_map_set(l_map, l_s + l_t + "x", l_gx[2]);
            ds_map_set(l_map, l_s + l_t + "h", l_gx[2]);
            ds_map_set(l_map, l_s + l_t + "hor", l_gx[2]);
            ds_map_set(l_map, l_s + l_t + "y", l_gx[3]);
            ds_map_set(l_map, l_s + l_t + "v", l_gx[3]);
            ds_map_set(l_map, l_s + l_t + "vert", l_gx[3]);
        }
        
        ds_map_set(l_map, l_s + "px", l_gx[4]);
        ds_map_set(l_map, l_s + "ph", l_gx[4]);
        ds_map_set(l_map, l_s + "phor", l_gx[4]);
        ds_map_set(l_map, l_s + "py", l_gx[5]);
        ds_map_set(l_map, l_s + "pv", l_gx[5]);
        ds_map_set(l_map, l_s + "pvert", l_gx[5]);
        l_s = l_gs + "p";
        l_node = [9, 0, [8, l_k, 4]];
        ds_map_set(l_map, l_s + "l", l_node);
        ds_map_set(l_map, l_s + "left", l_node);
        l_node = [8, l_k, 4];
        ds_map_set(l_map, l_s + "r", l_node);
        ds_map_set(l_map, l_s + "right", l_node);
        ds_map_set(l_map, l_s + "x", l_node);
        l_node = [9, 0, [8, l_k, 5]];
        ds_map_set(l_map, l_s + "u", l_node);
        ds_map_set(l_map, l_s + "up", l_node);
        l_node = [8, l_k, 5];
        ds_map_set(l_map, l_s + "d", l_node);
        ds_map_set(l_map, l_s + "down", l_node);
        ds_map_set(l_map, l_s + "y", l_node);
        l_node = [10, 80, l_gx[4], l_gx[0]];
        ds_map_set(l_map, l_gs + "x", l_node);
        l_node = [10, 80, l_gx[5], l_gx[1]];
        ds_map_set(l_map, l_gs + "y", l_node);
    }
    
    dp_input_ast_in_func_def_init_hx();
    global.dp_input_parse_input_map_hx = l_map;
}

function dp_net_client_handle_error_hx(argument0, argument1)
{
    if (global.dp_hub_is_searching)
    {
        if (argument1 == 234)
        {
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "Hit full lobby while in matchmaking");
            
            ds_map_set(global.dp_hub_search_exclude_by_id_hx, global.dp_hub_search_endpoint_id_hx, 1);
            
            if (!global.dp_flow_is_active)
                dp_lobby_close();
            
            return 0;
        }
        
        if (argument1 == 238)
        {
            if (!global.dp_flow_is_active && dp_player_count_remote() == 0)
            {
                if (global.dp_debug_state)
                    dp_debug_log_hx("State", "Timed out while in matchmaking");
                
                ds_map_set(global.dp_hub_search_exclude_by_id_hx, global.dp_hub_search_endpoint_id_hx, 1);
                dp_lobby_close();
                return 0;
            }
        }
    }
    
    var l_this1 = global.dp_lobby_on_error;
    var l_v1 = dp_net_error_get_text_hx(argument1);
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1(l_v1, argument0[5], argument0[6]);
    
    if (!global.dp_flow_is_active)
        dp_lobby_close();
}

function dp_net_client_handle_hx(argument0, argument1)
{
    var l_mid = buffer_read(argument1, buffer_u8);
    var l_out = global.dp_out;
    
    switch (l_mid)
    {
        case 202:
            var l_slot = buffer_read(argument1, buffer_u8);
            var l_p = dp_player_new_hx();
            array_set(l_p, 1, buffer_read(argument1, buffer_s32));
            array_set(l_p, 2, buffer_read(argument1, buffer_string));
            ds_list_set(global.dp_player_list_hx, l_slot, l_p);
            
            if (l_p[1] == global.dp_local_uid)
                dp_player_set_alias(l_slot, global.dp_player_local_alias);
            
            var l_this1 = global.dp_player_on_change;
            var l_f = l_this1;
            
            if (l_f != undefined && l_f >= 0)
                l_this1(l_slot);
            
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "Slot " + string(l_slot + 1) + " is now occupied by " + dp_Std_stringify(l_p[1]));
            
            break;
        
        case 201:
            var l_slot = buffer_read(argument1, buffer_u8);
            var l_p = ds_list_find_value(global.dp_player_list_hx, l_slot);
            
            if (l_p != undefined)
            {
                dp_player_destroy_hx(l_p);
                ds_list_set(global.dp_player_list_hx, l_slot, undefined);
                var l_this1 = global.dp_player_on_change;
                var l_f = l_this1;
                
                if (l_f != undefined && l_f >= 0)
                    l_this1(l_slot);
            }
            
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "Slot " + string(l_slot + 1) + " was released.");
            
            break;
        
        case 205:
            var l_slot = buffer_read(argument1, buffer_u8);
            var l_i = buffer_read(argument1, buffer_u8);
            var l_this1 = global.dp_player_list_hx;
            var l_p = ds_list_find_value(l_this1, l_slot);
            ds_list_set(l_this1, l_slot, ds_list_find_value(l_this1, l_i));
            ds_list_set(l_this1, l_i, l_p);
            l_this1 = global.dp_player_on_swap;
            var l_f = l_this1;
            
            if (l_f != undefined && l_f >= 0)
                l_this1(l_slot, l_i);
            
            break;
        
        case 203:
            var l_i = buffer_read(argument1, buffer_u8);
            dp_player_set_count(l_i);
            
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "Slot count set to " + string(l_i) + ".");
            
            break;
        
        case 231:
            var l_i = buffer_read(argument1, buffer_s32);
            var l_sid = (l_i << 32) | buffer_read(argument1, buffer_s32) | 0;
            var l_this1 = global.dp_hub_on_steam_lobby_merge;
            var l_f = l_this1;
            
            if (l_f != undefined && l_f >= 0)
                l_this1(l_sid);
            
            dp_lobby_close();
            dp_steam_lobby_join(l_sid);
            global.dp_steam_lobby_merging_lobby = 1;
            break;
        
        case 210:
            var l_uid = buffer_read(argument1, buffer_s32);
            var l_url = buffer_read(argument1, buffer_string);
            var l_port = buffer_read(argument1, buffer_s32);
            var l_alias = buffer_read(argument1, buffer_string);
            var l_next = dp_net_netlink_new_hx(global.dp_net_server_link_hx[4], l_url, l_port);
            array_set(l_next, 1, l_uid);
            array_set(l_next, 2, l_alias);
            ds_list_add(global.dp_link_list_hx, l_next);
            ds_map_set(global.dp_link_map_hx, array_get(l_next, 1), l_next);
            buffer_seek(l_out, buffer_seek_start, 0);
            buffer_write(l_out, buffer_u8, 211);
            
            if (dp_net_netlink_send_raw_hx(l_next, l_out))
            {
                array_set(l_next, 16, (current_time - global.dp_time_offset) + 1000);
                
                if (global.dp_debug_state)
                    dp_debug_log_hx("State", "Connecting to " + dp_net_netlink_print_hx(l_next));
            }
            else if (global.dp_debug_state)
            {
                dp_debug_log_hx("State", "Couldn't connect to " + dp_net_netlink_print_hx(l_next));
            }
            
            array_set(l_next, 15, buffer_read(argument1, buffer_bool));
            var l_this1 = global.dp_lobby_on_arrival;
            var l_f = l_this1;
            
            if (l_f != undefined && l_f >= 0)
                l_this1(l_uid);
            
            break;
        
        case 240:
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "Got auth from " + dp_net_netlink_print_hx(argument0));
            
            break;
        
        case 211:
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "Got UDP hi from " + dp_net_netlink_print_hx(argument0));
            
            break;
        
        case 215:
            var l_next = ds_map_find_value(global.dp_link_map_hx, buffer_read(argument1, buffer_s32));
            
            if (l_next != undefined)
            {
                dp_net_packet__rtt_hx(l_out, l_next);
                dp_net_netlink_send_hx(l_next, l_out);
            }
            
            break;
        
        case 241:
            var l_next = global.dp_net_server_link_hx;
            
            if (l_next != undefined)
            {
                dp_link_list_remove_hx(global.dp_link_list_hx, l_next);
                ds_map_delete(global.dp_link_map_hx, l_next[1]);
            }
            
            array_set(l_next, 1, buffer_read(argument1, buffer_s32));
            ds_list_add(global.dp_link_list_hx, l_next);
            ds_map_set(global.dp_link_map_hx, array_get(l_next, 1), l_next);
            global.dp_local_uid = buffer_read(argument1, buffer_s32);
            array_set(l_next, 2, buffer_read(argument1, buffer_string));
            
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "UID is " + string(global.dp_local_uid) + ", server UID is " + dp_Std_stringify(global.dp_net_server_link_hx[1]));
            
            break;
        
        case 243:
            if (argument0[14])
                array_set(argument0, 14, 0);
            
            dp_lobby_open_hx();
            break;
        
        case 250:
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "Got start-request.");
            
            buffer_seek(l_out, buffer_seek_start, 0);
            buffer_write(l_out, buffer_u8, 250);
            dp_net_netlink_send_hx(argument0, l_out);
            break;
        
        case 251:
            var l_i = buffer_read(argument1, buffer_s32);
            global.dp_flow_initial_seed = buffer_read(argument1, buffer_s32);
            global.dp_flow_dump_prefix = buffer_read(argument1, buffer_string);
            
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "Starting in " + string(l_i) + "ms.");
            
            var l_t = current_time - global.dp_time_offset;
            
            while ((current_time - global.dp_time_offset - l_t) > l_i)
            {
            }
            
            dp_flow_start_hx();
            break;
        
        case 252:
            dp_net_packet__delay_change_read_hx(argument1);
            break;
        
        case 180:
            if (!global.dp_hub_is_active)
            {
                array_set(argument0, 1, -9000);
                array_set(argument0, 28, 0);
                global.dp_hub_link_hx = argument0;
                
                if (argument0 != undefined)
                {
                    dp_link_list_remove_hx(global.dp_link_list_hx, argument0);
                    ds_map_delete(global.dp_link_map_hx, argument0[1]);
                }
                
                global.dp_net_server_link_hx = undefined;
                global.dp_hub_local_uid_hx = buffer_read(argument1, buffer_s32);
                global.dp_hub_is_active = 1;
                var l_this1 = global.dp_hub_on_start;
                var l_f = l_this1;
                
                if (l_f != undefined && l_f >= 0)
                    l_this1();
                
                dp_hub_refresh_entries();
            }
            
            break;
        
        case 245:
            var l_uid = buffer_read(argument1, buffer_s32);
            var l_next = ds_map_find_value(global.dp_link_map_hx, l_uid);
            
            if (l_next != undefined)
            {
                var l_this1 = global.dp_lobby_on_departure;
                var l_f = l_this1;
                
                if (l_f != undefined && l_f >= 0)
                    l_this1(l_uid);
                
                if (l_next != undefined)
                {
                    dp_link_list_remove_hx(global.dp_link_list_hx, l_next);
                    ds_map_delete(global.dp_link_map_hx, l_next[1]);
                }
                
                dp_net_netlink_destroy_hx(l_next);
            }
            
            break;
        
        case 247:
            global.dp_replay_is_playing = 1;
            global.dp_replay_frames = buffer_read(argument1, buffer_u32);
            global.dp_replay_view_uid = buffer_read(argument1, buffer_s32);
            global.dp_replay_file_delay_hx = buffer_read(argument1, buffer_u8);
            break;
        
        case 229:
            dp_net_client_handle_error_hx(argument0, buffer_read(argument1, buffer_u8));
            break;
        
        default:
            dp_net_shared_handle_hx(argument0, l_mid, argument1);
    }
}

function dp_net_client_accept_hx(argument0)
{
    var l_out = global.dp_out;
    dp_net_packet__rtt_hx(l_out, argument0);
    dp_net_netlink_send_hx(argument0, l_out);
    array_set(argument0, 12, current_time - global.dp_time_offset);
}

function dp_link_iterator_hx()
{
    return gml_ds__array_list_array_list_iterator_create(global.dp_link_list_hx);
}

function dp_link_get_raw_list_hx()
{
    return global.dp_link_list_hx;
}

function dp_link_send_hx(argument0, argument1)
{
    var l_n = 0;
    var l__g_list = global.dp_link_list_hx;
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
    {
        if (dp_net_netlink_send_hx(ds_list_find_value(l__g_list, l__g_index++), argument0, argument1))
            l_n++;
    }
    
    return l_n;
}

function dp_link_handle_hx(argument0, argument1)
{
    if (global.dp_flow_is_active)
        dp_net_game_handle_hx(argument0, argument1);
    else if (dp_get_is_server())
        dp_net_server_handle_hx(argument0, argument1);
    else
        dp_net_client_handle_hx(argument0, argument1);
}

function dp_link_add_hx(argument0)
{
    ds_list_add(global.dp_link_list_hx, argument0);
    ds_map_set(global.dp_link_map_hx, array_get(argument0, 1), argument0);
}

function dp_link_remove_hx(argument0)
{
    if (argument0 == undefined)
        return 0;
    
    dp_link_list_remove_hx(global.dp_link_list_hx, argument0);
    ds_map_delete(global.dp_link_map_hx, argument0[1]);
}

function dp_link_replace_hx(argument0, argument1)
{
    var l__uid = argument0[1];
    array_set(argument0, 1, -9001);
    var l_i = 0;
    var l__g1 = ds_list_size(global.dp_link_list_hx);
    
    while (l_i < l__g1)
    {
        if (array_get(ds_list_find_value(global.dp_link_list_hx, l_i), 1) == -9001)
        {
            ds_list_set(global.dp_link_list_hx, l_i, argument1);
            ds_map_delete(global.dp_link_map_hx, l__uid);
            ds_map_set(global.dp_link_map_hx, array_get(argument1, 1), argument1);
            break;
        }
        
        l_i++;
    }
    
    array_set(argument0, 1, l__uid);
}

function dp_link_clear_hx(argument0)
{
    var l__g_list = global.dp_link_list_hx;
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
        dp_net_netlink_destroy_hx(ds_list_find_value(l__g_list, l__g_index++), argument0);
    
    ds_list_clear(global.dp_link_list_hx);
    ds_map_clear(global.dp_link_map_hx);
}

function dp_link_init_hx()
{
    global.dp_link_list_hx = ds_list_create();
    global.dp_link_map_hx = ds_map_create();
}

function dp_link_get_link_hx(argument0)
{
    return ds_map_find_value(global.dp_link_map_hx, argument0);
}

function dp_link_find_endpoint_hx(argument0, argument1)
{
    var l_l = global.dp_link_list_hx;
    var l_i = 0;
    var l__g1 = ds_list_size(l_l);
    
    while (l_i < l__g1)
    {
        var l_q = ds_list_find_value(l_l, l_i);
        
        if (l_q[5] == argument0 && l_q[6] == argument1)
            return l_q;
        
        l_i++;
    }
    
    return undefined;
}

function dp_link_get_count()
{
    return ds_list_size(global.dp_link_list_hx);
}

function dp_link_get_server_uid()
{
    if (global.dp_net_is_server_hx || !global.dp_net_is_online_hx)
        return global.dp_local_uid;
    
    var l_sv = global.dp_net_server_link_hx;
    
    if (l_sv != undefined)
        return l_sv[1];
    else
        return global.dp_local_uid;
}

function dp_link_get_uid(argument0)
{
    var l_l = global.dp_link_list_hx;
    
    if (argument0 >= 0 && argument0 < ds_list_size(l_l))
        return array_get(ds_list_find_value(l_l, argument0), 1);
    else
        return 0;
}

function dp_link_get_url(argument0)
{
    var l_q = ds_map_find_value(global.dp_link_map_hx, argument0);
    
    if (l_q == undefined)
        return "";
    else
        return l_q[5];
}

function dp_link_get_port(argument0)
{
    var l_q = ds_map_find_value(global.dp_link_map_hx, argument0);
    
    if (l_q == undefined)
        return 0;
    else
        return l_q[6];
}

function dp_link_get_alias(argument0)
{
    if (argument0 == global.dp_local_uid)
        return global.dp_player_local_alias;
    
    var l_q = ds_map_find_value(global.dp_link_map_hx, argument0);
    
    if (l_q == undefined)
        return "";
    else
        return l_q[2];
}

function dp_link_get_rtt(argument0)
{
    var l_q = ds_map_find_value(global.dp_link_map_hx, argument0);
    
    if (l_q == undefined)
        return 0;
    else
        return l_q[7];
}

function dp_link_get_att(argument0)
{
    var l_q = ds_map_find_value(global.dp_link_map_hx, argument0);
    
    if (l_q == undefined)
        return 0;
    else
        return l_q[9];
}

function dp_link_get_next_out(argument0)
{
    var l_q = ds_map_find_value(global.dp_link_map_hx, argument0);
    
    if (l_q == undefined)
        return -1;
    else
        return l_q[19];
}

function dp_link_get_confirmed_out(argument0)
{
    var l_q = ds_map_find_value(global.dp_link_map_hx, argument0);
    
    if (l_q == undefined)
        return -1;
    else
        return l_q[24] - 1;
}

function dp_link_count_viewers()
{
    var l_ll = global.dp_link_list_hx;
    var l_pl = global.dp_player_list_hx;
    var l_ln1 = ds_list_size(l_ll);
    var l_pn = ds_list_size(l_pl);
    var l_lr = 0;
    var l_i = 0;
    var l__g1 = l_ln1;
    
    while (l_i < l__g1)
    {
        var l_uid = array_get(ds_list_find_value(l_ll, l_i), 1);
        var l_k;
        
        for (l_k = 0; l_k < l_pn; l_k++)
        {
            var l_p = ds_list_find_value(l_pl, l_k);
            
            if (l_p != undefined && l_p[1] == l_uid)
                break;
        }
        
        if (l_k >= l_pn)
            l_lr++;
        
        l_i++;
    }
    
    return l_lr;
}

function dp_link_find_viewer(argument0)
{
    var l_ll = global.dp_link_list_hx;
    var l_pl = global.dp_player_list_hx;
    var l_ln1 = ds_list_size(l_ll);
    var l_pn = ds_list_size(l_pl);
    var l_i = 0;
    var l__g1 = l_ln1;
    
    while (l_i < l__g1)
    {
        var l_uid = array_get(ds_list_find_value(l_ll, l_i), 1);
        var l_k;
        
        for (l_k = 0; l_k < l_pn; l_k++)
        {
            var l_p = ds_list_find_value(l_pl, l_k);
            
            if (l_p != undefined && l_p[1] == l_uid)
                break;
        }
        
        if (l_k >= l_pn && --argument0 < 0)
            return l_uid;
        
        l_i++;
    }
    
    return 0;
}

function dp_link_drop(argument0)
{
    var l_found = 0;
    var l_out = global.dp_out;
    var l_link = ds_map_find_value(global.dp_link_map_hx, argument0);
    
    if (l_link != undefined)
    {
        var l_this1 = global.dp_lobby_on_departure;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1(argument0);
        
        buffer_seek(l_out, buffer_seek_start, 0);
        buffer_write(l_out, buffer_u8, 229);
        buffer_write(l_out, buffer_u8, 236);
        dp_net_netlink_send_hx(l_link, l_out);
        dp_net_netlink_destroy_hx(l_link, 0);
        
        if (l_link != undefined)
        {
            dp_link_list_remove_hx(global.dp_link_list_hx, l_link);
            ds_map_delete(global.dp_link_map_hx, l_link[1]);
        }
        
        l_found = 1;
    }
    
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 245);
    buffer_write(l_out, buffer_s32, argument0);
    dp_link_send_hx(l_out);
    return l_found;
}

function dp_net_netlink_new_hx(argument0, argument1, argument2)
{
    var this = [global.mt_dp_net_netlink];
    array_copy(this, 1, global.mq_dp_net_netlink, 1, 35);
    
    if (argument1 == undefined)
        argument1 = "";
    
    if (argument2 == undefined)
        argument2 = -1;
    
    array_set(this, 35, 0);
    array_set(this, 34, 0);
    array_set(this, 33, ds_list_create());
    array_set(this, 32, 0);
    array_set(this, 31, ds_list_create());
    array_set(this, 30, ds_map_create());
    array_set(this, 29, 0);
    array_set(this, 28, 1);
    array_set(this, 27, 0);
    array_set(this, 26, 0);
    array_set(this, 25, ds_list_create());
    array_set(this, 24, 0);
    array_set(this, 23, ds_list_create());
    array_set(this, 22, undefined);
    array_set(this, 21, 0);
    array_set(this, 20, undefined);
    array_set(this, 19, 0);
    array_set(this, 18, 0);
    array_set(this, 17, 0);
    array_set(this, 16, -1);
    array_set(this, 15, 0);
    array_set(this, 14, 0);
    array_set(this, 13, -1);
    array_set(this, 11, 0);
    array_set(this, 10, array_create(global.dp_net_netlink_att_max_hx + 1, 0));
    array_set(this, 9, 0);
    array_set(this, 8, 0);
    array_set(this, 7, -1);
    array_set(this, 3, 0);
    array_set(this, 2, "");
    array_set(this, 1, -5);
    array_set(this, 4, argument0);
    array_set(this, 5, argument1);
    array_set(this, 6, argument2);
    
    if (global.dp_debug_state)
        dp_debug_log_hx("State", "Created " + dp_net_netlink_print_hx(this));
    
    var l_now = current_time - global.dp_time_offset;
    array_set(this, 12, l_now);
    array_set(this, 27, l_now);
    array_set(this, 29, l_now);
    return this;
}

function dp_net_netlink_from_steam_id_hx(argument0)
{
    return dp_net_netlink_new_hx(global.dp_adapter, dp_type_url_from_int((argument0 & 4294967295) div 1), argument0 >> 32);
}

function dp_net_netlink_to_steam_id_hx(argument0)
{
    return (argument0[6] << 32) | dp_type_url_to_int(argument0[5]) | 0;
}

function dp_net_netlink_get_is_server(argument0)
{
    if (global.dp_has_steam)
    {
        var l_o = dp_steam_lobby_get_owner();
        return dp_type_url_to_int(argument0[5]) == ((l_o & 4294967295) div 1) && argument0[6] == (l_o >> 32);
    }
    
    return argument0[1] == global.dp_net_server_link_hx[1];
}

function dp_net_netlink_destroy_hx(argument0, argument1 = 0, argument2 = -1)
{
    if (argument0[35])
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "Trying to destroy a Link for a second time.");
        
        return 0;
    }
    
    if (global.dp_debug_state)
        dp_debug_log_hx("State", "Closing " + dp_net_netlink_print_hx(argument0));
    
    if (argument1)
    {
        var l_out = global.dp_out;
        
        if (argument2 != -1)
        {
            buffer_seek(l_out, buffer_seek_start, 0);
            buffer_write(l_out, buffer_u8, 229);
            buffer_write(l_out, buffer_u8, argument2);
        }
        else
        {
            buffer_seek(l_out, buffer_seek_start, 0);
            buffer_write(l_out, buffer_u8, 244);
            var l_frame = 0;
            
            if (global.dp_flow_is_active)
                l_frame = global.dp_current_frame;
            
            buffer_write(l_out, buffer_u32, l_frame);
        }
        
        dp_net_netlink_send_hx(argument0, l_out);
    }
    
    array_set(argument0, 35, 1);
    
    for (var l_rpi = 0; l_rpi < 2; l_rpi++)
    {
        var l_rpl = (l_rpi == 0) ? argument0[23] : argument0[25];
        l_n = ds_list_size(l_rpl);
        
        for (var l_i = 0; l_i < l_n; l_i++)
            dp_link_relpacket_destroy_hx(ds_list_find_value(l_rpl, l_i));
        
        ds_list_destroy(l_rpl);
    }
    
    array_set(argument0, 23, undefined);
    array_set(argument0, 25, undefined);
    array_set(argument0, 10, undefined);
    ds_list_destroy(argument0[33]);
    array_set(argument0, 33, undefined);
    var l_unreadIds = argument0[31];
    var l_unread = argument0[30];
    var l_n = ds_list_size(l_unreadIds);
    
    for (var l_i = 0; l_i < l_n; l_i++)
        dp_link_relpacket_destroy_hx(ds_map_find_value(l_unread, ds_list_find_value(l_unreadIds, l_i)));
    
    ds_map_destroy(l_unread);
    array_set(argument0, 30, undefined);
    ds_list_destroy(l_unreadIds);
    array_set(argument0, 31, undefined);
    
    if (argument0[20] != undefined)
    {
        dp_free_buffer(argument0[20]);
        array_set(argument0, 20, undefined);
    }
    
    if (argument0[22] != undefined)
    {
        dp_free_buffer(argument0[22]);
        array_set(argument0, 22, undefined);
    }
}

function dp_net_netlink_read_data_inner_hx(argument0, argument1, argument2, argument3, argument4, argument5, argument6)
{
    var l_acc = argument0[20];
    var l_acl;
    
    if (l_acc == undefined)
    {
        l_acc = dp_make_buffer(argument4);
        l_acl = 0;
    }
    else
    {
        l_acl = argument0[21];
    }
    
    if (buffer_get_size(l_acc) < (l_acl + argument4))
        buffer_resize(l_acc, l_acl + argument4);
    
    buffer_copy(argument1, argument6, argument4, l_acc, l_acl);
    array_set(argument0, 21, l_acl + argument4);
    array_set_post(argument0, 17, array_get(argument0, 17) + 1);
    
    if (argument5)
    {
        array_set(argument0, 20, l_acc);
    }
    else
    {
        if (global.dp_debug_packet_proc)
            dp_debug_log_hx("PkProc", string(argument3) + " " + dp_net_packet_get_name_hx(buffer_peek(l_acc, 0, buffer_u8)));
        
        switch (argument0[32])
        {
            case 1:
                dp_link_handle_hx(argument0, l_acc);
                break;
            
            case 3:
                dp_net_pre_handle_hx(argument0, l_acc);
                break;
            
            case 2:
                dp_hub_handle_hx(argument0, l_acc);
                break;
            
            default:
                if (global.dp_debug_warnings)
                    dp_debug_log_hx("Warning", string(argument0[32]) + " is not a known handler.");
        }
        
        buffer_delete(l_acc);
        array_set(argument0, 20, undefined);
    }
    
    if (argument2 != undefined)
    {
        dp_link_relpacket_destroy_hx(argument2);
        
        if (argument0[35])
        {
            return 1;
        }
        else
        {
            var l__this = argument0[31];
            ds_list_delete(l__this, ds_list_find_index(l__this, argument3));
            ds_map_delete(argument0[30], argument3);
        }
    }
    else if (!argument0[35])
    {
        argument2 = ds_map_find_value(array_get(argument0, 30), argument3);
        
        if (argument2 != undefined)
        {
            dp_link_relpacket_destroy_hx(argument2);
            var l__this = argument0[31];
            ds_list_delete(l__this, ds_list_find_index(l__this, argument3));
            ds_map_delete(argument0[30], argument3);
        }
    }
    
    if (argument0[35])
        return 1;
    
    var l_np = ds_map_find_value(array_get(argument0, 30), array_get(argument0, 17));
    
    if (l_np != undefined)
    {
        var l_nb = l_np[1];
        buffer_seek(l_nb, buffer_seek_start, 0);
        dp_net_netlink_read_data_hx(argument0, l_nb, l_np[2], l_np, l_np[4]);
    }
    
    return 1;
}

function dp_net_netlink_read_data_hx(argument0, argument1, argument2, argument3, argument4)
{
    var l_now = current_time - global.dp_time_offset;
    array_set(argument0, 29, l_now);
    array_set(argument0, 27, l_now);
    var l_startOffset = buffer_tell(argument1);
    var l_mid = buffer_read(argument1, buffer_u8);
    var l_id = buffer_read(argument1, buffer_u32);
    var l_len = buffer_read(argument1, buffer_s32);
    var l_crc16_till = buffer_tell(argument1);
    var l_crc16_0 = buffer_read(argument1, buffer_u16);
    
    if (argument4)
    {
        var l_crc16_1 = dp_crc16(argument1, l_startOffset, l_crc16_till - l_startOffset);
        
        if (l_crc16_0 != l_crc16_1)
        {
            if (global.dp_debug_rel)
                dp_debug_log_hx("Rel", "Header checksum mismatch (" + string(l_crc16_0) + "\\" + string(l_crc16_1) + ") on #" + string(l_id));
            
            return 0;
        }
    }
    
    var l_wait;
    
    if ((l_len & -2147483648) != 0)
    {
        l_len &= 2147483647;
        l_wait = 1;
    }
    else
    {
        l_wait = 0;
    }
    
    var l_data_pos = buffer_tell(argument1);
    buffer_seek(argument1, buffer_seek_relative, l_len);
    var l_crc32_0 = buffer_read(argument1, buffer_u32);
    
    if (argument4)
    {
        var l_crc32_1 = dp_crc32(argument1, l_data_pos, l_len);
        
        if (l_crc32_0 != l_crc32_1)
        {
            if (global.dp_debug_rel)
                dp_debug_log_hx("Rel", "Data checksum mismatch (" + dp_Std_stringify(l_crc32_0) + "\\" + dp_Std_stringify(l_crc32_1) + ") on #" + string(l_id));
            
            var l_out = global.dp_out;
            buffer_seek(l_out, buffer_seek_start, 0);
            buffer_write(l_out, buffer_u8, 174);
            buffer_write(l_out, buffer_u32, l_id);
            buffer_write(l_out, buffer_u32, 1);
            dp_net_netlink_send_raw_hx(argument0, l_out);
            return 0;
        }
    }
    
    if (l_id != argument0[17])
    {
        if (l_id >= argument0[17])
        {
            if (argument3 == undefined && !ds_map_exists(argument0[30], l_id))
            {
                var l_ub = dp_make_buffer(argument2);
                buffer_copy(argument1, l_startOffset, argument2, l_ub, 0);
                ds_map_set(array_get(argument0, 30), l_id, dp_link_relpacket_new_hx(l_ub, argument2));
                var l_unreadPos = 0;
                var l_unreadIds = argument0[31];
                var l_unreadLen = ds_list_size(l_unreadIds);
                
                while (l_unreadPos < l_unreadLen)
                {
                    if (ds_list_find_value(l_unreadIds, l_unreadPos) < l_id)
                        break;
                    
                    l_unreadPos++;
                }
                
                ds_list_insert(l_unreadIds, l_unreadPos, l_id);
            }
        }
        
        return 0;
    }
    
    return dp_net_netlink_read_data_inner_hx(argument0, argument1, argument3, l_id, l_len, l_wait, l_data_pos);
}

function dp_net_netlink_read_batch_hx(argument0, argument1, argument2)
{
    var l_now = current_time - global.dp_time_offset;
    array_set(argument0, 29, l_now);
    array_set(argument0, 27, l_now);
    var l_endOffset = buffer_tell(argument1) + argument2;
    buffer_read(argument1, buffer_u8);
    var l_totalSize = buffer_read(argument1, buffer_u16);
    var l_count = buffer_read(argument1, buffer_u16);
    
    if ((l_count & 32768) != 0)
    {
        l_count &= -32769;
        dp_net_netlink_read_rel_got_hx(argument0, buffer_read(argument1, buffer_u32));
    }
    
    if ((buffer_tell(argument1) + l_totalSize) > l_endOffset)
    {
        if (global.dp_debug_rel)
            dp_debug_log_hx("Rel", "Batch packet isn't big enough (" + string(l_totalSize) + ", " + string(l_endOffset) + ")");
        
        return 0;
    }
    
    if (global.dp_debug_batch)
    {
        var l_start = buffer_tell(argument1);
        var l_bd = "inBatch(want=" + string(argument0[17]) + "):";
        
        repeat (l_count)
        {
            var l_pktId = buffer_read(argument1, buffer_u32);
            var l_pktSize = buffer_read(argument1, buffer_u16);
            l_bd += (" #" + string(l_pktId) + "(" + dp_net_packet_get_name_hx(buffer_peek(argument1, buffer_tell(argument1), buffer_u8)) + ":" + string(l_pktSize) + ")");
            buffer_seek(argument1, buffer_seek_relative, l_pktSize);
        }
        
        if (global.dp_debug_batch)
            dp_debug_log_hx("Batch", l_bd);
        
        buffer_seek(argument1, buffer_seek_start, l_start);
    }
    
    repeat (l_count)
    {
        var l_pktId = buffer_read(argument1, buffer_u32);
        var l_pktSize = buffer_read(argument1, buffer_u16);
        var l_pktStart = buffer_tell(argument1);
        buffer_seek(argument1, buffer_seek_relative, l_pktSize);
        
        if (l_pktId < argument0[17])
            continue;
        
        if (l_pktId == argument0[17])
        {
            dp_net_netlink_read_data_inner_hx(argument0, argument1, undefined, l_pktId, l_pktSize, 0, l_pktStart);
        }
        else if (ds_map_exists(argument0[30], l_pktId))
        {
        }
        else
        {
            var l_ub = dp_make_buffer(l_pktSize + 15);
            buffer_seek(l_ub, buffer_seek_start, 0);
            buffer_write(l_ub, buffer_u8, 171);
            buffer_write(l_ub, buffer_u32, l_pktId);
            buffer_write(l_ub, buffer_s32, l_pktSize);
            buffer_write(l_ub, buffer_u16, 0);
            dp_gml_io__Buffer_BufferImpl_writeBufferExt(l_ub, argument1, l_pktStart, l_pktSize);
            buffer_write(l_ub, buffer_u32, 0);
            var l_pkt = dp_link_relpacket_new_hx(l_ub, l_pktSize);
            array_set(l_pkt, 4, 0);
            ds_map_set(array_get(argument0, 30), l_pktId, l_pkt);
            var l_unreadPos = 0;
            var l_unreadIds = argument0[31];
            var l_unreadLen = ds_list_size(l_unreadIds);
            
            while (l_unreadPos < l_unreadLen)
            {
                if (ds_list_find_value(l_unreadIds, l_unreadPos) < l_pktId)
                    break;
                
                l_unreadPos++;
            }
            
            ds_list_insert(l_unreadIds, l_unreadPos, l_pktId);
        }
    }
    
    return 1;
}

function dp_net_netlink_read_rel_got_hx(argument0, argument1)
{
    var l_sent = argument0[23];
    
    while (argument0[24] <= argument1 && ds_list_size(l_sent) > 0)
    {
        dp_link_relpacket_destroy_hx(ds_list_find_value(l_sent, 0));
        ds_list_delete(l_sent, 0);
        array_set_post(argument0, 24, array_get(argument0, 24) + 1);
    }
}

function dp_net_netlink_is_hx(argument0, argument1, argument2, argument3)
{
    return argument0[5] == argument2 && argument0[6] == argument3;
}

function dp_net_netlink_handle_hx(argument0, argument1, argument2)
{
    if (argument0[35])
        return 0;
    
    var l_b_start = buffer_tell(argument1);
    var l_mid = buffer_read(argument1, buffer_u8);
    var l_read = 1;
    
    switch (l_mid)
    {
        case 181:
            if (global.dp_debug_rel)
                dp_debug_log_hx("Rel", "Got holepunch from " + dp_net_netlink_print_hx(argument0));
            
            break;
        
        case 173:
            dp_net_netlink_read_rel_got_hx(argument0, buffer_read(argument1, buffer_u32));
            break;
        
        case 172:
            var l_id = buffer_read(argument1, buffer_u32);
            var l_i = l_id - argument0[24];
            
            if (l_i < 0)
                l_i = 0;
            
            while (l_i < ds_list_size(argument0[23]))
            {
                var l__this = ds_list_find_value(array_get(argument0, 23), l_i);
                
                if (!dp_net_netlink_send_raw_hx(argument0, l__this[1], l__this[2]))
                    break;
                
                l_i++;
            }
            
            break;
        
        case 174:
            var l_id = buffer_read(argument1, buffer_u32);
            var l_i = l_id - argument0[24];
            
            if (l_i < 0)
                l_i = 0;
            
            var l_num = buffer_read(argument1, buffer_u32);
            
            while (--l_num >= 0 && l_i < ds_list_size(argument0[23]))
            {
                var l__this = ds_list_find_value(array_get(argument0, 23), l_i);
                
                if (!dp_net_netlink_send_raw_hx(argument0, l__this[1], l__this[2]))
                    break;
                
                l_i++;
            }
            
            break;
        
        case 171:
            buffer_seek(argument1, buffer_seek_start, l_b_start);
            l_read = dp_net_netlink_read_data_hx(argument0, argument1, argument2, undefined, 1);
            break;
        
        case 175:
            buffer_seek(argument1, buffer_seek_start, l_b_start);
            l_read = dp_net_netlink_read_batch_hx(argument0, argument1, argument2);
            break;
        
        case 211:
        case 212:
            var l_out = global.dp_out;
            
            if (l_mid == 211)
            {
                if (global.dp_debug_state)
                    dp_debug_log_hx("State", "Got UDP hi from " + dp_net_netlink_print_hx(argument0));
                
                buffer_seek(l_out, buffer_seek_start, 0);
                buffer_write(l_out, buffer_u8, 212);
                dp_net_netlink_send_raw_hx(argument0, l_out);
            }
            else if (global.dp_debug_state)
            {
                dp_debug_log_hx("State", "Got UDP hi2 from " + dp_net_netlink_print_hx(argument0));
            }
            
            array_set(argument0, 16, -1);
            
            if (argument0[15])
            {
                array_set(argument0, 15, 0);
                
                if (global.dp_debug_state)
                    dp_debug_log_hx("State", "Sent an RTT to " + dp_net_netlink_print_hx(argument0));
                
                dp_net_packet__rtt_hx(l_out, argument0);
                dp_net_netlink_send_hx(argument0, l_out);
            }
            
            break;
        
        default:
            if (global.dp_debug_rel)
                dp_debug_log_hx("Rel", "Got weird packet (id " + string(l_mid) + ") from " + dp_net_netlink_print_hx(argument0));
            
            l_read = 0;
    }
    
    buffer_seek(argument1, buffer_seek_start, l_b_start + argument2);
    return l_read;
}

function dp_net_netlink_update_hx(argument0)
{
    if (argument0[35])
        return 0;
    
    if (argument0[22] != undefined)
    {
        dp_free_buffer(argument0[22]);
        array_set(argument0, 22, undefined);
    }
    
    while (ds_list_size(argument0[25]) > 0)
    {
        var l_u = ds_list_find_value(array_get(argument0, 25), 0);
        
        if (dp_net_netlink_send_raw_hx(argument0, l_u[1], l_u[2]))
        {
            dp_link_relpacket_destroy_hx(l_u);
            ds_list_delete(argument0[25], 0);
        }
        else
        {
            break;
        }
    }
    
    var l_now = current_time - global.dp_time_offset;
    var l_out = global.dp_out;
    
    if (argument0[16] != -1 && l_now > argument0[16])
    {
        buffer_seek(l_out, buffer_seek_start, 0);
        buffer_write(l_out, buffer_u8, 211);
        dp_net_netlink_send_raw_hx(argument0, l_out);
        array_set(argument0, 16, l_now + 700);
    }
    
    if (argument0[14] && argument0[29] < (l_now - 500))
    {
        if (global.dp_debug_rel)
            dp_debug_log_hx("Rel", "Sending connect-packet to " + dp_net_netlink_print_hx(argument0) + " again.");
        
        array_set(argument0, 29, l_now);
        
        if (ds_list_size(argument0[23]) > 0)
        {
            var l__this = ds_list_find_value(array_get(argument0, 23), 0);
            dp_net_netlink_send_raw_hx(argument0, l__this[1], l__this[2]);
        }
    }
    else if (argument0[28] && argument0[17] > 1 && (l_now - argument0[27]) > ((argument0[7] * 2) + 50) && argument0[29] < (l_now - 500))
    {
        if (global.dp_debug_rel)
            dp_debug_log_hx("Rel", "Asking " + dp_net_netlink_print_hx(argument0) + " to send packets #" + string(argument0[17]) + "+ again.");
        
        array_set(argument0, 29, l_now);
        buffer_seek(l_out, buffer_seek_start, 0);
        buffer_write(l_out, buffer_u8, 172);
        buffer_write(l_out, buffer_u32, argument0[17]);
        dp_net_netlink_send_raw_hx(argument0, l_out);
    }
    else if (ds_list_size(argument0[31]) > 0 && argument0[26] != argument0[17])
    {
        var l_next = ds_list_find_value(array_get(argument0, 31), 0);
        
        if (global.dp_debug_rel)
        {
            var l_msg = "Asking " + dp_net_netlink_print_hx(argument0) + " to send packet";
            
            if ((l_next - 1) != argument0[17])
                l_msg += ("s #" + string(argument0[17]) + "-" + string(l_next - 1) + ".");
            else
                l_msg += (" #" + string(argument0[17]) + ".");
            
            dp_debug_log_hx("Rel", l_msg);
        }
        
        array_set(argument0, 26, argument0[17]);
        buffer_seek(l_out, buffer_seek_start, 0);
        buffer_write(l_out, buffer_u8, 174);
        buffer_write(l_out, buffer_u32, argument0[17]);
        buffer_write(l_out, buffer_u32, l_next - argument0[17]);
        dp_net_netlink_send_raw_hx(argument0, l_out);
    }
    
    dp_net_netlink_flush_together_hx(argument0);
}

function dp_net_netlink_flush_together_hx(argument0)
{
    var l__gthis = argument0;
    var l_buf = global.dp_net_netlink_flush_together_buf_hx;
    var l_idInSent_new = argument0[17] - 1;
    var l_debugData = global.dp_debug_batch ? "" : undefined;
    
    if (ds_list_size(argument0[33]) == 0)
    {
        if (argument0[18] < l_idInSent_new)
        {
            array_set(argument0, 18, l_idInSent_new);
            buffer_seek(l_buf, buffer_seek_start, 0);
            buffer_write(l_buf, buffer_u8, 173);
            buffer_write(l_buf, buffer_u32, l_idInSent_new);
            dp_net_netlink_send_raw_hx(argument0, l_buf);
        }
        
        return 0;
    }
    
    var l_size = 0;
    var l_count = 0;
    buffer_seek(l_buf, buffer_seek_start, 0);
    buffer_write(l_buf, buffer_u8, 175);
    buffer_write(l_buf, buffer_u16, 0);
    buffer_write(l_buf, buffer_u16, 0);
    var l_countFlags = 0;
    
    if (argument0[18] < l_idInSent_new)
    {
        array_set(argument0, 18, l_idInSent_new);
        l_countFlags |= 32768;
        buffer_write(l_buf, buffer_u32, l_idInSent_new);
    }
    
    var l_optSize = 0;
    var l_minFrame = global.dp_current_frame - 5;
    var l__g_list = argument0[33];
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
    {
        var l_pkt = ds_list_find_value(l__g_list, l__g_index++);
        
        if (l_pkt[1] == undefined)
        {
            var l_procRet = 0;
        }
        else
        {
            var l_pktSize = l_pkt[2] - 15;
            var l_newSize = l_size + l_pktSize + 6;
            var l_procRet;
            
            if (l_newSize > 1040)
            {
                buffer_poke(l_buf, 1, buffer_u16, l_size);
                buffer_poke(l_buf, 3, buffer_u16, l_countFlags | l_count);
                buffer_write(l_buf, buffer_u32, dp_crc32(l_buf, 5, buffer_tell(l_buf) - 5));
                dp_net_netlink_send_raw_hx(l__gthis, l_buf);
                buffer_seek(l_buf, buffer_seek_start, 5);
                l_size = 0;
                l_count = 0;
                l_procRet = 1;
            }
            else
            {
                l_procRet = 1;
            }
            
            if (l_procRet)
            {
                if (l_debugData != undefined)
                    l_debugData += (" #" + dp_Std_stringify(buffer_peek(l_pkt[1], 1, buffer_s32)) + "<" + dp_net_packet_get_name_hx(buffer_peek(l_pkt[1], 11, buffer_u8)) + ":" + string(l_pktSize) + ">");
                
                buffer_write(l_buf, buffer_s32, buffer_peek(l_pkt[1], 1, buffer_s32));
                buffer_write(l_buf, buffer_u16, l_pktSize);
                dp_gml_io__Buffer_BufferImpl_writeBufferExt(l_buf, l_pkt[1], 11, l_pktSize);
                l_count++;
                l_size += (l_pktSize + 6);
            }
        }
    }
    
    ds_list_clear(argument0[33]);
    var l_sent = argument0[23];
    var l_i = argument0[34] - argument0[24];
    
    if (l_i > ds_list_size(l_sent))
        l_i = ds_list_size(l_sent);
    
    if (l_debugData != undefined)
        l_debugData += " ";
    
    while (--l_i >= 0)
    {
        var l_pkt = ds_list_find_value(l_sent, l_i);
        var l_procRet;
        
        if (l_pkt[1] == undefined || l_pkt[3] < l_minFrame)
        {
            l_procRet = 0;
        }
        else
        {
            var l_pktSize = l_pkt[2] - 15;
            var l_newSize = l_size + l_pktSize + 6;
            
            if (l_newSize > 1040)
            {
                buffer_poke(l_buf, 1, buffer_u16, l_size);
                buffer_poke(l_buf, 3, buffer_u16, l_countFlags | l_count);
                buffer_write(l_buf, buffer_u32, dp_crc32(l_buf, 5, buffer_tell(l_buf) - 5));
                dp_net_netlink_send_raw_hx(l__gthis, l_buf);
                buffer_seek(l_buf, buffer_seek_start, 5);
                l_size = 0;
                l_count = 0;
                l_procRet = l_optSize < 128;
            }
            else
            {
                l_procRet = 1;
            }
            
            if (l_procRet)
            {
                if (l_debugData != undefined)
                    l_debugData += (" #" + dp_Std_stringify(buffer_peek(l_pkt[1], 1, buffer_s32)) + "<" + dp_net_packet_get_name_hx(buffer_peek(l_pkt[1], 11, buffer_u8)) + ":" + string(l_pktSize) + ">");
                
                buffer_write(l_buf, buffer_s32, buffer_peek(l_pkt[1], 1, buffer_s32));
                buffer_write(l_buf, buffer_u16, l_pktSize);
                dp_gml_io__Buffer_BufferImpl_writeBufferExt(l_buf, l_pkt[1], 11, l_pktSize);
                l_count++;
                l_size += (l_pktSize + 6);
                l_optSize += (l_pktSize + 6);
            }
        }
        
        if (!l_procRet)
            break;
    }
    
    buffer_poke(l_buf, 1, buffer_u16, l_size);
    buffer_poke(l_buf, 3, buffer_u16, l_countFlags | l_count);
    buffer_write(l_buf, buffer_u32, dp_crc32(l_buf, 5, buffer_tell(l_buf) - 5));
    dp_net_netlink_send_raw_hx(l__gthis, l_buf);
    array_set(argument0, 34, argument0[24] + ds_list_size(l_sent));
    
    if (l_debugData != undefined)
    {
        if (global.dp_debug_batch)
            dp_debug_log_hx("Batch", "batchOut:" + dp_Std_stringify(l_debugData));
    }
}

function dp_net_netlink_send_raw_hx(argument0, argument1, argument2)
{
    if (argument0[4] == undefined)
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "Sending to nowhere (" + dp_net_netlink_print_hx(argument0) + ")");
        
        return 0;
    }
    
    if (argument2 == undefined)
        argument2 = buffer_tell(argument1);
    
    global.dp_net_packet_counter += 1;
    global.dp_net_byte_counter += argument2;
    var l_r = dp_net_adapters_adp_steam_wrap_send(global.dp_adapter, argument0[4], argument0[5], argument0[6], argument1, argument2);
    
    if (global.dp_debug_packets)
    {
        var l_s = dp_net_netlink_print_hx(argument0);
        l_s += (l_r ? " > " : " -/> ");
        l_s += dp_net_packet_printer_proc_hx(argument1, 0, argument2);
        dp_debug_log_hx("Packet", l_s);
    }
    
    return l_r;
}

function dp_net_netlink_send_hx(argument0, argument1, argument2)
{
    var l_totalSize;
    
    if (argument2 == undefined)
        l_totalSize = buffer_tell(argument1);
    else
        l_totalSize = argument2;
    
    var l_pos = 0;
    var l_res = 1;
    
    while (l_pos < l_totalSize)
    {
        var l_len = l_totalSize - l_pos;
        
        if (l_len > 1024)
            l_len = 1024;
        
        var l_wrapSize = l_len + 15;
        var l_b = dp_make_buffer(l_wrapSize);
        buffer_seek(l_b, buffer_seek_start, 0);
        buffer_write(l_b, buffer_u8, 171);
        buffer_write(l_b, buffer_u32, array_set_post(argument0, 19, array_get(argument0, 19) + 1));
        
        if ((l_pos + l_len) < l_totalSize)
            buffer_write(l_b, buffer_s32, l_len | -2147483648);
        else
            buffer_write(l_b, buffer_s32, l_len);
        
        buffer_write(l_b, buffer_u16, dp_crc16(l_b, 0, buffer_tell(l_b)));
        buffer_copy(argument1, l_pos, l_len, l_b, buffer_tell(l_b));
        buffer_seek(l_b, buffer_seek_relative, l_len);
        buffer_write(l_b, buffer_u32, dp_crc32(argument1, l_pos, l_len));
        
        if (argument0[35])
        {
            if (global.dp_debug_warnings)
                dp_debug_log_hx("Warning", "Sent " + dp_print_buffer(argument1, l_len) + " to a destroyed socket " + dp_net_netlink_print_hx(argument0));
            
            if (!dp_net_netlink_send_raw_hx(argument0, l_b, l_wrapSize))
                l_res = 0;
            
            buffer_delete(l_b);
        }
        else if (l_totalSize < 128 && global.dp_net_allow_batching)
        {
            var l_pkt = dp_link_relpacket_new_hx(l_b, l_wrapSize);
            ds_list_add(argument0[23], l_pkt);
            ds_list_add(argument0[33], l_pkt);
            dp_net_netlink_flush_together_hx(argument0);
        }
        else if (dp_net_netlink_send_raw_hx(argument0, l_b, l_wrapSize))
        {
            ds_list_add(argument0[23], dp_link_relpacket_new_hx(l_b, l_wrapSize));
        }
        else
        {
            ds_list_add(argument0[25], dp_link_relpacket_new_hx(l_b, l_wrapSize));
            l_res = 0;
        }
        
        l_pos += l_len;
    }
    
    return l_res;
}

function dp_net_netlink_print_hx(argument0)
{
    return "[u" + dp_Std_stringify(argument0[1]) + " @" + dp_Std_stringify(argument0[5]) + ":" + string(argument0[6]) + "]";
}

function dp_link_relpacket_new_hx(argument0, argument1)
{
    var this = [global.mt_dp_link_relpacket];
    array_copy(this, 1, global.mq_dp_link_relpacket, 1, 4);
    array_set(this, 4, 1);
    array_set(this, 1, argument0);
    array_set(this, 2, argument1);
    array_set(this, 3, global.dp_current_frame);
    global.dp_net_buffer_counter++;
    return this;
}

function dp_link_relpacket_destroy_hx(argument0)
{
    if (argument0[1] != undefined)
    {
        dp_free_buffer(argument0[1]);
        global.dp_net_buffer_counter--;
        array_set(argument0, 1, undefined);
    }
}

function dp_link_list_remove_hx(argument0, argument1)
{
    if (argument1 == undefined)
        return 0;
    
    var l_u0 = argument1[1];
    var l_u1 = -9001;
    var l_len = ds_list_size(argument0);
    array_set(argument1, 1, l_u1);
    
    for (var l_i = 0; l_i < l_len; l_i++)
    {
        if (array_get(ds_list_find_value(argument0, l_i), 1) == l_u1)
        {
            ds_list_delete(argument0, l_i);
            break;
        }
    }
    
    array_set(argument1, 1, l_u0);
}

function dp_net_error_get_text_hx(argument0)
{
    switch (argument0)
    {
        case -1:
            return "none";
        
        case 230:
            return "game_mismatch";
        
        case 231:
            return "version_mismatch";
        
        case 232:
            return "password_mismatch";
        
        case 233:
            return "auth_failure";
        
        case 234:
            return "server_full";
        
        case 235:
            return "game_in_progress";
        
        case 236:
            return "dropped_by_host";
        
        case 237:
            return "lobby_locked";
        
        case 238:
            return "error_timeout";
        
        case 239:
            return "lobby_destroyed";
        
        case 255:
            return "unknown_query";
        
        default:
            return "error_" + string(argument0);
    }
}

function dp_net_error_get_name(argument0)
{
    switch (argument0)
    {
        case 231:
            return "ERROR_GAME_VER";
        
        case 232:
            return "ERROR_PASSWORD";
        
        case 234:
            return "ERROR_FULL";
        
        case 235:
            return "ERROR_FLOW";
        
        case 236:
            return "ERROR_DROP";
        
        case 237:
            return "ERROR_LOCKED";
        
        case 238:
            return "ERROR_TIMEOUT";
        
        case 239:
            return "ERROR_LOBBY_DESTROYED";
        
        case 255:
            return "ERROR_UNKNOWN";
        
        case 233:
            return "ERROR_UID";
        
        case 230:
            return "ERROR_GAME_ID";
        
        case -1:
            return "NONE";
        
        default:
            return undefined;
    }
}

function dp_net_game_handle_state_hx(argument0, argument1)
{
    var l_id = buffer_read(argument1, buffer_u8);
    var l_slot = ds_list_find_value(global.dp_player_list_hx, l_id);
    
    if (l_slot == undefined)
        return 0;
    
    var l_slot_uid = l_slot[1];
    var l_link_uid = argument0[1];
    
    if (l_slot == undefined || (l_slot_uid != l_link_uid && !(global.dp_replay_is_playing && dp_net_netlink_get_is_server(argument0))))
    {
        if (global.dp_debug_warnings)
            dp_debug_log_hx("Warning", "Slot " + string(l_id) + " belongs to " + dp_Std_stringify(l_slot_uid) + ", got state from " + dp_Std_stringify(l_link_uid) + ".");
    }
    
    var l_state = dp_state_create_ext_hx();
    dp_state_read_hx(l_state, argument1);
    ds_list_add(l_slot[4], l_state);
}

function dp_net_game_handle_error_hx(argument0, argument1)
{
    if (!dp_net_netlink_get_is_server(argument0))
        return 0;
    
    var l_this1 = global.dp_lobby_on_error;
    var l_v1 = dp_net_error_get_text_hx(argument1);
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1(l_v1, argument0[5], argument0[6]);
    
    var l_pl = global.dp_player_list_hx;
    var l_k = 0;
    var l__g1 = ds_list_size(l_pl);
    
    while (l_k < l__g1)
    {
        var l_p = ds_list_find_value(l_pl, l_k);
        
        if (l_p != undefined && l_p[1] != global.dp_local_uid)
        {
            l_this1 = global.dp_player_on_departure;
            l_f = l_this1;
            
            if (l_f != undefined && l_f >= 0)
                l_this1(l_k);
            
            dp_player_destroy_hx(l_p);
            ds_list_set(l_pl, l_k, undefined);
            var l_this2 = global.dp_player_on_change;
            var l_f1 = l_this2;
            
            if (l_f1 != undefined && l_f1 >= 0)
                l_this2(l_k);
        }
        
        l_k++;
    }
}

function dp_net_game_handle_hx(argument0, argument1)
{
    var l_mid = buffer_read(argument1, buffer_u8);
    
    switch (l_mid)
    {
        case 42:
            dp_net_game_handle_state_hx(argument0, argument1);
            break;
        
        case 246:
            if (dp_net_netlink_get_is_server(argument0))
                dp_flow_close_inner_hx();
            
            break;
        
        case 229:
            dp_net_game_handle_error_hx(argument0, buffer_read(argument1, buffer_u8));
            break;
        
        default:
            dp_net_shared_handle_hx(argument0, l_mid, argument1);
    }
}

function dp_net_packet_get_name_hx(argument0)
{
    switch (argument0)
    {
        case 171:
            return "REL_DATA";
        
        case 172:
            return "REL_RESEND";
        
        case 174:
            return "REL_RESEND_EXT";
        
        case 175:
            return "REL_BATCH";
        
        case 180:
            return "HUB_INTRO";
        
        case 181:
            return "HUB_CONSIDER";
        
        case 183:
            return "HUB_MOTD";
        
        case 184:
            return "HUB_STAT";
        
        case 185:
            return "HUB_REFRESH";
        
        case 186:
            return "HUB_CLEAR";
        
        case 190:
            return "HUB_HOST_PUBLIC";
        
        case 191:
            return "HUB_HOST_PRIVATE";
        
        case 192:
            return "HUB_HOST_STOP";
        
        case 193:
            return "HUB_JOIN_PRIVATE";
        
        case 194:
            return "HUB_CONSIDER_CONFIRM";
        
        case 200:
            return "SLOT_REQUEST";
        
        case 201:
            return "SLOT_RELEASE";
        
        case 202:
            return "SLOT_UPDATE";
        
        case 203:
            return "SLOT_COUNT";
        
        case 204:
            return "SLOT_ALIAS";
        
        case 205:
            return "SLOT_SWAP";
        
        case 209:
            return "SLOT_INFO";
        
        case 210:
            return "UDP_CONNECT";
        
        case 211:
            return "UDP_HI";
        
        case 212:
            return "UDP_HI2";
        
        case 214:
            return "UDP_CONNECTING";
        
        case 215:
            return "UDP_PING";
        
        case 229:
            return "ERROR";
        
        case 231:
            return "STEAM_JOIN_LOBBY";
        
        case 240:
            return "AUTH";
        
        case 241:
            return "UID_GRANTED";
        
        case 242:
            return "RTT";
        
        case 243:
            return "LOBBY";
        
        case 244:
            return "LEAVING";
        
        case 245:
            return "DROP";
        
        case 246:
            return "FLOW_END";
        
        case 248:
            return "POV";
        
        case 250:
            return "START";
        
        case 251:
            return "START_NOW";
        
        case 252:
            return "DELAY_CHANGE";
        
        case 253:
            return "CHAT";
        
        case 254:
            return "BUFFER";
        
        case 247:
            return "REPLAY";
        
        case 187:
            return "HUB_ENTRY";
        
        case 173:
            return "REL_GOT";
        
        case 42:
            return "STATE";
        
        case 0:
            return "NONE";
        
        default:
            return "Packet#" + string(argument0);
    }
}

function dp_net_packet__rtt_hx(argument0, argument1)
{
    var l_except_uid = 0;
    
    if (argument1 != undefined)
        l_except_uid = argument1[1];
    
    buffer_seek(argument0, buffer_seek_start, 0);
    buffer_write(argument0, buffer_u8, 242);
    var l_mtt = 0;
    var l_ncFlags = 0;
    var l_p_list = global.dp_player_list_hx;
    var l_p_len = ds_list_size(l_p_list);
    var l_i = 0;
    
    while (l_i < l_p_len)
    {
        var l_p = ds_list_find_value(l_p_list, l_i);
        
        if (l_p == undefined)
        {
            l_i++;
            continue;
        }
        
        if (!is_array(l_p))
        {
            if (!global.dp_net_packet__rtt_warn_hx)
            {
                global.dp_net_packet__rtt_warn_hx = 1;
                
                if (global.dp_debug_warnings)
                    dp_debug_log_hx("Warning", "Player " + string(l_i) + " is not an array-container, but a " + typeof(l_p) + ": " + dp_Std_stringify(l_p));
            }
            
            l_i++;
            continue;
        }
        
        var l_p_uid = l_p[1];
        
        if (l_p_uid == l_except_uid || l_p[1] == global.dp_local_uid)
        {
            l_i++;
            continue;
        }
        
        var l_next = ds_map_find_value(global.dp_link_map_hx, l_p_uid);
        
        if (l_next == undefined)
        {
            l_i++;
            continue;
        }
        
        var l_rtt = l_next[7];
        
        if (l_rtt < 0)
            l_ncFlags |= (1 << l_i);
        else if (l_rtt > l_mtt)
            l_mtt = l_rtt;
        
        l_i++;
    }
    
    if (l_ncFlags != 0)
        l_mtt = -l_ncFlags;
    
    buffer_write(argument0, buffer_s32, l_mtt);
}

function dp_net_packet__slot_release_hx(argument0, argument1)
{
    buffer_seek(argument0, buffer_seek_start, 0);
    buffer_write(argument0, buffer_u8, 201);
    buffer_write(argument0, buffer_u8, argument1);
}

function dp_net_packet__slot_update_hx(argument0, argument1)
{
    var l_slot = ds_list_find_value(global.dp_player_list_hx, argument1);
    buffer_seek(argument0, buffer_seek_start, 0);
    buffer_write(argument0, buffer_u8, 202);
    buffer_write(argument0, buffer_u8, argument1);
    buffer_write(argument0, buffer_s32, l_slot[1]);
    buffer_write(argument0, buffer_string, l_slot[2]);
}

function dp_net_packet__slot_count_hx(argument0, argument1)
{
    buffer_seek(argument0, buffer_seek_start, 0);
    buffer_write(argument0, buffer_u8, 203);
    buffer_write(argument0, buffer_u8, argument1);
}

function dp_net_packet__slot_alias_hx(argument0, argument1, argument2)
{
    buffer_seek(argument0, buffer_seek_start, 0);
    buffer_write(argument0, buffer_u8, 204);
    buffer_write(argument0, buffer_u8, argument1);
    buffer_write(argument0, buffer_string, argument2);
}

function dp_net_packet__auth_hx(argument0, argument1 = (global.dp_local_uid != 0) ? global.dp_local_uid : -1)
{
    buffer_seek(argument0, buffer_seek_start, 0);
    buffer_write(argument0, buffer_u8, 240);
    buffer_write(argument0, buffer_string, global.dp_game_name);
    buffer_write(argument0, buffer_u32, global.dp_game_version);
    buffer_write(argument0, buffer_string, global.dp_net_password);
    buffer_write(argument0, buffer_s32, argument1);
    
    if (argument1 != -2)
        buffer_write(argument0, buffer_string, global.dp_player_local_alias);
    else
        buffer_write(argument0, buffer_string, "");
}

function dp_net_packet__delay_change_write_hx(argument0, argument1)
{
    buffer_seek(argument0, buffer_seek_start, 0);
    buffer_write(argument0, buffer_u8, 252);
    buffer_write(argument0, buffer_u8, argument1);
}

function dp_net_packet__delay_change_read_hx(argument0)
{
    var l_d = buffer_read(argument0, buffer_u8);
    global.dp_flow_delay_hx = l_d;
    
    if (global.dp_debug_state)
        dp_debug_log_hx("State", "Delay set to " + string(l_d) + " frames.");
}

function dp_net_packet_printer_proc_hx(argument0, argument1, argument2)
{
    var l_head = buffer_peek(argument0, argument1, buffer_u8);
    var l_r = dp_net_packet_get_name_hx(l_head);
    
    if (l_head == 175)
    {
        var l_p = argument1 + 1;
        var l_totSize = buffer_peek(argument0, l_p, buffer_u16);
        l_p += 2;
        var l_count = buffer_peek(argument0, l_p, buffer_u16);
        l_p += 2;
        var l_incGot = (l_count & 32768) != 0;
        
        if (l_incGot)
            l_count &= -32769;
        
        l_r += ("<" + string(l_count) + "p>");
        
        if (l_incGot)
        {
            l_r += ("(got:" + dp_Std_stringify(buffer_peek(argument0, l_p, buffer_u32)) + ")");
            l_p += 4;
        }
        
        l_r += "(";
        var l_i = 0;
        var l__g1 = l_count;
        
        while (l_i < l__g1)
        {
            if (l_i > 0)
                l_r += ", ";
            
            var l_pktId = buffer_peek(argument0, l_p, buffer_u32);
            l_p += 4;
            var l_pktSize = buffer_peek(argument0, l_p, buffer_u16);
            l_p += 2;
            l_r += ("#" + string(l_pktId) + ":" + dp_net_packet_get_name_hx(buffer_peek(argument0, l_p, buffer_u8)));
            l_r += dp_print_buffer(argument0, l_pktSize - 1, l_p + 1);
            l_p += l_pktSize;
            l_i++;
        }
        
        l_r += ")";
        return l_r;
    }
    else
    {
        return l_r + dp_print_buffer(argument0, argument2 - 1, argument1 + 1);
    }
}

function dp_net_queue_update_hx()
{
}

function dp_net_queue_handle_hx(argument0, argument1)
{
    var l_gameName = buffer_read(argument1, buffer_string);
    var l_gameVersion = buffer_read(argument1, buffer_u32);
    var l_password = buffer_read(argument1, buffer_string);
    var l_uid = buffer_read(argument1, buffer_s32);
    var l_alias = buffer_read(argument1, buffer_string);
    
    if (global.dp_debug_state && l_uid != -2)
        dp_debug_log_hx("State", "Auth from " + dp_net_netlink_print_hx(argument0));
    
    var l_error1 = -1;
    var l_pid = -1;
    
    if (global.dp_flow_is_active)
    {
        l_error1 = 235;
    }
    else if (l_gameName != global.dp_game_name)
    {
        l_error1 = 230;
    }
    else if (l_gameVersion != global.dp_game_version)
    {
        l_error1 = 231;
    }
    else if (l_password != global.dp_net_password)
    {
        l_error1 = 232;
    }
    else if (dp_get_is_server())
    {
        switch (l_uid)
        {
            case -1:
                var l_pl = global.dp_player_list_hx;
                var l_i = 0;
                var l__g1 = ds_list_size(l_pl);
                
                while (l_i < l__g1)
                {
                    if (ds_list_find_value(l_pl, l_i) == undefined)
                    {
                        l_pid = l_i;
                        break;
                    }
                    
                    l_i++;
                }
                
                if (global.dp_lobby_is_locked)
                    l_error1 = 237;
                else if (l_pid != -1)
                    dp_link_list_remove_hx(global.dp_net_queue_list_hx, argument0);
                else if (!global.dp_lobby_allow_viewers)
                    l_error1 = 234;
                
                break;
            
            case -2:
                var l_out = global.dp_out;
                buffer_seek(l_out, buffer_seek_start, 0);
                buffer_write(l_out, buffer_u8, 209);
                buffer_write(l_out, buffer_u8, dp_player_count_active());
                buffer_write(l_out, buffer_u8, dp_player_count_total());
                dp_net_netlink_send_hx(argument0, l_out);
                return 0;
            
            default:
                l_error1 = 255;
        }
    }
    else
    {
        l_error1 = 233;
        var l__g_list = global.dp_link_list_hx;
        var l__g_index = 0;
        
        while (l__g_index < ds_list_size(l__g_list))
        {
            var l_cl = ds_list_find_value(l__g_list, l__g_index++);
            
            if (l_cl[1] == l_uid && l_cl[4] == undefined)
            {
                array_set(argument0, 1, l_uid);
                
                if (global.dp_debug_state)
                    dp_debug_log_hx("State", "Identified " + dp_net_netlink_print_hx(argument0));
                
                dp_link_replace_hx(l_cl, argument0);
                dp_net_netlink_destroy_hx(l_cl);
                l_error1 = -1;
                break;
            }
        }
    }
    
    if (l_error1 != -1)
    {
        if (global.dp_debug_state)
            dp_debug_log_hx("State", "Can't auth, " + dp_net_netlink_print_hx(argument0) + ", error " + dp_net_error_get_name(l_error1));
        
        var l_out = global.dp_out;
        buffer_seek(l_out, buffer_seek_start, 0);
        buffer_write(l_out, buffer_u8, 229);
        buffer_write(l_out, buffer_u8, l_error1);
        dp_net_netlink_send_hx(argument0, l_out);
        return 0;
    }
    
    array_set(argument0, 2, l_alias);
    
    if (dp_get_is_server())
        dp_net_server_accept_hx(argument0, l_pid);
    else
        dp_net_client_accept_hx(argument0);
    
    return 1;
}

function dp_net_server_handle_hx(argument0, argument1)
{
    var l_mid = buffer_read(argument1, buffer_u8);
    var l_out = global.dp_out;
    
    switch (l_mid)
    {
        case 200:
            var l_slot = buffer_read(argument1, buffer_u8);
            
            if (ds_list_find_value(global.dp_player_list_hx, l_slot) == undefined)
            {
                var l_player = dp_player_new_hx();
                array_set(l_player, 1, argument0[1]);
                
                if (global.dp_debug_state)
                    dp_debug_log_hx("State", "Slot " + string(l_slot + 1) + " is now occupied by " + dp_Std_stringify(argument0[1]));
                
                ds_list_set(global.dp_player_list_hx, l_slot, l_player);
                var l_this1 = global.dp_player_on_change;
                var l_f = l_this1;
                
                if (l_f != undefined && l_f >= 0)
                    l_this1(l_slot);
                
                dp_net_packet__slot_update_hx(l_out, l_slot);
                dp_link_send_hx(l_out);
            }
            
            break;
        
        case 201:
            var l_slot = buffer_read(argument1, buffer_u8);
            var l_player = ds_list_find_value(global.dp_player_list_hx, l_slot);
            
            if (l_player != undefined && l_player[1] == argument0[1])
            {
                dp_player_destroy_hx(l_player);
                
                if (global.dp_debug_state)
                    dp_debug_log_hx("State", "Slot " + string(l_slot + 1) + " was released.");
                
                ds_list_set(global.dp_player_list_hx, l_slot, undefined);
                var l_this1 = global.dp_player_on_change;
                var l_f = l_this1;
                
                if (l_f != undefined && l_f >= 0)
                    l_this1(l_slot);
                
                dp_net_packet__slot_release_hx(l_out, l_slot);
                dp_link_send_hx(l_out);
            }
            
            break;
        
        case 205:
            var l_slot = buffer_read(argument1, buffer_u8);
            var l_i = buffer_read(argument1, buffer_u8);
            
            if (l_slot >= 0 && l_slot < ds_list_size(global.dp_player_list_hx) && l_i >= 0 && l_i < ds_list_size(global.dp_player_list_hx) && (dp_player_is_empty(l_slot) || dp_player_get_uid(l_slot) == argument0[1]) && (dp_player_is_empty(l_i) || dp_player_get_uid(l_i) == argument0[1]))
            {
                var l_this1 = global.dp_player_list_hx;
                var l_p = ds_list_find_value(l_this1, l_slot);
                ds_list_set(l_this1, l_slot, ds_list_find_value(l_this1, l_i));
                ds_list_set(l_this1, l_i, l_p);
                l_this1 = global.dp_player_on_swap;
                var l_f = l_this1;
                
                if (l_f != undefined && l_f >= 0)
                    l_this1(l_slot, l_i);
                
                buffer_seek(l_out, buffer_seek_start, 0);
                buffer_write(l_out, buffer_u8, 205);
                buffer_write(l_out, buffer_u8, l_slot);
                buffer_write(l_out, buffer_u8, l_i);
                dp_link_send_hx(l_out);
            }
            
            break;
        
        case 214:
            var l_next = ds_map_find_value(global.dp_link_map_hx, buffer_read(argument1, buffer_s32));
            
            if (l_next != undefined)
            {
                buffer_seek(l_out, buffer_seek_start, 0);
                buffer_write(l_out, buffer_u8, 215);
                buffer_write(l_out, buffer_s32, argument0[1]);
                dp_net_netlink_send_hx(l_next, l_out);
            }
            
            break;
        
        case 250:
            if (global.dp_net_server_start_offset_hx == 0)
                return 0;
            
            var l_diff = current_time - global.dp_time_offset - global.dp_net_server_start_offset_hx;
            
            if (global.dp_debug_state)
                dp_debug_log_hx("State", "Got start-reply from " + dp_net_netlink_print_hx(argument0) + (" in " + dp_Std_stringify(l_diff) + " ms."));
            
            array_set(argument0, 13, l_diff);
            var l_ready = 1;
            var l__g_list = global.dp_link_list_hx;
            var l__g_index = 0;
            
            while (l__g_index < ds_list_size(l__g_list))
            {
                var l_link2 = ds_list_find_value(l__g_list, l__g_index++);
                
                if (l_link2[13] < 0)
                    l_ready = 0;
            }
            
            dp_core_randomize();
            
            if (l_ready)
            {
                if (global.dp_debug_state)
                    dp_debug_log_hx("State", "Starting in " + dp_Std_stringify(l_diff) + " ms.");
                
                var l_seed = global.dp_flow_initial_seed;
                var l_pfx = global.dp_flow_dump_prefix;
                var l__g1_list = global.dp_link_list_hx;
                var l__g1_index = 0;
                
                while (l__g1_index < ds_list_size(l__g1_list))
                {
                    var l_item = ds_list_find_value(l__g1_list, l__g1_index++);
                    buffer_seek(l_out, buffer_seek_start, 0);
                    buffer_write(l_out, buffer_u8, 251);
                    buffer_write(l_out, buffer_s32, (l_diff - l_item[13]) | 0);
                    buffer_write(l_out, buffer_s32, l_seed);
                    buffer_write(l_out, buffer_string, l_pfx);
                    dp_net_netlink_send_hx(l_item, l_out);
                }
                
                var l_t = current_time - global.dp_time_offset;
                
                while ((current_time - global.dp_time_offset - l_t) > l_diff)
                {
                }
                
                dp_flow_start_hx();
            }
            
            break;
        
        default:
            dp_net_shared_handle_hx(argument0, l_mid, argument1);
    }
}

function dp_net_server_accept_hx(argument0, argument1)
{
    var l_uid = dp_uid_create();
    array_set(argument0, 1, l_uid);
    var l_out = global.dp_out;
    
    if (global.dp_debug_state)
        dp_debug_log_hx("State", "Issuing slot #" + string(argument1) + " to " + dp_net_netlink_print_hx(argument0));
    
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 241);
    buffer_write(l_out, buffer_s32, global.dp_local_uid);
    buffer_write(l_out, buffer_s32, l_uid);
    buffer_write(l_out, buffer_string, global.dp_player_local_alias);
    dp_net_netlink_send_hx(argument0, l_out);
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 210);
    buffer_write(l_out, buffer_s32, l_uid);
    buffer_write(l_out, buffer_string, argument0[5]);
    buffer_write(l_out, buffer_u32, argument0[6]);
    buffer_write(l_out, buffer_string, argument0[2]);
    buffer_write(l_out, buffer_bool, 1);
    dp_link_send_hx(l_out);
    var l__g_list = global.dp_link_list_hx;
    var l__g_index = 0;
    
    while (l__g_index < ds_list_size(l__g_list))
    {
        var l_item = ds_list_find_value(l__g_list, l__g_index++);
        buffer_seek(l_out, buffer_seek_start, 0);
        buffer_write(l_out, buffer_u8, 210);
        buffer_write(l_out, buffer_s32, l_item[1]);
        buffer_write(l_out, buffer_string, l_item[5]);
        buffer_write(l_out, buffer_u32, l_item[6]);
        buffer_write(l_out, buffer_string, l_item[2]);
        buffer_write(l_out, buffer_bool, 0);
        dp_net_netlink_send_hx(argument0, l_out);
    }
    
    if (argument1 >= 0)
    {
        var l_p = dp_player_new_hx();
        array_set(l_p, 1, l_uid);
        ds_list_set(global.dp_player_list_hx, argument1, l_p);
        l_this1 = global.dp_player_on_change;
        l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1(argument1);
        
        dp_net_packet__slot_update_hx(l_out, argument1);
        dp_link_send_hx(l_out);
    }
    
    dp_net_packet__slot_count_hx(l_out, ds_list_size(global.dp_player_list_hx));
    dp_net_netlink_send_hx(argument0, l_out);
    var l_pl = global.dp_player_list_hx;
    var l_i = 0;
    var l__g1 = ds_list_size(l_pl);
    
    while (l_i < l__g1)
    {
        if (ds_list_find_value(l_pl, l_i) == undefined)
        {
        }
        else
        {
            dp_net_packet__slot_update_hx(l_out, l_i);
            dp_net_netlink_send_hx(argument0, l_out);
        }
        
        l_i++;
    }
    
    ds_list_add(global.dp_link_list_hx, argument0);
    ds_map_set(global.dp_link_map_hx, array_get(argument0, 1), argument0);
    dp_net_packet__delay_change_write_hx(l_out, global.dp_flow_delay_hx);
    dp_net_netlink_send_hx(argument0, l_out);
    
    if (global.dp_replay_is_playing)
    {
        buffer_seek(l_out, buffer_seek_start, 0);
        buffer_write(l_out, buffer_u8, 247);
        buffer_write(l_out, buffer_u32, global.dp_replay_frames);
        buffer_write(l_out, buffer_s32, global.dp_replay_view_uid);
        buffer_write(l_out, buffer_u8, global.dp_replay_file_delay_hx);
        dp_net_netlink_send_hx(argument0, l_out);
    }
    
    dp_net_packet__rtt_hx(l_out, argument0);
    dp_net_netlink_send_hx(argument0, l_out);
    buffer_seek(l_out, buffer_seek_start, 0);
    buffer_write(l_out, buffer_u8, 243);
    dp_net_netlink_send_hx(argument0, l_out);
    var l_this1 = global.dp_lobby_on_arrival;
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1(l_uid);
}

function dp_net_shared_handle_rtt_hx(argument0, argument1)
{
    var l_now = current_time - global.dp_time_offset;
    var l_rtt = (l_now - argument0[12]) | 0;
    var l_mtt = buffer_read(argument1, buffer_s32);
    array_set(argument0, 7, l_rtt);
    array_set(argument0, 8, l_mtt);
    array_set(argument0, 12, l_now);
    var l_attList = argument0[10];
    var l_attNum = argument0[11];
    var l_attSum = 0;
    var l_i = l_attNum;
    
    while (--l_i >= 0)
    {
        var l_v = l_attList[l_i];
        l_attSum += l_v;
        array_set(l_attList, l_i + 1, l_v);
    }
    
    array_set(l_attList, 0, l_rtt);
    l_attSum += l_rtt;
    l_attNum++;
    array_set(argument0, 9, round(l_attSum / l_attNum));
    
    if (l_attNum <= global.dp_net_netlink_att_max_hx)
        array_set(argument0, 11, l_attNum);
    
    var l_out = global.dp_out;
    dp_net_packet__rtt_hx(l_out, argument0);
    dp_net_netlink_send_hx(argument0, l_out);
    var l_this1 = global.dp_link_on_ping;
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1(argument0[1], l_rtt);
}

function dp_net_shared_handle_buffer_hx(argument0, argument1)
{
    var l_slotId = buffer_read(argument1, buffer_u8);
    
    if (l_slotId == 255)
        l_slotId = -1;
    
    var l_size = buffer_read(argument1, buffer_u32);
    var l_slot = ds_list_find_value(global.dp_player_list_hx, l_slotId);
    
    if (l_slot != undefined && l_slot[1] != argument0[1])
        return 0;
    
    var l_data = buffer_create(l_size, buffer_grow, 1);
    buffer_copy(argument1, buffer_tell(argument1), l_size, l_data, 0);
    var l_this1 = global.dp_lobby_on_buffer;
    var l_f = l_this1;
    
    if (l_f != undefined && l_f >= 0)
        l_this1(l_data, l_size, l_slotId, argument0[1]);
    
    buffer_delete(l_data);
}

function dp_net_shared_handle_leaving_hx(argument0, argument1)
{
    var l_uid = argument0[1];
    var l_frame = buffer_read(argument1, buffer_u32);
    
    if (global.dp_debug_state)
        dp_debug_log_hx("State", dp_net_netlink_print_hx(argument0) + " is leaving @ " + string(l_frame) + ".");
    
    var l_plist = global.dp_player_list_hx;
    var l_psize = ds_list_size(l_plist);
    var l_flow = global.dp_flow_is_active;
    
    if (global.dp_lobby_is_active)
    {
        var l_this1 = global.dp_lobby_on_departure;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1(l_uid);
    }
    
    var l_k = 0;
    var l__g1 = l_psize;
    
    while (l_k < l__g1)
    {
        var l_player = ds_list_find_value(l_plist, l_k);
        
        if (l_player != undefined && l_player[1] == l_uid)
        {
            if (l_flow)
            {
                var l_state = dp_state_create_ext_hx();
                ds_list_add(l_state[8], global.dp_input_state_event_leaving);
                ds_list_add(l_player[4], l_state);
            }
            else
            {
                dp_player_destroy_hx(l_player);
                ds_list_set(l_plist, l_k, undefined);
                var l_this1 = global.dp_player_on_change;
                var l_f = l_this1;
                
                if (l_f != undefined && l_f >= 0)
                    l_this1(l_k);
            }
        }
        
        l_k++;
    }
    
    dp_net_netlink_destroy_hx(argument0, 0);
    
    if (argument0 != undefined)
    {
        dp_link_list_remove_hx(global.dp_link_list_hx, argument0);
        ds_map_delete(global.dp_link_map_hx, argument0[1]);
    }
}

function dp_net_shared_handle_chat_hx(argument0, argument1)
{
    var l_slotId = buffer_read(argument1, buffer_u8);
    
    if (l_slotId == 255)
        l_slotId = -1;
    
    var l_text = buffer_read(argument1, buffer_string);
    var l_slot = ds_list_find_value(global.dp_player_list_hx, l_slotId);
    
    if (l_slot != undefined && l_slot[1] != argument0[1])
        return 0;
    
    if (global.dp_flow_is_active)
    {
        var l_this1 = global.dp_flow_on_message;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1(l_text, l_slotId, argument0[1]);
    }
    else
    {
        var l_this1 = global.dp_lobby_on_message;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1(l_text, l_slotId, argument0[1]);
    }
}

function dp_net_shared_handle_hx(argument0, argument1, argument2)
{
    switch (argument1)
    {
        case 242:
            dp_net_shared_handle_rtt_hx(argument0, argument2);
            break;
        
        case 253:
            dp_net_shared_handle_chat_hx(argument0, argument2);
            break;
        
        case 254:
            dp_net_shared_handle_buffer_hx(argument0, argument2);
            break;
        
        case 204:
            var l_slot = buffer_read(argument2, buffer_u8);
            var l_alias = buffer_read(argument2, buffer_string);
            var l_p = ds_list_find_value(global.dp_player_list_hx, l_slot);
            
            if (argument0[2] == undefined)
                array_set(argument0, 2, l_alias);
            
            if (l_p != undefined && l_p[1] == argument0[1])
                array_set(l_p, 2, l_alias);
            
            break;
        
        case 248:
            array_set(argument0, 3, buffer_read(argument2, buffer_u32));
            break;
        
        case 244:
            dp_net_shared_handle_leaving_hx(argument0, argument2);
            break;
    }
}

function dp_net_adapters_adp_faucet_net_create()
{
    var this = [global.mt_dp_net_adapters_adp_faucet_net];
    array_copy(this, 1, global.mq_dp_net_adapters_adp_faucet_net, 1, 1);
    array_set(this, 1, dp_net_adapter_packet);
    dp_net_adapter_new(this);
    return this;
}

function dp_net_adapters_adp_faucet_net_update(argument0)
{
    var l_buf = global.dp_net_adapters_adp_faucet_net_buffer;
    var l_udp = undefined;
    l_udp = global.dp_net_server_socket_hx;
    
    if (l_udp != undefined)
    {
        while (fct_udp_receive(l_udp))
        {
            var l_len = fct_socket_receivebuffer_size(l_udp);
            buffer_seek(l_buf, buffer_seek_start, 0);
            
            repeat (l_len)
                buffer_write(l_buf, buffer_u8, fct_read_ubyte(l_udp));
            
            buffer_seek(l_buf, buffer_seek_start, 0);
            dp_net_handle_hx(1, fct_socket_remote_ip(l_udp), fct_socket_remote_port(l_udp), l_udp, l_buf, l_len);
        }
    }
    
    l_udp = undefined;
    
    if (global.dp_net_server_link_hx != undefined)
        l_udp = global.dp_net_server_link_hx[4];
    
    if (l_udp != undefined)
    {
        while (fct_udp_receive(l_udp))
        {
            var l_len = fct_socket_receivebuffer_size(l_udp);
            buffer_seek(l_buf, buffer_seek_start, 0);
            
            repeat (l_len)
                buffer_write(l_buf, buffer_u8, fct_read_ubyte(l_udp));
            
            buffer_seek(l_buf, buffer_seek_start, 0);
            dp_net_handle_hx(1, fct_socket_remote_ip(l_udp), fct_socket_remote_port(l_udp), l_udp, l_buf, l_len);
        }
    }
    
    l_udp = undefined;
    
    if (global.dp_hub_link_hx != undefined)
        l_udp = global.dp_hub_link_hx[4];
    
    if (l_udp != undefined)
    {
        while (fct_udp_receive(l_udp))
        {
            var l_len = fct_socket_receivebuffer_size(l_udp);
            buffer_seek(l_buf, buffer_seek_start, 0);
            
            repeat (l_len)
                buffer_write(l_buf, buffer_u8, fct_read_ubyte(l_udp));
            
            buffer_seek(l_buf, buffer_seek_start, 0);
            dp_net_handle_hx(1, fct_socket_remote_ip(l_udp), fct_socket_remote_port(l_udp), l_udp, l_buf, l_len);
        }
    }
}

function dp_net_adapters_adp_faucet_net_host(argument0, argument1, argument2 = 32)
{
    var l_udp = fct_udp_bind(argument1);
    fct_socket_sendbuffer_limit(l_udp, 0);
    
    if (l_udp < 0)
        return undefined;
    
    return l_udp;
}

function dp_net_adapters_adp_faucet_net_join(argument0, argument1, argument2)
{
    var l_udp = fct_udp_bind(0);
    fct_socket_sendbuffer_limit(l_udp, 0);
    return l_udp;
}

function dp_net_adapters_adp_faucet_net_send(argument0, argument1, argument2, argument3, argument4, argument5)
{
    var l_bp = buffer_tell(argument4);
    buffer_seek(argument4, buffer_seek_start, 0);
    var l_udp = argument1;
    
    repeat (argument5)
        fct_write_ubyte(l_udp, buffer_read(argument4, buffer_u8));
    
    buffer_seek(argument4, buffer_seek_start, l_bp);
    return !fct_udp_send(l_udp, argument2, argument3);
}

function dp_net_adapters_adp_faucet_net_destroy_server(argument0, argument1)
{
    fct_socket_destroy(argument1);
}

function dp_net_adapters_adp_faucet_net_destroy_socket(argument0, argument1)
{
    fct_socket_destroy(argument1);
}

function dp_net_adapters_adp_steam_create()
{
    var this = [global.mt_dp_net_adapters_adp_steam];
    array_copy(this, 1, global.mq_dp_net_adapters_adp_steam, 1, 3);
    array_set(this, 1, dp_net_adapter_packet);
    array_set(this, 2, buffer_create(128, buffer_grow, 1));
    dp_net_adapter_new(this);
    array_set(this, 3, this);
    return this;
}

function dp_net_adapters_adp_steam_update(argument0)
{
    if (!global.dp_steam_is_active)
        return 0;
    
    if (global.dp_steam_is_active)
        dp_steam_update_hx();
    
    if (dp_get_is_server() && global.dp_lobby_is_active && !global.dp_steam_lobby_creating_lobby)
    {
        var l_total = dp_player_count_total();
        var l_active = dp_player_count_active();
        var l_updating = 0;
        
        if (global.dp_net_adapters_adp_steam_lobby_slots != l_total || global.dp_net_adapters_adp_steam_lobby_players != l_active)
        {
            if (!l_updating)
            {
                l_updating = 1;
                dp_steam_lobby_update_start();
            }
            
            dp_steam_lobby_set_data("avail", "" + string(l_total - l_active));
        }
        
        if (global.dp_net_adapters_adp_steam_lobby_slots != l_total)
        {
            if (!l_updating)
            {
                l_updating = 1;
                dp_steam_lobby_update_start();
            }
            
            dp_steam_lobby_set_data("slots", "" + string(l_total));
            global.dp_net_adapters_adp_steam_lobby_slots = l_total;
        }
        
        if (global.dp_net_adapters_adp_steam_lobby_players != l_active)
        {
            if (!l_updating)
            {
                l_updating = 1;
                dp_steam_lobby_update_start();
            }
            
            dp_steam_lobby_set_data("players", "" + string(l_active));
            global.dp_net_adapters_adp_steam_lobby_players = l_active;
        }
        
        var l_viewers = global.dp_lobby_allow_viewers ? dp_link_count_viewers() : -1;
        
        if (global.dp_net_adapters_adp_steam_lobby_viewers != l_viewers)
        {
            if (!l_updating)
            {
                l_updating = 1;
                dp_steam_lobby_update_start();
            }
            
            dp_steam_lobby_set_data("viewers", "" + string(l_viewers));
            global.dp_net_adapters_adp_steam_lobby_viewers = l_viewers;
        }
        
        var l_open = (l_active < l_total || l_viewers >= 0) ? 1 : 0;
        
        if (global.dp_net_adapters_adp_steam_lobby_open != l_open)
        {
            if (!l_updating)
            {
                l_updating = 1;
                dp_steam_lobby_update_start();
            }
            
            dp_steam_lobby_set_data("open", "" + string(l_open));
            global.dp_net_adapters_adp_steam_lobby_open = l_open;
        }
        
        if (l_updating)
            dp_steam_lobby_update_submit();
    }
    
    if (global.dp_steam_is_active)
    {
        while (dp_steam_net_receive_packet_hx())
        {
            dp_steam_net_get_packet_data_hx(argument0[2]);
            var l_sender;
            
            if (global.dp_has_steam)
                l_sender = dp_steam_steam_networking_impl_get_packet_sender_hx();
            else
                l_sender = 0;
            
            script_execute(argument0[1], argument0, dp_type_url_from_int((l_sender & 4294967295) div 1), l_sender >> 32, argument0[3], argument0[2], dp_steam_net_get_packet_size_hx());
        }
    }
}

function dp_net_adapters_adp_steam_send(argument0, argument1, argument2, argument3, argument4, argument5)
{
    if (global.dp_steam_is_active)
        return dp_steam_net_send_packet_hx((argument3 << 32) | dp_type_url_to_int(argument2) | 0, argument4, argument5);
    else
        return 0;
}

function dp_net_adapters_adp_steam_host(argument0, argument1, argument2 = 32)
{
    if (global.dp_steam_is_active)
    {
        dp_steam_lobby_create_hx(1, argument2);
        return argument0[3];
    }
    else
    {
        return undefined;
    }
}

function dp_net_adapters_adp_steam_join(argument0, argument1, argument2)
{
    if (global.dp_steam_is_active)
        return argument0[3];
    else
        return undefined;
}

function dp_net_adapters_adp_steam_destroy_server(argument0, argument1)
{
}

function dp_net_adapters_adp_steam_destroy_socket(argument0, argument1)
{
}

function dp_steam_set_active(argument0)
{
    var l_v = argument0;
    
    if (global.dp_steam_is_active == l_v)
        return 1;
    
    if (global.dp_steam_is_available)
    {
        global.dp_steam_is_active = l_v;
        global.dp_has_steam = l_v;
        
        if (l_v && !global.dp_steam_is_initialized)
            dp_steam_init_hx();
        
        return 1;
    }
    else
    {
        return 0;
    }
}

function dp_steam_get_local_user_hx()
{
    return global.dp_steam_local_user;
}

function dp_steam_init_hx()
{
    global.dp_steam_is_initialized = 1;
    global.dp_steam_local_user = 0;
    var l_rdy = dp_steam_steam_impl_init_hx();
    global.dp_steam_poll_time_hx = current_time - global.dp_time_offset;
    global.dp_steam_is_active = l_rdy;
    global.dp_steam_is_available = l_rdy;
    
    if (l_rdy)
        global.dp_player_local_alias = dp_steam_steam_impl_get_local_alias_hx();
    else
        global.dp_has_steam = 0;
}

function dp_steam_update_hx()
{
    if (global.dp_steam_is_active)
    {
        var l_now = current_time - global.dp_time_offset;
        
        if (ds_list_size(global.dp_link_list_hx) > 0 || l_now > (global.dp_steam_poll_time_hx + global.dp_steam_poll_rate))
        {
            global.dp_steam_poll_time_hx = l_now;
            dp_steam_steam_impl_update_hx();
        }
    }
}

function dp_steam_cleanup_hx()
{
    if (global.dp_steam_is_active)
        dp_steam_steam_impl_cleanup_hx();
}

function dp_steam_set_played_with_hx(argument0)
{
    dp_steam_steam_impl_set_played_with_hx(argument0);
}

function dp_steam_reset_hx()
{
    global.dp_steam_lobby_merging_lobby = 0;
    global.dp_steam_lobby_joining_lobby = 0;
    global.dp_steam_lobby_creating_lobby = 0;
}

function dp_steam_steam_impl_init_hx()
{
    if (steam_net_check_version() && steam_gml_api_flags() != 0)
    {
        global.dp_steam_local_user = (steam_get_user_steam_id_high() << 32) | steam_get_user_steam_id_low() | 0;
        return 1;
    }
    
    return 0;
}

function dp_steam_steam_impl_update_hx()
{
    steam_net_update();
}

function dp_steam_steam_impl_get_local_alias_hx()
{
    return steam_get_persona_name();
}

function dp_steam_steam_impl_set_played_with_hx(argument0)
{
    steam_user_set_played_with(argument0 >> 32, (argument0 & 4294967295) div 1);
}

function dp_steam_steam_impl_async_event_hx(argument0)
{
    switch (ds_map_find_value(argument0, "event_type"))
    {
        case "lobby_list":
            if (global.dp_debug_steam)
                dp_debug_log_hx("State", "Loaded " + string(dp_steam_lobbylist_get_count()) + " lobbies.");
            
            break;
        
        case "lobby_created":
            dp_steam_lobby_lobby_created_hx(ds_map_find_value(argument0, "success"));
            break;
        
        case "lobby_joined":
            dp_steam_lobby_lobby_joined_hx(ds_map_find_value(argument0, "success"));
            break;
        
        case "lobby_join_requested":
            dp_steam_lobby_lobby_join_requested_hx((ds_map_find_value(argument0, "lobby_id_high") << 32) | ds_map_find_value(argument0, "lobby_id_low") | 0);
            break;
        
        case "user_persona_name":
            break;
    }
}

function dp_steam_steam_impl_cleanup_hx()
{
}

function dp_steam_lobby_leave()
{
    if (global.dp_has_steam)
    {
        global.dp_steam_lobby_creating_lobby = 0;
        return dp_steam_steam_lobby_impl_leave_hx();
    }
    else
    {
        return 0;
    }
}

function dp_steam_lobby_join(argument0)
{
    if (global.dp_has_steam)
    {
        if (global.dp_debug_steam)
            dp_debug_log_hx("Steam", "Joining lobby " + (string(argument0 >> 32) + ":" + string((argument0 & 4294967295) div 1)) + "...");
        
        dp_steam_lobby_leave();
        global.dp_steam_lobby_joining_lobby = 1;
        global.dp_steam_lobby_creating_lobby = 0;
        global.dp_steam_lobby_merging_lobby = 0;
        dp_steam_steam_lobby_impl_join_hx(argument0);
    }
}

function dp_steam_lobby_lobby_joined_hx(argument0)
{
    if (global.dp_debug_steam)
        dp_debug_log_hx("Steam", argument0 ? "Joined a lobby." : "Failed to join a lobby.");
    
    global.dp_steam_lobby_joining_lobby = 0;
    global.dp_steam_lobby_creating_lobby = 0;
    global.dp_steam_lobby_merging_lobby = 0;
    
    if (!argument0)
        return 0;
    
    var l_owner = dp_steam_lobby_get_owner();
    var l_slots = dp_steam_lobby_get_data_int("slots", -1);
    
    if (global.dp_hub_is_searching && l_slots < 0 && steam_lobby_get_member_count() > l_slots && dp_steam_lobby_get_data_int("viewers", -1) < 0)
    {
        if (global.dp_debug_steam)
            dp_debug_log_hx("State", "This lobby has enough people - leaving");
        
        if (global.dp_hub_is_searching)
            ds_map_set(global.dp_hub_search_exclude_by_id_hx, global.dp_hub_search_endpoint_id_hx, 1);
        
        steam_lobby_leave();
        return 0;
    }
    
    if ((l_owner >> 32) == 0 && ((l_owner & 4294967295) div 1) == 0)
    {
        if (global.dp_debug_steam)
            dp_debug_log_hx("State", "Joined a lobby with no owner - leaving");
        
        if (global.dp_hub_is_searching)
            ds_map_set(global.dp_hub_search_exclude_by_id_hx, global.dp_hub_search_endpoint_id_hx, 1);
        
        steam_lobby_leave();
        return 0;
    }
    
    dp_net_join_hx(dp_type_url_from_int((l_owner & 4294967295) div 1), l_owner >> 32);
}

function dp_steam_lobby_create_hx(argument0, argument1, argument2 = global.dp_player_local_alias + "'s game")
{
    global.dp_steam_lobby_creating_lobby = 1;
    global.dp_steam_lobby_joining_lobby = 0;
    global.dp_steam_lobby_merging_lobby = 0;
    global.dp_steam_lobby_lobby_title_hx = argument2;
    global.dp_steam_lobby_lobby_type = argument0;
    dp_steam_steam_lobby_impl_create_hx(argument0, argument1);
}

function dp_steam_lobby_lobby_created_hx(argument0)
{
    if (global.dp_debug_steam)
        dp_debug_log_hx("Steam", argument0 ? "Created a lobby." : "Failed to create a lobby.");
    
    global.dp_steam_lobby_creating_lobby = 0;
    global.dp_steam_lobby_joining_lobby = 0;
    global.dp_steam_lobby_merging_lobby = 0;
    
    if (argument0)
    {
        dp_steam_lobby_update_start();
        dp_steam_lobby_set_type(global.dp_steam_lobby_lobby_type);
        dp_steam_lobby_set_data("game", global.dp_game_name);
        dp_steam_lobby_set_data("version", dp_Std_stringify(global.dp_game_version));
        dp_steam_lobby_set_data("title", global.dp_steam_lobby_lobby_title_hx);
        var l_owner = dp_steam_get_local_user_hx();
        dp_steam_lobby_set_data("owner", string(l_owner >> 32) + ":" + string((l_owner & 4294967295) div 1));
        var l_st = dp_player_count_total();
        var l_sa = dp_player_count_active();
        var l_open = (l_sa < l_st || global.dp_lobby_allow_viewers) ? 1 : 0;
        var l_sv = global.dp_lobby_allow_viewers ? dp_link_count_viewers() : -1;
        dp_steam_lobby_set_data("slots", "" + string(l_st));
        dp_steam_lobby_set_data("players", "" + string(l_sa));
        dp_steam_lobby_set_data("avail", "" + string(l_st - l_sa));
        dp_steam_lobby_set_data("viewers", "" + string(l_sv));
        dp_steam_lobby_set_data("open", "" + string(l_open));
        dp_steam_lobby_update_submit();
    }
    else
    {
        dp_lobby_close();
        var l_this1 = global.dp_lobby_on_error;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1("host_failure", "", global.dp_net_server_port_hx);
    }
}

function dp_steam_lobby_lobby_join_requested_hx(argument0)
{
    if (global.dp_debug_steam)
        dp_debug_log_hx("State", "Requested to join " + ((argument0 == undefined) ? "null" : (string(argument0 >> 32) + ":" + string((argument0 & 4294967295) div 1))));
    
    var l_f = global.dp_lobby_on_join_requested;
    
    if (!(l_f != undefined && l_f >= 0) || global.dp_lobby_on_join_requested(argument0))
    {
        dp_reset();
        dp_steam_lobby_join(argument0);
    }
}

function dp_steam_lobby_update_start()
{
}

function dp_steam_lobby_update_submit()
{
}

function dp_steam_lobby_get_member_count()
{
    if (global.dp_has_steam)
        return steam_lobby_get_member_count();
    else
        return dp_player_count_active();
}

function dp_steam_lobby_get_data_int(argument0, argument1)
{
    if (global.dp_has_steam)
    {
        var l_s = steam_lobby_get_data(argument0);
        
        if (l_s == undefined || l_s == "")
            return argument1;
        
        var l_r = dp_Std_parseInt(l_s);
        
        if (l_r != undefined)
            return l_r;
        else
            return argument1;
    }
    else
    {
        return argument1;
    }
}

function dp_steam_lobby_set_data(argument0, argument1)
{
    return global.dp_has_steam && dp_steam_steam_lobby_impl_set_data_hx(argument0, argument1);
}

function dp_steam_lobby_set_type(argument0)
{
    return global.dp_has_steam && steam_lobby_set_type(argument0);
}

function dp_steam_lobby_is_owner()
{
    if (global.dp_has_steam)
        return global.dp_steam_lobby_creating_lobby || dp_steam_steam_lobby_impl_is_owner_hx();
    else
        return 1;
}

function dp_steam_lobby_get_owner()
{
    if (global.dp_has_steam)
        return dp_steam_steam_lobby_impl_get_owner_hx();
    else
        return 0;
}

function dp_steam_lobby_show_invite_overlay()
{
    return global.dp_has_steam && dp_steam_steam_lobby_impl_show_invite_overlay_hx();
}

function dp_steam_steam_lobby_impl_leave_hx()
{
    return steam_lobby_leave();
}

function dp_steam_steam_lobby_impl_join_hx(argument0)
{
    steam_lobby_join_id(argument0);
}

function dp_steam_steam_lobby_impl_create_hx(argument0, argument1)
{
    steam_lobby_create(argument0, argument1);
}

function dp_steam_steam_lobby_impl_set_data_hx(argument0, argument1)
{
    return steam_lobby_set_data(argument0, argument1);
}

function dp_steam_steam_lobby_impl_is_owner_hx()
{
    var l_f = global.dp_current_frame;
    
    if (global.dp_steam_steam_lobby_impl_is_owner_frame_hx == l_f)
        return global.dp_steam_steam_lobby_impl_is_owner_result_hx;
    
    var l_r = steam_lobby_is_owner();
    global.dp_steam_steam_lobby_impl_is_owner_result_hx = l_r;
    global.dp_steam_steam_lobby_impl_is_owner_frame_hx = l_f;
    return l_r;
}

function dp_steam_steam_lobby_impl_get_owner_hx()
{
    return steam_lobby_get_owner_id();
}

function dp_steam_steam_lobby_impl_show_invite_overlay_hx()
{
    return steam_lobby_activate_invite_overlay();
}

function dp_steam_lobbylist_request(argument0)
{
    if (global.dp_has_steam)
    {
        dp_steam_lobbylist_add_string_filter("game", global.dp_game_name, 0);
        dp_steam_lobbylist_add_numerical_filter("version", global.dp_game_version, 0);
        
        if (global.dp_hub_is_searching)
        {
            var l_countActive = dp_player_count_active();
            
            if (l_countActive <= 1)
            {
                dp_steam_lobbylist_add_numerical_filter("avail", 1, 2);
            }
            else
            {
                dp_steam_lobbylist_add_numerical_filter("avail", l_countActive, 2);
                dp_steam_lobbylist_add_numerical_filter("players", l_countActive, -2);
            }
        }
        else
        {
            dp_steam_lobbylist_add_numerical_filter("open", 1, 0);
        }
        
        var l_lu = dp_steam_get_local_user_hx();
        dp_steam_lobbylist_add_string_filter("owner", string(l_lu >> 32) + ":" + string((l_lu & 4294967295) div 1), 3);
        var l__g_list = global.dp_link_list_hx;
        var l__g_index = 0;
        
        while (l__g_index < ds_list_size(l__g_list))
        {
            var l_linkSID = dp_net_netlink_to_steam_id_hx(ds_list_find_value(l__g_list, l__g_index++));
            dp_steam_lobbylist_add_string_filter("owner", string(l_linkSID >> 32) + ":" + string((l_linkSID & 4294967295) div 1), 3);
        }
        
        var l_this1 = global.dp_hub_on_filter;
        var l_f = l_this1;
        
        if (l_f != undefined && l_f >= 0)
            l_this1();
        
        steam_lobby_list_request();
    }
}

function dp_steam_lobbylist_is_loading()
{
    return global.dp_has_steam && steam_lobby_list_is_loading();
}

function dp_steam_lobbylist_add_string_filter(argument0, argument1, argument2)
{
    if (global.dp_has_steam)
        steam_lobby_list_add_string_filter(argument0, argument1, argument2);
}

function dp_steam_lobbylist_add_numerical_filter(argument0, argument1, argument2)
{
    if (global.dp_has_steam)
        steam_lobby_list_add_numerical_filter(argument0, argument1, argument2);
}

function dp_steam_lobbylist_get_count()
{
    if (global.dp_has_steam)
        return steam_lobby_list_get_count();
    else
        return 0;
}

function dp_steam_lobbylist_get_data(argument0, argument1)
{
    if (global.dp_has_steam)
        return steam_lobby_list_get_data(argument0, argument1);
    else
        return undefined;
}

function dp_steam_lobbylist_get_lobby_id(argument0)
{
    if (global.dp_has_steam)
        return steam_lobby_list_get_lobby_id(argument0);
    else
        return 0;
}

function dp_steam_lobbylist_join(argument0)
{
    if (global.dp_has_steam)
    {
        dp_steam_lobby_leave();
        return steam_lobby_list_join(argument0);
    }
    else
    {
        return 0;
    }
}

function dp_steam_lobbylist_get_lobby_member_count(argument0)
{
    if (global.dp_has_steam)
        return steam_lobby_list_get_lobby_member_count(argument0);
    else
        return 0;
}

function dp_steam_net_send_packet_hx(argument0, argument1, argument2)
{
    return global.dp_has_steam && dp_steam_steam_networking_impl_send_packet_hx(argument0, argument1, argument2);
}

function dp_steam_net_receive_packet_hx()
{
    return global.dp_has_steam && dp_steam_steam_networking_impl_receive_packet_hx();
}

function dp_steam_net_get_packet_size_hx()
{
    if (global.dp_has_steam)
        return dp_steam_steam_networking_impl_get_packet_size_hx();
    else
        return 0;
}

function dp_steam_net_get_packet_data_hx(argument0)
{
    if (global.dp_has_steam)
    {
        var l_size = dp_steam_steam_networking_impl_get_packet_size_hx();
        
        if (buffer_get_size(argument0) < l_size)
            buffer_resize(argument0, l_size);
        
        return dp_steam_steam_networking_impl_get_packet_data_hx(argument0);
    }
    else
    {
        return 0;
    }
}

function dp_steam_steam_networking_impl_send_packet_hx(argument0, argument1, argument2)
{
    return steam_net_packet_send(argument0, argument1, argument2, 0);
}

function dp_steam_steam_networking_impl_receive_packet_hx()
{
    return steam_net_packet_receive();
}

function dp_steam_steam_networking_impl_get_packet_size_hx()
{
    return steam_net_packet_get_size();
}

function dp_steam_steam_networking_impl_get_packet_data_hx(argument0)
{
    return steam_net_packet_get_data(argument0);
}

function dp_steam_steam_networking_impl_get_packet_sender_hx()
{
    return steam_net_packet_get_sender_id();
}

function dp_buffer_read_steam_id(argument0)
{
    return (buffer_read(argument0, buffer_s32) << 32) | buffer_read(argument0, buffer_s32) | 0;
}

function dp_buffer_read_buffer(argument0, argument1, argument2, argument3)
{
    if (buffer_get_size(argument1) < (argument2 + argument3))
        buffer_resize(argument1, argument2 + argument3);
    
    buffer_copy(argument0, buffer_tell(argument0), argument3, argument1, argument2);
    var l__g = argument0;
    buffer_seek(l__g, buffer_seek_start, buffer_tell(l__g) + argument3);
}

function dp_buffer_write_buffer(argument0, argument1, argument2, argument3 = 0)
{
    var l_pos = buffer_tell(argument0);
    
    if (buffer_get_size(argument0) < (l_pos + argument2))
        buffer_resize(argument0, l_pos + argument2);
    
    buffer_copy(argument1, argument3, argument2, argument0, l_pos);
    buffer_seek(argument0, buffer_seek_start, l_pos + argument2);
}

function dp_uid_create()
{
    var l_i = global.dp_uid_next;
    var l_r = l_i;
    
    if (++l_i > 2147483647)
        l_i = 1;
    
    global.dp_uid_next = l_i;
    return l_r;
}

function dp_type_url_to_int(argument0)
{
    if (ds_map_exists(global.dp_type_url_u2i, argument0))
    {
        return dp_collections__dictionary_dictionary_impl__get(global.dp_type_url_u2i, argument0, 0);
    }
    else
    {
        var l_r = dp_Std_parseInt(argument0);
        ds_map_set(global.dp_type_url_u2i, argument0, l_r);
        return l_r;
    }
}

function dp_type_url_from_int(argument0)
{
    var l_r = ds_map_find_value(global.dp_type_url_i2u, argument0);
    
    if (l_r == undefined)
    {
        l_r = string(argument0);
        ds_map_set(global.dp_type_url_i2u, argument0, l_r);
    }
    
    return l_r;
}

function dp_haxe_class(argument0, argument1) constructor
{
    static superClass = undefined;
    
    static i_constructor = undefined;
    
    static marker = undefined;
    
    static index = undefined;
    
    static name = undefined;
    
    superClass = undefined;
    marker = global.dp_haxe_type_markerValue;
    index = argument0;
    name = argument1;
    
    static __class__ = "class";
}

global.mt_dp_haxe_class.i_constructor = dp_haxe_class;

function dp_haxe_enum(argument0, argument1, argument2) constructor
{
    static constructors = undefined;
    
    static marker = undefined;
    
    static index = undefined;
    
    static name = undefined;
    
    marker = global.dp_haxe_type_markerValue;
    index = argument0;
    name = argument1;
    constructors = argument2;
    
    static __class__ = "enum";
}

global.mt_dp_haxe_enum.i_constructor = dp_haxe_enum;

function gml_ds__array_list_array_list_iterator_create(argument0)
{
    var this = array_create(2);
    array_set(this, 0, argument0);
    array_set(this, 1, 0);
    return this;
}

function gml_ds__array_list_array_list_iterator_has_next(argument0)
{
    return argument0[1] < ds_list_size(argument0[0]);
}

function gml_ds__array_list_array_list_iterator_next(argument0)
{
    return ds_list_find_value(array_get(argument0, 0), array_set_post(argument0, 1, array_get(argument0, 1) + 1));
}

function dp_gml_internal_ArrayImpl_push(argument0, argument1)
{
    var l_i = array_length(argument0);
    array_set(argument0, l_i, argument1);
    return l_i;
}

function dp_gml_internal_ArrayImpl_copy(argument0)
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

function dp_gml_io__Buffer_BufferImpl_writeBufferExt(argument0, argument1, argument2, argument3)
{
    var l_dstPos = buffer_tell(argument0);
    var l_dstNext = l_dstPos + argument3;
    var l_dstSize = buffer_get_size(argument0);
    
    if (l_dstNext > l_dstSize)
    {
        if (buffer_get_type(argument0) == 1)
        {
            while (true)
            {
                l_dstSize *= 2;
                
                if (!(l_dstNext > l_dstSize))
                    break;
            }
            
            buffer_resize(argument0, l_dstSize);
        }
        else
        {
            return 0;
        }
    }
    
    buffer_copy(argument1, argument2, argument3, argument0, l_dstPos);
    buffer_seek(argument0, buffer_seek_start, l_dstNext);
    return 1;
}

function haxe__call_stack_call_stack_impl__call_stack()
{
    var l_raw1 = debug_get_callstack();
    var l_n = array_length(l_raw1) - 1;
    var l_arr = array_create(l_n);
    var l_i = -1;
    
    while (++l_i < l_n)
        array_set(l_arr, l_i, [1, l_raw1[l_i + 1]]);
    
    return l_arr;
}

function dp_haxe_Exception_new(argument0, argument1, argument2, argument3)
{
    array_set(argument0, 1, (argument3 != undefined) ? argument3 : argument0);
}

function dp_haxe_Exception_create(argument0, argument1, argument2)
{
    var this = [global.mt_dp_haxe_Exception];
    array_copy(this, 1, global.mq_dp_haxe_Exception, 1, 1);
    
    switch (argument_count)
    {
        case 1:
            dp_haxe_Exception_new(this, argument[0]);
            break;
        
        case 2:
            dp_haxe_Exception_new(this, argument[0], argument[1]);
            break;
        
        case 3:
            dp_haxe_Exception_new(this, argument[0], argument[1], argument[2]);
            break;
        
        default:
            show_error("Expected 1..3 arguments.", 1);
    }
    
    return this;
}

function dp_haxe_Exception_isNativeException(argument0)
{
    if (is_struct(argument0))
    {
        var l_c = variable_struct_get(argument0, "__class__");
        
        if (l_c == undefined)
            return 0;
        
        if (l_c == global.mt_dp_haxe_Exception)
            return 1;
        
        if (!variable_struct_exists(argument0, "superClass"))
            return 0;
        
        l_c = l_c.superClass;
        
        while (is_struct(l_c))
        {
            if (l_c == global.mt_dp_haxe_Exception)
                return 1;
            
            l_c = l_c.superClass;
        }
    }
    
    return 0;
}

function dp_haxe_Exception_thrown(argument0)
{
    if (dp_haxe_Exception_isNativeException(argument0))
        return argument0[1];
    
    return dp_haxe_ValueException_create(argument0);
}

function dp_haxe_ValueException_create(argument0, argument1, argument2)
{
    var this = [global.mt_dp_haxe_ValueException];
    array_copy(this, 1, global.mq_dp_haxe_ValueException, 1, 2);
    dp_haxe_Exception_new(this, string(argument0), argument1, argument2);
    array_set(this, 2, argument0);
    return this;
}

function haxe_iterators_array_iterator_create(argument0)
{
    var this = [global.mt_haxe_iterators_array_iterator];
    array_copy(this, 1, global.mq_haxe_iterators_array_iterator, 1, 2);
    array_set(this, 2, 0);
    array_set(this, 1, argument0);
    return this;
}

function haxe_iterators_array_iterator_has_next(argument0)
{
    return argument0[2] < array_length(argument0[1]);
}

function haxe_iterators_array_iterator_next(argument0)
{
    return array_get(array_get(argument0, 1), array_set_post(argument0, 2, array_get(argument0, 2) + 1));
}

function dp_init()
{
    global.dp_debug_precise_time = 0;
    global.dp_debug_packets = 0;
    global.dp_debug_packet_proc = 0;
    global.dp_debug_warnings = 1;
    global.dp_debug_state = 1;
    global.dp_debug_frames = 0;
    global.dp_debug_rel = 0;
    global.dp_debug_steam = 0;
    global.dp_debug_batch = 0;
    global.dp_adapter = dp_net_adapters_adp_steam_wrap_create();
    global.dp_out = buffer_create(1024, buffer_grow, 1);
    global.dp___buffer_pool = ds_list_create();
    global.dp_print_buffer_buffer = buffer_create(1024, buffer_grow, 1);
    global.dp_crc32tab = (function()
    {
        var l_crc32tab_init = function()
        {
            var l_poly = 3988292384;
            var l_tab = array_create(256, 0);
            
            for (var l_i = 0; l_i < 256; l_i++)
            {
                var l_crc = l_i;
                
                if ((l_crc & 1) != 0)
                    l_crc = (l_crc >> 1) ^ l_poly;
                else
                    l_crc = l_crc >> 1;
                
                if ((l_crc & 1) != 0)
                    l_crc = (l_crc >> 1) ^ l_poly;
                else
                    l_crc = l_crc >> 1;
                
                if ((l_crc & 1) != 0)
                    l_crc = (l_crc >> 1) ^ l_poly;
                else
                    l_crc = l_crc >> 1;
                
                if ((l_crc & 1) != 0)
                    l_crc = (l_crc >> 1) ^ l_poly;
                else
                    l_crc = l_crc >> 1;
                
                if ((l_crc & 1) != 0)
                    l_crc = (l_crc >> 1) ^ l_poly;
                else
                    l_crc = l_crc >> 1;
                
                if ((l_crc & 1) != 0)
                    l_crc = (l_crc >> 1) ^ l_poly;
                else
                    l_crc = l_crc >> 1;
                
                if ((l_crc & 1) != 0)
                    l_crc = (l_crc >> 1) ^ l_poly;
                else
                    l_crc = l_crc >> 1;
                
                if ((l_crc & 1) != 0)
                    l_crc = (l_crc >> 1) ^ l_poly;
                else
                    l_crc = l_crc >> 1;
                
                array_set(l_tab, l_i, l_crc);
            }
            
            return l_tab;
        };
        
        return l_crc32tab_init();
    })();
    global.dp_time_offset = 0;
    global.dp_flow_is_active = 0;
    global.dp_flow_is_rollback = 0;
    global.dp_flow_is_normal = 1;
    global.dp_flow_auto_input_delay = 0;
    global.dp_flow_delay_hx = 3;
    global.dp_flow_delay_delta_hx = 0;
    global.dp_flow_delay_delta_next_hx = 0;
    global.dp_flow_detect_desyncs = 0;
    global.dp_flow_drop_on_desyncs = 1;
    global.dp_flow_dump_on_desyncs = 0;
    global.dp_flow_dump_directory = "desyncs";
    global.dp_flow_current_seed_hx = 0;
    global.dp_flow_initial_seed = 0;
    global.dp_flow_stacked_seeds_hx = ds_list_create();
    global.dp_flow_stacked_buffers_hx = ds_list_create();
    global.dp_flow_hash_buffer_hx = undefined;
    global.dp_flow_dump_buffer_hx = undefined;
    global.dp_flow_dump_prefix = global.dp_flow_dump_directory + "/Desync";
    global.dp_flow_timeout = 7000;
    global.dp_flow_sync_start = 0;
    global.dp_flow_rollback_frames = 0;
    global.dp_flow_rollback_force_load = 0;
    global.dp_flow_on_start = undefined;
    global.dp_flow_on_end = undefined;
    global.dp_flow_on_frame = undefined;
    global.dp_flow_on_input = undefined;
    global.dp_flow_on_state_hash = undefined;
    global.dp_flow_on_state_dump = undefined;
    global.dp_flow_on_state_save = undefined;
    global.dp_flow_on_state_load = undefined;
    global.dp_flow_on_dump = undefined;
    global.dp_flow_on_desync = undefined;
    global.dp_flow_on_resync = undefined;
    global.dp_flow_on_message = undefined;
    global.dp_flow_on_sync_wait = undefined;
    global.dp_flow_on_delay_change = undefined;
    global.dp_flow_sync_start_flag_hx = 0;
    global.dp_flow_force_send_hx = 0;
    global.dp_flow_time_next_hx = 0;
    global.dp_flow_time_skip_acc_hx = 0;
    global.dp_flow_last_wait_time_hx = 0;
    global.dp_hub_is_active = 0;
    global.dp_hub_link_hx = undefined;
    global.dp_hub_local_uid_hx = 0;
    global.dp_hub_motd = "";
    global.dp_hub_players_total = 0;
    global.dp_hub_players_seeking = 0;
    global.dp_hub_distance_filter = 3;
    global.dp_hub_game_name_hx = undefined;
    global.dp_hub_is_searching = 0;
    global.dp_hub_was_searching = 0;
    global.dp_hub_search_exclude_hx = ds_map_create();
    global.dp_hub_search_exclude_by_id_hx = ds_map_create();
    global.dp_hub_on_start = undefined;
    global.dp_hub_on_filter = undefined;
    global.dp_hub_on_steam_lobby_merge = undefined;
    global.dp_hub_refreshing_entries_hx = 0;
    global.dp_hub_was_refreshing_entries_hx = 0;
    global.dp_lobby_is_active = 0;
    global.dp_lobby_is_locked = 0;
    global.dp_lobby_allow_empty_slots = 1;
    global.dp_lobby_allow_viewers = 0;
    global.dp_lobby_timeout = 7000;
    global.dp_lobby_on_start = undefined;
    global.dp_lobby_on_arrival = undefined;
    global.dp_lobby_on_departure = undefined;
    global.dp_lobby_on_message = undefined;
    global.dp_lobby_on_buffer = undefined;
    global.dp_lobby_on_error = undefined;
    global.dp_lobby_on_join_requested = undefined;
    global.dp_lobby_on_connect = undefined;
    global.dp_lobby_on_auto_delay = undefined;
    global.dp_lobby_auto_input_delay = 1;
    global.dp_lobby_auto_input_delay_disabled_hx = 0;
    global.dp_lobby_max_input_delay = 10;
    global.dp_lobby_slot_count_min = 1;
    global.dp_lobby_slot_count_max = 2;
    global.dp_lobby_slot_count_default = 2;
    global.dp_has_network = 1;
    global.dp_has_steam = 1;
    global.dp_game_name = "";
    global.dp_game_version = 0;
    global.dp_screen_width_hx = 1024;
    global.dp_screen_height_hx = 768;
    global.dp_framerate = 30;
    global.dp_framerate_cap = 0;
    global.dp_framerate_skip = 0;
    global.dp_max_frame_skip = 1;
    global.dp_current_frame = 0;
    global.dp_current_time = 0;
    global.dp_current_time_acc_hx = 0;
    global.dp_time_scale = 1;
    global.dp_on_random_next = undefined;
    global.dp_on_random_set_seed = undefined;
    global.dp_local_uid = 0;
    global.dp_local_port = -1;
    global.dp_hub_url = "";
    global.dp_hub_port = 5394;
    global.dp_net_is_online_hx = 0;
    global.dp_net_is_server_hx = 0;
    global.dp_net_server_socket_hx = undefined;
    global.dp_net_server_port_hx = -1;
    global.dp_net_server_link_hx = undefined;
    global.dp_net_password = "";
    global.dp_net_connect_timeout = 7000;
    global.dp_player_local_alias = "Player";
    global.dp_player_on_departure = undefined;
    global.dp_player_on_swap = undefined;
    global.dp_player_on_change = undefined;
    global.dp_player_on_reset = undefined;
    global.dp_flow_flow_rollback_rollback_states_hx = ds_list_create();
    global.dp_flow_state_state_cache_hx = ds_list_create();
    global.dp_axis_count = 0;
    global.dp_axis_map = ds_map_create();
    global.dp_axis_ids = dp_array_alloc();
    global.dp_axis_names = dp_array_alloc();
    global.dp_axis_names_lq = dp_array_alloc();
    global.dp_axis_nodes = dp_array_alloc();
    global.dp_axis_steps = dp_array_alloc();
    global.dp_axis_deadzones = dp_array_alloc();
    global.dp_axis_is_async = dp_array_alloc();
    global.dp_button_count = 0;
    global.dp_button_map = ds_map_create();
    global.dp_button_ids = dp_array_alloc();
    global.dp_button_names = dp_array_alloc();
    global.dp_button_names_lq = dp_array_alloc();
    global.dp_button_nodes = dp_array_alloc();
    global.dp_button_is_async = dp_array_alloc();
    global.dp_gamepad_is_enabled = 1;
    global.dp_keyboard_is_enabled = 1;
    global.dp_input_adapter_gamepad_buttons = [32769, 32770, 32771, 32772, 32774, 32776, 32773, 32775, 32777, 32778];
    global.dp_input_adapter_hx = dp_input_adapter_create();
    global.dp_input_exec_error = undefined;
    global.dp_mouse_is_enabled = 1;
    global.dp_mouse_pos_x = 0;
    global.dp_mouse_pos_y = 0;
    global.dp_mouse_on_vec_x = undefined;
    global.dp_mouse_on_vec_y = undefined;
    global.dp_mouse_moved_hx = 0;
    global.dp_mouse_wheel_delta_hx = 0;
    global.dp_mouse_wheel_delta_next_hx = 0;
    global.dp_pos_count = 0;
    global.dp_pos_map = ds_map_create();
    global.dp_pos_ids = dp_array_alloc();
    global.dp_pos_names = dp_array_alloc();
    global.dp_pos_names_lq = dp_array_alloc();
    global.dp_pos_nodes = dp_array_alloc();
    global.dp_pos_steps = dp_array_alloc();
    global.dp_pos_min = dp_array_alloc();
    global.dp_pos_max = dp_array_alloc();
    global.dp_pos_is_async = dp_array_alloc();
    global.dp_pos_delta_hx = dp_array_alloc();
    global.dp_replay_is_recording = 0;
    global.dp_replay_is_playing = 0;
    global.dp_replay_is_reading = 0;
    global.dp_replay_buffer = undefined;
    global.dp_replay_path = "";
    global.dp_replay_view_uid = 0;
    global.dp_replay_frames = 0;
    global.dp_replay_frames_pos_hx = 0;
    global.dp_replay_file_delay_hx = 0;
    global.dp_replay_post_delay_hx = 0;
    global.dp_replay_prev_pos_hx = 0;
    global.dp_replay_on_complete = undefined;
    global.dp_replay_on_takeover = undefined;
    global.dp_replay_takeover_state_hx = 0;
    global.dp_state_pool_hx = ds_list_create();
    global.dp_state_on_poll = undefined;
    global.dp_input_state_event_leaving = [0];
    global.dp_input_state_event_owner_change_re = [2];
    global.dp_text_mode = -1;
    global.dp_input_ast_in_func_def_map1_hx = ds_map_create();
    global.dp_input_ast_in_func_def_map2_hx = ds_map_create();
    global.dp_input_ast_in_func_def_map3_hx = ds_map_create();
    global.dp_input_ast_in_func_def_mapx_hx = ds_map_create();
    global.dp_input_leaf_in_current = [1];
    global.dp_input_node_zero_leaf_hx = [2, 0];
    global.dp_input_node_uses_input_node_hx = dp_input_node_create();
    global.dp_input_parse_error_text_hx = undefined;
    global.dp_link_list_hx = undefined;
    global.dp_link_map_hx = undefined;
    global.dp_link_on_ping = undefined;
    global.dp_net_netlink_att_max_hx = 10;
    global.dp_net_netlink_flush_together_buf_hx = buffer_create(1200, buffer_grow, 1);
    global.dp_net_packet_counter = 0;
    global.dp_net_byte_counter = 0;
    global.dp_net_buffer_counter = 0;
    global.dp_net_allow_batching = 1;
    global.dp_net_packet__rtt_warn_hx = 0;
    global.dp_net_server_start_offset_hx = 0;
    global.dp_net_adapters_adp_faucet_net_buffer = dp_make_buffer(1024);
    global.dp_net_adapters_adp_steam_lobby_slots = 0;
    global.dp_net_adapters_adp_steam_lobby_players = 0;
    global.dp_net_adapters_adp_steam_lobby_viewers = 0;
    global.dp_net_adapters_adp_steam_lobby_open = 0;
    global.dp_steam_is_active = 1;
    global.dp_steam_is_available = 0;
    global.dp_steam_is_initialized = 0;
    global.dp_steam_poll_rate = 250;
    global.dp_steam_lobby_joining_lobby = 0;
    global.dp_steam_lobby_merging_lobby = 0;
    global.dp_steam_lobby_creating_lobby = 0;
    global.dp_steam_lobby_lobby_title_hx = "Someone's game";
    global.dp_steam_lobby_lobby_type = 0;
    global.dp_steam_steam_lobby_impl_is_owner_frame_hx = -1;
    global.dp_steam_steam_lobby_impl_is_owner_result_hx = 0;
    global.dp_type_url_u2i = ds_map_create();
    global.dp_type_url_i2u = ds_map_create();
    global.haxe_stack_item_cfunction = [0];
    dp_init_func_hx();
}
