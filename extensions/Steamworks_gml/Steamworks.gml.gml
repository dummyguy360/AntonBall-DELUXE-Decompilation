#define steam_gml_init_gml
global.g_steam_net_buffer = -1;
global.g_steam_controller_get_max_count = -1;
global.g_steam_controller_get_max_origins = -1;
var app_id = steam_get_app_id();
show_debug_message("Initializing steamworks.gml with app_id " + string(app_id) + "...");
var r = 0;

if (steam_gml_is_available())
{
    r = steam_gml_init_cpp(app_id) > 0;
    
    if (!r)
        show_debug_message("Failed to initialize steamworks.gml.");
}
else
{
    show_debug_message("Steamworks.gml binary is not loaded.");
}

global.g_steam_gml_initialized = r;

if (!r)
    return 0;

var n = parameter_count();

for (var i = 0; i < n; i += 1)
{
    var s = parameter_string(i);
    
    if (s == "+connect_lobby")
    {
        s = parameter_string(++i);
        var lobby_id_high = int64_from_string_high(s);
        var lobby_id_low = int64_from_string_low(s);
        steam_lobby_join_id_raw(lobby_id_high, lobby_id_low);
        break;
    }
}

#define steam_gml_check_version
return 100 == steam_gml_get_version();

#define steam_gml_prepare_buffer
var b = global.g_steam_net_buffer;

if (b < 0)
{
    b = buffer_create(argument0, buffer_grow, 1);
    global.g_steam_net_buffer = b;
}
else if (buffer_get_size(b) < argument0)
{
    buffer_resize(b, argument0);
}

buffer_seek(b, buffer_seek_start, 0);
return b;

#define steam_id_create
return (argument0 << 32) | argument1;

#define steam_id_equals
return argument0 == argument1;

#define steam_id_from_int64
return argument0;

#define steam_id_to_int64
return argument0;

#define steam_id_get_high
// this code is high ngl
return (argument0 >> 32) & 4294967295;

#define steam_id_get_low
return argument0 & 4294967295;

#define steam_get_friends_game_info
var n = steam_get_friends_game_info_1();
var b = steam_gml_prepare_buffer(n * 24);
steam_get_friends_game_info_2(buffer_get_address(b));
var r = array_create(n);

for (var i = 0; i < n; i++)
{
    var l_user_id = buffer_read(b, buffer_u64);
    var l_game_id = buffer_read(b, buffer_u64);
    var l_lobby_id = buffer_read(b, buffer_u64);
    r[i] = [l_user_id, l_game_id, l_lobby_id];
}

return r;

#define steam_get_app_ownership_ticket_data
var l_buf = argument[0];
var l_app_id = (argument_count > 1) ? argument[1] : steam_get_app_id();
var b = steam_gml_prepare_buffer(20);
buffer_seek(b, buffer_seek_start, 0);
buffer_write(b, buffer_u32, l_app_id);
buffer_write(b, buffer_u32, buffer_get_size(l_buf));
steam_get_app_ownership_ticket_data_raw(buffer_get_address(l_buf), buffer_get_address(b));
buffer_seek(b, buffer_seek_start, 0);
var r = array_create(5);

for (var i = 0; i < 5; i++)
    r[i] = buffer_read(b, buffer_u32);

return r;

#define steam_lobby_join_id
var lobby_id = argument0;
return steam_lobby_join_id_raw(steam_id_get_high(lobby_id), steam_id_get_low(lobby_id));

#define steam_lobby_get_lobby_id
return steam_id_create(steam_lobby_get_lobby_id_high(), steam_lobby_get_lobby_id_low());

#define steam_lobby_get_member_id
var i = argument0;
return steam_id_create(steam_lobby_get_member_id_high(i), steam_lobby_get_member_id_low(i));

#define steam_lobby_get_owner_id
return steam_id_create(steam_lobby_get_owner_id_high(), steam_lobby_get_owner_id_low());

#define steam_lobby_list_get_lobby_id
var i = argument0;
return steam_id_create(steam_lobby_list_get_lobby_id_high(i), steam_lobby_list_get_lobby_id_low(i));

#define steam_lobby_list_get_lobby_memeber_id
var i = argument0;
return steam_id_create(steam_lobby_list_get_lobby_id_high(i), steam_lobby_list_get_lobby_id_low(i));

#define steam_lobby_list_get_lobby_owner_id
var i = argument0;
return steam_id_create(steam_lobby_list_get_lobby_owner_id_high(i), steam_lobby_list_get_lobby_owner_id_low(i));

#define steam_net_accept_p2p_session
var user_id = argument0;
return steam_net_accept_p2p_session_raw(steam_id_get_high(user_id), steam_id_get_low(user_id));

#define steam_net_check_version
return steam_gml_check_version();

#define steam_net_close_p2p_session
var user_id = argument0;
return steam_net_close_p2p_session_raw(steam_id_get_high(user_id), steam_id_get_low(user_id));

#define steam_net_is_available
return steam_gml_is_available();

#define steam_net_packet_get_data
var buf = argument0;
var size = steam_net_packet_get_size();

if (buffer_get_size(buf) < size)
    buffer_resize(buf, size);

var addr = buffer_get_address(buf);
return steam_net_packet_get_data_raw(addr);

#define steam_net_packet_get_sender_id
return steam_id_create(steam_net_packet_get_sender_id_high(), steam_net_packet_get_sender_id_low());

#define steam_net_packet_send
var steam_id = argument0;
var addr = buffer_get_address(argument1);
var size = argument2;
steam_net_packet_set_type(argument3);
return steam_net_packet_send_raw(steam_id_get_high(steam_id), steam_id_get_low(steam_id), addr, size);

#define steam_net_update
return steam_gml_update();

#define steam_user_request_encrypted_app_ticket
var l_data = (argument_count > 0) ? argument[0] : undefined;
var l_size = (argument_count > 1) ? argument[1] : undefined;

if (l_data == undefined)
{
    l_data = "";
    l_size = 0;
}
else if (is_string(l_data))
{
    if (l_size == undefined)
        l_size = string_byte_length(l_data);
}
else
{
    if (l_size == undefined)
        l_size = buffer_get_size(l_data);
    
    l_data = buffer_get_address(l_data);
}

return steam_user_request_encrypted_app_ticket_raw(l_data, l_size);

#define steam_controller_get_ids
var b = steam_gml_prepare_buffer(steam_controller_get_max_count() * 4);
var n = steam_controller_get_ids_raw(buffer_get_address(b));
var w, r;

if (argument_count > 0)
{
    w = argument[1];
    r = n;
}
else
{
    w = array_create(n);
    r = w;
}

for (var i = 0; i < n; i++)
    array_set(w, i, buffer_read(b, buffer_s32));

return r;

#define steam_controller_get_digital_origins
var b = steam_gml_prepare_buffer(steam_controller_get_max_origins() * 4);
var n = steam_controller_get_digital_origins_raw(argument[0], argument[1], argument[2], buffer_get_address(b));
var w;

if (argument_count > 3)
    w = argument[3];
else
    w = undefined;

return steam_controller_get_origins_raw(n, b, w);

#define steam_controller_get_origins_raw
var n = argument0;
var b = argument1;
var w = argument2;

if (!is_array(w))
{
    w = array_create(n);
    r = w;
}
else
{
    r = n;
}

for (var i = 0; i < n; i++)
    array_set(w, i, buffer_read(b, buffer_s32));

return r;

#define steam_controller_get_max_origins
var n = global.g_steam_controller_get_max_origins;

if (n < 0)
{
    n = steam_controller_get_max_origins_raw();
    global.g_steam_controller_get_max_origins = n;
}

return n;

#define steam_controller_get_max_count
var n = global.g_steam_controller_get_max_count;

#define steam_controller_get_analog_origins
var b = steam_gml_prepare_buffer(steam_controller_get_max_origins() * 4);
var n = steam_controller_get_analog_origins_raw(argument[0], argument[1], argument[2], buffer_get_address(b));
var w;

if (argument_count > 3)
    w = argument[3];
else
    w = undefined;

return steam_controller_get_origins_raw(n, b, w);

#define steam_controller_get_analog_mode
return steam_controller_get_analog_data(argument0, argument1, 1);

#define steam_controller_get_analog_status
return steam_controller_get_analog_data(argument0, argument1, 0);

#define steam_controller_get_analog_x
return steam_controller_get_analog_data(argument0, argument1, 2);

#define steam_controller_get_analog_y
return steam_controller_get_analog_data(argument0, argument1, 3);