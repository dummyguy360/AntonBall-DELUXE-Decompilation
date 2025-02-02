var i = 0;

while (i < ds_list_size(spawnedInstances))
{
    if (!instance_exists(ds_list_find_value(spawnedInstances, i)))
        ds_list_delete(spawnedInstances, i);
    else
        i++;
}

if (!global.win)
{
    if (finishedSpawning)
    {
        if (ds_list_size(spawnedInstances) == 1)
        {
            with (ds_list_find_value(spawnedInstances, 0))
            {
                if (!lastStanding)
                {
                    lastStanding = 1;
                    walkSpeed = frenzySpeed;
                    moveSpeed.x = walkSpeed * image_xscale;
                }
            }
        }
        
        if (ds_list_size(spawnedInstances) == 0)
            instance_destroy();
    }
    else if (instance_number(maxInstanceParent) >= maxInstances || !global.go)
    {
        if (!(preciseSpawns && timer > 1))
            timer = interval;
    }
    else
    {
        timer -= 1;
        
        if (timer <= 0)
        {
            var _spawnPoint = undefined;
            var _spawnObject = enemy;
            
            if (preciseSpawns)
            {
                for (i = 0; i < array_length(spawnPoints); i++)
                {
                    if (spawnPoints[i].spawnPointID == spawnOrder[currentSpawnIndex][0])
                    {
                        _spawnPoint = spawnPoints[i];
                        break;
                    }
                }
                
                if (array_length(spawnOrder[currentSpawnIndex]) > 2)
                    _spawnObject = spawnOrder[currentSpawnIndex][2];
                
                if (spawn_point_occupied(_spawnPoint, _spawnObject))
                    exit;
                
                currentSpawnIndex++;
                
                if (currentSpawnIndex >= array_length(spawnOrder))
                    finishedSpawning = 1;
                else if (array_length(spawnOrder[currentSpawnIndex]) > 1)
                    timer = spawnOrder[currentSpawnIndex][1];
                else
                    timer = interval;
            }
            else
            {
                if (roundRobin)
                {
                    _spawnPoint = spawnPoints[currentSpawnIndex];
                    
                    if (spawn_point_occupied(_spawnPoint, _spawnObject))
                        exit;
                    
                    currentSpawnIndex = wrap(currentSpawnIndex + 1, 0, array_length(spawnPoints) - 1);
                }
                else
                {
                    _spawnPoint = array_choose_random(spawnPoints);
                    
                    if (spawn_point_occupied(_spawnPoint, _spawnObject))
                        exit;
                }
                
                timer = interval;
            }
            
            var _inst = instance_create_depth(_spawnPoint.x, _spawnPoint.y, _spawnPoint.depth, _spawnObject);
            ds_list_add(spawnedInstances, _inst);
            audio_stop_sound(snd_enemyspawn);
            audio_play_sound(snd_enemyspawn, 1, false);
            _inst.onSpawn(_spawnPoint);
        }
    }
}
