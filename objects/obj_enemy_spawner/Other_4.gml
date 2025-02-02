var _enemyString = object_get_name(enemy);

if (variable_instance_exists(id, "spawnPoints"))
{
    for (var i = 0; i < array_length(spawnPoints); i++)
    {
        var _spawnID = spawnPoints[i];
        
        with (obj_enemy_spawn_point)
        {
            if (spawnPointID == _spawnID)
                other.spawnPoints[i] = id;
        }
    }
}
else
{
    spawnPoints = [];
    
    with (obj_enemy_spawn_point)
    {
        if (array_length(whitelist) == 0 || array_contains(whitelist, _enemyString))
            array_push(other.spawnPoints, id);
    }
    
    if (array_length(spawnPoints) == 0)
        spawnPoints[0] = self;
}

preciseSpawns = variable_instance_exists(id, "spawnOrder");

if (preciseSpawns)
{
    if (array_length(spawnOrder[0]) > 1)
        timer = spawnOrder[0][1];
    else
        timer = interval;
}
