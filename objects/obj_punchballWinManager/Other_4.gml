checkComplete = 1;

if (global.punchball_stage)
{
    checkComplete = 0;
    spawnManagersToCheck = [];
    
    with (obj_enemy_spawner)
    {
        if (requiredForWin)
            array_push(other.spawnManagersToCheck, id);
    }
    
    if (!global.bonus_stage)
        alarm[0] = -1;
    else
        alarm[0] += 600;
}
else
{
    alarm[0] = -1;
}
