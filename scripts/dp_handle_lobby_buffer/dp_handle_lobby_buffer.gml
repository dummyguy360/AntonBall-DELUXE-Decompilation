function dp_handle_lobby_buffer(argument0, argument1, argument2, argument3)
{
    buffer_seek(argument0, buffer_seek_start, 0);
    
    switch (buffer_read(argument0, buffer_u8))
    {
        case UnknownEnum.Value_0:
            var _mode = buffer_read(argument0, buffer_u8);
            global.dp_lobby_game_mode = _mode;
            trace(sfmt("Setting game mode to %", _mode));
            
            switch (_mode)
            {
                case UnknownEnum.Value_0:
                    global.min_players = 1;
                    global.max_players = 4;
                    global.next_room = 96;
                    break;
                
                case UnknownEnum.Value_1:
                    global.min_players = 1;
                    global.max_players = 2;
                    global.next_room = 97;
                    break;
                
                case UnknownEnum.Value_2:
                    global.min_players = 2;
                    global.max_players = 4;
                    global.next_room = 95;
                    break;
                
                default:
                    global.min_players = 1;
                    global.max_players = 2;
                    global.next_room = 96;
            }
            
            break;
        
        default:
    }
}
