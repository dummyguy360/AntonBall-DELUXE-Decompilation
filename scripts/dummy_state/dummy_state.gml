function dummy_state()
{
    hsp = 0;
    vsp = 0;
    gsp = 0;
    
    if (global.go)
        currentstate = UnknownEnum.Value_0;
    
    if (instance_exists(obj_dialoguebox))
        currentstate = UnknownEnum.Value_0;
}
