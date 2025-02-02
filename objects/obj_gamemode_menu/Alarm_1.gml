global.player_lives = 5;
global.previous_room = room;

switch (room)
{
    case rm_menu_antonball:
        global.next_room = 101;
        break;
    
    case rm_menu_punchball:
        global.next_room = 56;
        break;
    
    case rm_menu_vs:
        global.next_room = 13;
        break;
}

room_goto(rm_character_select);
