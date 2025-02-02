event_inherited();
lethal = 0;

if (instance_exists(obj_player))
    x = instance_find(obj_player, irandom(instance_number(obj_player) - 1)).x;
else
    instance_destroy();

y = 29;
bananaTime = 60;
idleTime = 40;
bananaThrown = 0;
actionTimer = bananaTime;
