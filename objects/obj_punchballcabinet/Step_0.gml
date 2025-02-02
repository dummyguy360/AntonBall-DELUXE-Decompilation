var player = instance_place(x, y, obj_player);

if (instance_place(x, y, obj_player))
{
    if (player.currentstate != UnknownEnum.Value_11)
    {
        b_infront = 1;
        
        if (player.up)
        {
            alarm[1] = 180;
            audio_play_sound(snd_select, 1, false);
            instance_create_depth(x, y, -100, obj_level_transition_exit);
            b_infront = 0;
            flash = 0;
            player.facing = 1;
            player.x = x + 3;
            player.y = y + 23;
            player.currentstate = UnknownEnum.Value_11;
            global.next_room = 59;
        }
    }
}
else
{
    b_infront = 0;
    flash = 0;
}
