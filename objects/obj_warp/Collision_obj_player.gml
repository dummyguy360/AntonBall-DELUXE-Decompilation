if (global.punchball_stage)
    other.x = targetx;

if (global.adventure_stage)
{
    if (room == rm_tutorial_6)
        audio_stop_all();
    
    room_goto_next();
}
