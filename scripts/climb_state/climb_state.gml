function climb_state()
{
    if (up && instance_place(x, y - 1, obj_ladder))
        vsp = -1;
    
    if (down && instance_place(x, y + 1, obj_ladder))
        vsp = 1;
    
    if (!up && !down)
        vsp = 0;
    
    if (up && !position_meeting(x, y - 1, obj_ladder))
    {
        b_on_ground = 1;
        currentstate = UnknownEnum.Value_0;
    }
    
    if (down && !position_meeting(x, y + 1, obj_ladder))
    {
        b_on_ground = 1;
        currentstate = UnknownEnum.Value_0;
    }
    
    if (key_jump)
        currentstate = UnknownEnum.Value_0;
}
