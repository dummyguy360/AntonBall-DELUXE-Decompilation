doCheck = function()
{
    if (global.unlocks[argument[0]])
        return 0;
    
    for (var i = 4; i < argument_count; i++)
    {
        if (!argument[i])
            return 0;
    }
    
    unlock(argument[0]);
    displayMessage = argument[1];
    unlockSprite = argument[2];
    unlockName = argument[3];
    return 1;
};

displayMessage = undefined;
unlockName = undefined;
unlockSprite = undefined;
