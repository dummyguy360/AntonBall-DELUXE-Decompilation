menuItem = function(argument0, argument1, argument2, argument3) constructor
{
    if (global.unlocks[argument0])
    {
        name = argument1;
        sprite = argument2;
        sound = argument3;
    }
    else
    {
        name = "???";
        sprite = spr_songLocked;
        sound = mus_not_unlocked;
    }
};

menuItems = [new menuItem(UnknownEnum.Value_36, "Polar March", 632, 77), new menuItem(UnknownEnum.Value_37, "Bear it All", 733, 38), new menuItem(UnknownEnum.Value_38, "Green Socks", 280, 145), new menuItem(UnknownEnum.Value_39, "Lukewarm Coffee", 10, 55), new menuItem(UnknownEnum.Value_40, "Danthony's Orb", 162, 189), new menuItem(UnknownEnum.Value_41, "Do You", 928, 30), new menuItem(UnknownEnum.Value_42, "Super Gangston!", 469, 193), new menuItem(UnknownEnum.Value_43, "Harmed Yards", 441, 18)];
menu = cmn_menu_create(rec_room_menu);
targetY = room_height / 2;
drawY = targetY;
bottomScrollTime = 0;
currentSound = -1;
currentlyPlayingItem = undefined;
backCharge = 0;
backTime = 40;
uiOffset = 19;
