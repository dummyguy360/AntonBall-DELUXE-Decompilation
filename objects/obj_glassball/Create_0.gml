part_particles_create(global.p_system, x + 3, y, global.particle_bullet, 1);
speed = 0;
momentum = 0;
global.launched = 0;
lastplayer = 138;
isdupe = 0;
glassball_emit = self;

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
alarm[1] = 5;
hit = 0;
firsthit = 0;
spiked = 0;
spikecounter = 0;
ballcounter = 0;
maxBallCounter = 6;
defaultBallBuffer = 30;
ballbuffer = defaultBallBuffer;
randomDirectionSpread = 70;
doubleCollision = 0;
mercyTime = 600;
mercyTimer = 0;
mercyRange = 15;
currentstate = 0;
sprite_index = spr_glassball;
global.options.ballTrails = 1;
