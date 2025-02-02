deal_damage = function(argument0)
{
    if (currentstate != UnknownEnum.Value_3 && currentstate != UnknownEnum.Value_12 && global.go && !b_ishurt)
    {
        b_ishurt = 1;
        alarm[1] = 15;
        alarm[5] = 60;
        flash = 1;
        currentstate = UnknownEnum.Value_7;
        hsp = argument0;
        vsp = -2.5;
        
        if (voicetimer < 1)
        {
            voicetimer = voicetimermax;
            audio_play_sound(choose(voice_hurt1, voice_hurt2, voice_hurt3, -4), 1, false);
        }
    }
};

kill = function()
{
    if (currentstate != UnknownEnum.Value_3 && currentstate != UnknownEnum.Value_12 && global.go && !b_ishurt)
    {
        if (global.classic_stage)
        {
            global.go = 0;
            global.ball_oob = 1;
        }
        
        currentstate = UnknownEnum.Value_3;
        
        if (!dead)
        {
            alarm_set(6, 60);
            deadfloat = 1;
            dead = 1;
        }
        
        audio_stop_sound(snd_flatten);
        audio_play_sound(snd_flatten, 100, false);
        instance_destroy(obj_ball);
        obj_steam_achievements.noDeaths = 0;
    }
};

left = 0;
right = 0;
up = 0;
down = 0;
select = 0;
bumper_l = 0;
bumper_r = 0;
hsp = 0;
vsp = 0;
xcounter = 0;
ycounter = 0;
playerData = undefined;
palette = 553;
portrait = 249;
mug = 156;
playername = "ANTON";
bfasp = 0.15;
bfdsp = 0.2;
bfmsp = 0.8;
groundasp = 0.1;
grounddsp = 0.2;
groundmsp = 1.25;
s_asp = 0.2;
s_dsp = 0.25;
s_msp = 1;
asp = groundasp;
dsp = grounddsp;
msp = groundmsp;
jpower = -3.8;
bfpower = -4.8;
gsp = 0.25;
maxfall = 5;
maxfall_g = 5;
maxfall_s = 2;
b_backflipped = 0;
b_candash = 0;
b_jumped = 0;
b_on_ground = 1;
b_touched_ground = 0;
buffer_counter = 0;
buffer_max = 10;
coyote_counter = 6;
coyote_max = 6;
backflip_counter = 0;
backflip_max = 10;
dashtimer = 0;
candash_counter = 0;
candash_max = 30;
flash = 0;
flashtimer = 0;
dashinvuln = 0;
dashinvuln_timer = 0;
dashinvuln_max = 15;
b_turning = 0;
b_holding = 0;
b_ispickingup = 0;
itemcarried = 0;
throwable_id = -4;
colliding_item_id = -4;
b_underwater = 0;
b_ishurt = 0;
b_hasgun = 0;
guntimer = 0;
guntimermax = 15;
gunammo = 0;
ghostpoweruptimer = 0;
ghostintervaltimer = 0;
ghostinterval = 30;
ghostduration = 180;
ghostpowerupduration = 600;
currentstate = 0;
ancillarystate = 0;
dead = 0;
deadfloat = 0;

if (global.classic_stage)
{
    b_ishurt = 1;
    alarm[5] = 120;
}
else if (global.punchball_stage)
{
    b_ishurt = 1;
    alarm[5] = 180;
}

combo = 0;
combotimer = 0;
combotimermax = 60;
character_index = 1;
voicetimer = 0;
voicetimermax = 180;
event_user(1);
animation_init();
facing = 1;
voice_hurt1 = 12;
voice_hurt2 = 12;
voice_hurt3 = 12;
voice_yay1 = 12;
voice_yay2 = 12;
voice_yay3 = 12;
