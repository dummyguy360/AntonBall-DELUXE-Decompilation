function main_menu()
{
    var _horizontalOffset = 3;
    var _verticalOffset = 3;
    
    if (menu_sprite_button(267, _horizontalOffset, _verticalOffset))
    {
        global.min_players = 1;
        global.max_players = 4;
        global.next_room = 96;
        on_select();
    }
    
    if (menu_sprite_button(57, -_horizontalOffset, _verticalOffset))
    {
        global.min_players = 1;
        global.max_players = 2;
        global.next_room = 97;
        on_select();
    }
    
    if (menu_sprite_button(623, _horizontalOffset, _verticalOffset))
    {
        global.min_players = 2;
        global.max_players = 4;
        global.next_room = 95;
        on_select();
    }
    
    if (menu_sprite_button(740, -_horizontalOffset, _verticalOffset))
    {
        global.min_players = 2;
        global.max_players = 4;
        global.next_room = 18;
        on_select();
    }
    
    if (menu_sprite_button(657, _horizontalOffset, _verticalOffset))
        menu = subMenus.extras;
    
    if (menu_sprite_button(171, -_horizontalOffset, _verticalOffset))
    {
        deletionEnabled = 0;
        loadOptions();
        menu = subMenus.options;
    }
    
    if (menu_sprite_button(293, _horizontalOffset, _verticalOffset))
        game_end();
}

function extras_menu()
{
    if (scr_button("LOTTERY"))
    {
        global.next_room = 74;
        on_select();
    }
    
    if (scr_button("REC ROOM"))
    {
        global.next_room = 53;
        on_select();
    }
}
