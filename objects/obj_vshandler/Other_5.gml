with (obj_player)
{
    var _id = 0;
    
    for (var i = 0; i < ds_list_size(global.activePlayers); i++)
    {
        if (ds_list_find_value(global.activePlayers, i) == playerData)
        {
            _id = i;
            break;
        }
    }
    
    global.aftermathPortraits[_id] = portrait;
}
