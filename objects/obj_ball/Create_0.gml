if (room != rm_l30)
    depth = -10000;

if (object_index == obj_ball)
{
    speed = 0;
    momentum = 0;
    global.launched = 0;
    lastplayer = 138;
    isdupe = 0;
    
    if (global.classic_stage == 1 && !global.go)
        alarm[4] = 300;
    else
        alarm[4] = -1;
    
    xpos = 0;
    ypos = 0;
    xcounter = 0;
    ycounter = 0;
    hsp = 0;
    vsp = 0;
}
else
{
    global.ball_oob = 0;
    speed = 1.5;
    momentum = 1.5;
    firsthit = 1;
    lastplayer = obj_ball.lastplayer;
    isdupe = 1;
    combo = 0;
    
    if (global.vs_stage)
        alarm[5] = 1200;
}

alarm[1] = 5;
hit = 0;
firsthit = 0;
spiked = 0;
spikecounter = 0;
ballcounter = 0;
maxBallCounter = 6;
defaultBallBuffer = 45;
ballbuffer = defaultBallBuffer;
randomDirectionSpread = 70;
doubleCollision = 0;
mercyTime = 600;
mercyTimer = 0;
mercyRange = 20;
currentstate = 0;
stuckTime = 45;
stuckTimer = 0;

if (room == rm_dotmatrix)
{
    sprite_index = spr_classicball;
    global.balltrails = 0;
}
else
{
    if (global.bonus_stage)
        sprite_index = spr_goldenball;
    else
        sprite_index = spr_ball;
    
    global.balltrails = 1;
}

if (instance_exists(obj_tankboss))
    visible = false;
