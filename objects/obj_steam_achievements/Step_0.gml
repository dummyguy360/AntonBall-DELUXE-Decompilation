if (!(steam_initialised() && steam_stats_ready()))
    exit;

while (ds_queue_size(achievementQueue) > 0)
    steam_set_achievement(ds_queue_dequeue(achievementQueue));
