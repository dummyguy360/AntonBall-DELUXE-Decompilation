bottomScrollTime += 0.5;

if (global.dp_hub_is_searching)
    visibleMenu = subMenus.searchMenu;
else if (dp_get_is_connecting())
    visibleMenu = subMenus.connecting;
else if (global.dp_steam_lobby_creating_lobby)
    visibleMenu = subMenus.creatingLobby;
else if (global.dp_lobby_is_active)
    visibleMenu = subMenus.lobbyMenu;
else
    visibleMenu = currentMenu;

cmn_menu_update(visibleMenu);
cmn_menu_shift_select(visibleMenu, obj_menu_input.verticalDirection, 0);

switch (visibleMenu)
{
    case subMenus.findGame:
    case subMenus.createGame:
    case subMenus.browseGames:
        if (obj_menu_input.cancel)
        {
            currentMenu = subMenus.mainMenu;
            exit;
        }
        
        break;
    
    case subMenus.lobbyMenu:
        cmn_menu_update(subMenus.lobbyPlayers);
        break;
    
    case subMenus.mainMenu:
        if (obj_menu_input.verticalDirection != 0)
            bottomScrollTime = 0;
        
        break;
}

cmn_menu_input(visibleMenu);
