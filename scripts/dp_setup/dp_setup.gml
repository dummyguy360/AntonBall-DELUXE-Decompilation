global.dp_lobby_game_mode = UnknownEnum.Value_0;
global.dp_new_player_key_data = undefined;
global.dp_active_player_index = -1;

function dp_setup()
{
    dp_init();
    
    for (var b = 0; b < UnknownEnum.Value_19; b++)
        dp_button_define(b, global.net_button_names[b]);
    
    global.dp_game_name = "Antonball";
    global.dp_game_version = 1009;
    global.dp_framerate = 60;
    global.dp_flow_detect_desyncs = 1;
    global.dp_flow_dump_on_desyncs = 1;
    
    global.dp_flow_on_desync = function()
    {
        cmn_chat_add("Desync!");
    };
    
    global.dp_player_on_departure = function(argument0)
    {
        cmn_chat_add(sfmt("% left the game!", dp_player_get_alias(argument0)));
    };
    
    global.dp_lobby_on_error = function(argument0)
    {
        cmn_chat_add(sfmt("Lobby error: %", argument0));
    };
    
    global.dp_state_on_poll = dp_handle_state_poll;
    
    global.dp_lobby_on_start = function()
    {
        if (dp_get_is_server())
            steam_lobby_set_data("game_mode", string(global.dp_lobby_game_mode));
        
        if (room != rm_netplayMenu)
            room_goto(rm_netplayMenu);
    };
    
    global.dp_lobby_on_buffer = dp_handle_lobby_buffer;
    
    global.dp_lobby_on_message = function(argument0, argument1, argument2)
    {
        cmn_chat_add(sfmt("%: %", dp_link_get_alias(argument2), argument0));
    };
    
    global.dp_hub_on_filter = function()
    {
        with (obj_netplay_menu)
        {
            if (visibleMenu == subMenus.browseGames)
                exit;
        }
        
        steam_lobby_list_add_numerical_filter("game_mode", global.dp_lobby_game_mode, 0);
    };
    
    global.dp_flow_on_start = function()
    {
        global.dp_new_player_key_data = undefined;
        global.dp_active_player_index = -1;
        room_goto(global.next_room);
    };
    
    global.dp_flow_on_frame = dp_handle_flow_frame;
    
    if (file_exists("copypath"))
        dp_copy_path();
    
    trace("Steam available", global.dp_steam_is_available);
}

global.net_button_names[UnknownEnum.Value_0] = "left";
global.net_button_names[UnknownEnum.Value_1] = "right";
global.net_button_names[UnknownEnum.Value_2] = "up";
global.net_button_names[UnknownEnum.Value_3] = "down";
global.net_button_names[UnknownEnum.Value_4] = "attack";
global.net_button_names[UnknownEnum.Value_5] = "jump";
global.net_button_names[UnknownEnum.Value_6] = "bumper_l";
global.net_button_names[UnknownEnum.Value_7] = "bumper_r";
global.net_button_names[UnknownEnum.Value_8] = "grab";
global.net_button_names[UnknownEnum.Value_9] = "start";
global.net_button_names[UnknownEnum.Value_10] = "select";
global.net_button_names[UnknownEnum.Value_11] = "menu_confirm";
global.net_button_names[UnknownEnum.Value_12] = "menu_cancel";
global.net_button_names[UnknownEnum.Value_13] = "menu_leave";
global.net_button_names[UnknownEnum.Value_14] = "menu_select";
global.net_button_names[UnknownEnum.Value_15] = "menu_up";
global.net_button_names[UnknownEnum.Value_16] = "menu_left";
global.net_button_names[UnknownEnum.Value_17] = "menu_down";
global.net_button_names[UnknownEnum.Value_18] = "menu_right";
global.net_button_names[UnknownEnum.Value_19] = "sizeof";
