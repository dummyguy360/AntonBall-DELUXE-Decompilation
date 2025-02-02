instance_activate_all();
audio_stop_all();

if (global.classic_stage)
    room_goto(rm_l1);
else if (global.punchball_stage)
    room_goto(rm_pb_l1);
else if (global.vs_stage)
    room_goto(rm_sewerslam);
