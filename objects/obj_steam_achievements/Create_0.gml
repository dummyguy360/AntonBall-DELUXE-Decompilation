achievementQueue = ds_queue_create();

setAchievement = function(argument0)
{
    ds_queue_enqueue(achievementQueue, argument0);
};

noDeaths = 1;
