audio_stop_all();
instance_destroy(obj_cutscene_skipper);
global.cutscene = 0;
room_goto(rm_pb_l1);
