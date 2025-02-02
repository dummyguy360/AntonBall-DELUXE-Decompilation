cmn_menu_init();
subMenus = 
{
    mainMenu: argument[0],
    findGame: argument[1],
    createGame: argument[2],
    browseGames: argument[3],
    lobbyMenu: argument[4],
    lobbyPlayers: argument[5],
    searchMenu: argument[6],
    connecting: argument[7],
    creatingLobby: argument[8]
};
currentMenu = subMenus.mainMenu;
visibleMenu = currentMenu;
gameMode = new option_selector_data("Game Mode", "Arcade", "Punch Ball", "VS.");
gamePrivacy = new option_selector_data("Type", "Public", "Private");
bottomScrollTime = 0;
ds_list_clear(global.activePlayers);
global.achievementFlags.reset();
