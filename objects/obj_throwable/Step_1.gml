if (carried)
{
    if (player_id != -4)
    {
        if (player_id.currentstate == UnknownEnum.Value_6)
            move_towards_point(player_id.x, player_id.y - 15, 1.5);
        else
            speed = 0;
        
        if (player_id.currentstate == UnknownEnum.Value_0 && (player_id.vsp != 0 || player_id.hsp != 0))
        {
            x = player_id.x;
            y = player_id.y - 15;
        }
        
        hsp = 0;
        vsp = 0;
    }
}
