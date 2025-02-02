cmn_menu_init();
subMenus = 
{
    mainMenu: cmn_menu_create(netplay_main_menu),
    findGame: cmn_menu_create(netplay_find_game_menu),
    createGame: cmn_menu_create(netplay_create_game_menu),
    browseGames: cmn_menu_create(netplay_browse_games_menu),
    lobbyMenu: cmn_menu_create(netplay_lobby_menu),
    lobbyPlayers: cmn_menu_create(netplay_lobby_players),
    searchMenu: cmn_menu_create(netplay_search_menu),
    connecting: cmn_menu_create(function()
    {
        scr_label("Connecting...")
    }),
    creatingLobby: cmn_menu_create(function()
    {
        scr_label("Creating...")
    })
};

currentMenu = subMenus.mainMenu;
visibleMenu = currentMenu;
gameMode = new option_selector_data("Game Mode", "Arcade", "Punch Ball", "VS.");
gamePrivacy = new option_selector_data("Type", "Public", "Private");
bottomScrollTime = 0;
ds_list_clear(global.activePlayers);
global.achievementFlags.reset();
