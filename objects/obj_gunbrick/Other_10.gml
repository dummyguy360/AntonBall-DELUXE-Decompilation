if (!broken)
{
    var player;
    
    if (obj_ball.lastplayer == -4)
        player = instance_find(obj_player, 0);
    else
        player = obj_ball.lastplayer;
    
    powerup_gun(player);
}

event_inherited();
