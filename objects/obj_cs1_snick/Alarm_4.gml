audio_stop_all();
instance_destroy(obj_cutscene_skipper);
global.cutscene = 0;
room_goto(global.tutorialEnabled ? rm_tutorial_1 : rm_l1);
