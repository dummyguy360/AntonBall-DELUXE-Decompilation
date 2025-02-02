function unlocks_init()
{
    global.unlocks = [];
    
    for (var i = 0; i < UnknownEnum.Value_50; i++)
        global.unlocks[i] = 0;
}

function unlock(argument0)
{
    global.unlocks[argument0] = 1;
    save_begin();
}
