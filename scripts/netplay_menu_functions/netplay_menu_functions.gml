global.__netplay_main_menu__localtest = file_exists("localtest");

function netplay_main_menu()
{
    menu_draw(function()
    {
        var _ha = draw_get_halign();
        var _va = draw_get_valign();
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_set_color(-1);
        draw_set_alpha(0.3);
        draw_text(2, 2, sfmt("Version: %", global.dp_game_version));
        draw_set_halign(_ha);
        draw_set_valign(_va);
        draw_set_alpha(1);
    });
    
    if (global.dp_steam_is_active)
    {
        if (menu_sprite_button(741, 64, 13))
            currentMenu = subMenus.findGame;
        
        if (menu_sprite_button(229, 64, 13))
            currentMenu = subMenus.createGame;
        
        if (menu_sprite_button(132, 64, 13))
        {
            currentMenu = subMenus.browseGames;
            dp_hub_refresh_entries();
        }
    }
    else if (global.__netplay_main_menu__localtest)
    {
        if (scr_button("Host local"))
            dp_host(5394);
        
        if (scr_button("Join local"))
            dp_join("127.0.1", 5394);
    }
    else
    {
        if (scr_button("Host direct"))
        {
            var _ok = dp_host(get_integer("Port?", 5394));
            
            if (!_ok)
                show_message("That didn't work out");
        }
        
        if (scr_button("Join direct"))
        {
            var _ip = get_string("IP?", "127.0.1");
            var _port = get_integer("Port?", 5394);
            var _ok = dp_join(_ip, _port);
            
            if (!_ok)
                show_message("That didn't work out");
        }
    }
    
    if (menu_sprite_button(642))
    {
        audio_stop_all();
        room_goto(rm_title);
    }
}

function netplay_get_slotcount_for_mode(argument0)
{
    switch (argument0)
    {
        default:
            return 4;
    }
}

function netplay_find_game_menu()
{
    if (option_selector(gameMode.getFullLabel()))
        gameMode.increment(global.g_cmn_menu_result);
    
    menu_position_update(undefined, 120);
    
    if (scr_button("LET'S GO!!"))
    {
        global.dp_lobby_game_mode = gameMode.currentIndex;
        var _slotCount = netplay_get_slotcount_for_mode(global.dp_lobby_game_mode);
        dp_join_hub();
        dp_hub_find_match(_slotCount);
    }
}

function netplay_create_game_menu()
{
    if (global.dp_steam_lobby_creating_lobby)
    {
        scr_label("Creating a lobby...");
        exit;
    }
    
    if (option_selector(gameMode.getFullLabel()))
        gameMode.increment(global.g_cmn_menu_result);
    
    if (option_selector(gamePrivacy.getFullLabel()))
        gamePrivacy.increment(global.g_cmn_menu_result);
    
    if (scr_button("Create"))
    {
        var _isPublic = string_pos("public", string_lower(gamePrivacy.getFullLabel()));
        var _title = global.dp_player_local_alias + "'s game";
        global.dp_lobby_game_mode = gameMode.currentIndex;
        var _slotCount = netplay_get_slotcount_for_mode(global.dp_lobby_game_mode);
        
        if (_isPublic)
            dp_hub_host_public(_title, _slotCount);
        else
            dp_hub_host_private(_title, _slotCount);
    }
}

function netplay_search_menu()
{
    scr_label("Searching...");
    
    if (menu_back())
        dp_hub_stop_search();
}

function netplay_browse_games_menu()
{
    var _numLobbies = dp_hub_get_entry_count();
    
    for (var i = 0; i < _numLobbies; i++)
    {
        var _title = dp_hub_get_entry_title(i);
        var _pcur = dp_hub_get_entry_slots_taken(i);
        var _ptot = dp_hub_get_entry_slots_total(i);
        var _mstr = steam_lobby_list_get_data(i, "game_mode");
        var _mdig = string_digits(_mstr);
        var _mind = (_mdig != "") ? real(_mdig) : -1;
        var _mabr = "??";
        
        switch (_mind)
        {
            case UnknownEnum.Value_0:
                _mabr = "AR";
                break;
            
            case UnknownEnum.Value_1:
                _mabr = "PB";
                break;
            
            case UnknownEnum.Value_2:
                _mabr = "VS";
                break;
        }
        
        if (scr_browse_button(_title, sfmt("%/%", _pcur, _ptot), _mabr))
            dp_hub_join_public(i);
    }
    
    menu_position_update(undefined, 120);
    var _loading = dp_hub_is_loading_entries();
    
    if (scr_button(_loading ? "Refreshing..." : "Refresh", 0, undefined, undefined, 120) && !_loading)
        dp_hub_refresh_entries();
}

function netplay_lobby_players()
{
    var _numActive = dp_player_count_active();
    scr_label(sfmt("Players (%/%):", _numActive, dp_get_players()));
    
    for (var i = 0; i < _numActive; i++)
    {
        var p = dp_player_find_active(i);
        var s = dp_player_get_alias(p);
        
        if (dp_player_is_local(p))
            s += " (that's you)";
        else
            s += sfmt(" (%ms)", dp_player_get_att(p));
        
        scr_label(s, 1);
    }
}

function netplay_lobby_menu()
{
    var s = sfmt("Delay: %ms", dp_get_delay_ms());
    
    if (!dp_lobby_input_delay_sufficient())
        s += " (not enough!)";
    
    if (dp_get_is_server())
    {
        if (scr_steppy(s))
            dp_set_delay(dp_get_delay() + global.g_cmn_menu_result);
    }
    else
    {
        scr_label(s);
    }
    
    if (global.dp_has_steam && dp_player_count_active() < dp_get_players() && scr_button("Invite"))
        dp_lobby_show_invite_overlay();
    
    if (scr_button("Leave lobby"))
    {
        dp_reset();
        currentMenu = subMenus.createGame;
    }
    
    if (dp_get_is_server())
    {
        if (global.dp_lobby_game_mode == UnknownEnum.Value_2 && dp_player_count_active() == 1)
        {
            scr_label("Need 2P to start in versus");
        }
        else if (scr_button("LET'S GO!!"))
        {
            var b = buffer_create(4, buffer_grow, 1);
            buffer_write(b, buffer_u8, UnknownEnum.Value_0);
            buffer_write(b, buffer_u8, global.dp_lobby_game_mode);
            dp_lobby_send_buffer(b);
            buffer_delete(b);
            dp_start();
        }
    }
    else
    {
        scr_label("Waiting for host to start");
    }
}
