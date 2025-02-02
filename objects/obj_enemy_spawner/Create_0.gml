startTime = default_val(startTime, interval);
timer = startTime;
finishedSpawning = 0;
spawnedInstances = ds_list_create();
currentSpawnIndex = 0;
facing = sign((room_width / 2) - x);
dropDown = 0;
spawnPointID = -1;
