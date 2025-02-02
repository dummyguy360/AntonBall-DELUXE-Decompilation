audio_stop_all();

switch (global.cutscene)
{
    case 1:
        room_goto(global.tutorialEnabled ? rm_tutorial_1 : rm_l1);
        break;
    
    case 2:
        global.next_room = 118;
        room_goto(rm_credits);
        break;
    
    case 3:
        room_goto(rm_pb_l1);
        break;
    
    case 4:
        global.next_room = 121;
        room_goto(rm_credits);
        break;
}

global.cutscene = 0;
instance_destroy();
