var _browserTitle = undefined;
var _bottomScroll = undefined;
var _centerX = round(room_width / 2);
var _menuHeight = cmn_menu_get_height(visibleMenu);

switch (visibleMenu)
{
    case subMenus.findGame:
        _browserTitle = 303;
        _bottomScroll = "WHAT ARE YOU SEARCHING FOR?";
        break;
    
    case subMenus.browseGames:
        _browserTitle = 825;
        _bottomScroll = "SO MANY OPTIONS!";
        break;
    
    case subMenus.lobbyMenu:
        _browserTitle = 842;
        _bottomScroll = "YOUR FRIENDS ARE HERE TO PLAY WITH YOUR BALLS!";
        break;
    
    case subMenus.createGame:
        _browserTitle = 842;
        break;
    
    case subMenus.mainMenu:
        cmn_menu_draw(visibleMenu, 15, 33);
        
        switch (cmn_menu_get_select(visibleMenu))
        {
            case 1:
                _bottomScroll = "FIND SOME BALLS QUICKLY!";
                break;
            
            case 2:
                _bottomScroll = "INVITE SOME FRIENDS TO PLAY WITH YOUR BALLS!";
                break;
            
            case 3:
                _bottomScroll = "SEEK YOUR FRIENDS' BALLS!";
                break;
        }
        
        break;
    
    default:
        cmn_menu_draw(visibleMenu, _centerX, round((room_height / 2) - (_menuHeight / 2)));
}

if (!is_undefined(_browserTitle))
{
    draw_sprite(_browserTitle, 0, _centerX, 31);
    var _containerY = round(45 + (sprite_get_height(spr_serverbrowsercontainer) / 2));
    draw_sprite_ext(spr_serverbrowsercontainer, 0, _centerX, _containerY, 1, 1, 0, c_white, 0.5);
    draw_set_valign(fa_top);
    
    if (visibleMenu == subMenus.lobbyMenu)
    {
        _drawY = (_containerY + (sprite_get_height(spr_serverbrowsercontainer) / 2)) - _menuHeight - 3;
        draw_set_halign(fa_left);
        cmn_menu_draw(subMenus.lobbyPlayers, 16, 53);
    }
    else
    {
        _drawY = _containerY - (_menuHeight / 2);
    }
    
    var _drawY = round(_drawY);
    draw_set_halign(fa_center);
    cmn_menu_draw(visibleMenu, _centerX, _drawY);
}

if (!is_undefined(_bottomScroll))
    draw_bottom_scroll(_bottomScroll, bottomScrollTime);
