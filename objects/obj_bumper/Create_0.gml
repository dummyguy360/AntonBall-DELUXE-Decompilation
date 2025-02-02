animation_init();
hsp = 0;
vsp = 0;
xcounter = 0;
ycounter = 0;
facing = 1;
framespeed = 0;
hits = 0;
currentstate = 0;
alarm[0] = 5;
alarm[1] = -1;

if (global.vs_stage)
    alarm[2] = 1800;
