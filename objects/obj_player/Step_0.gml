frame_counter();

switch (currentstate)
{
    case UnknownEnum.Value_0:
        normal_state();
        break;
    
    case UnknownEnum.Value_1:
        crouch_state();
        break;
    
    case UnknownEnum.Value_2:
        attack_state();
        break;
    
    case UnknownEnum.Value_3:
        death_state();
        break;
    
    case UnknownEnum.Value_4:
        dash_state();
        break;
    
    case UnknownEnum.Value_5:
        climb_state();
        break;
    
    case UnknownEnum.Value_7:
        hurt_state();
        break;
    
    case UnknownEnum.Value_10:
        dummy_state();
        break;
    
    case UnknownEnum.Value_11:
        playing_state();
        break;
    
    case UnknownEnum.Value_8:
        win_state();
        break;
    
    case UnknownEnum.Value_9:
        lose_state();
        break;
    
    case UnknownEnum.Value_12:
        classicwin_state();
        break;
}

if (instance_exists(obj_dialoguebox))
    currentstate = UnknownEnum.Value_10;

if (global.go == 0)
    currentstate = UnknownEnum.Value_10;

if (b_holding == 1)
    ancillarystate = 2;

if (b_hasgun == 1)
    ancillarystate = 1;
else if (!b_holding && !b_hasgun)
    ancillarystate = 0;

if (backflip_counter >= 1)
    backflip_counter -= 1;

if (currentstate == UnknownEnum.Value_4)
    dashtimer -= 1;

if (dashtimer < 0)
    dashtimer = 0;

if (b_touched_ground == 1 && candash_counter > 0)
    candash_counter -= 1;

if (instance_place(x, y, obj_throwable))
    colliding_item_id = other;
else
    colliding_item_id = -4;

if (key_attack && b_holding)
    b_holding = 0;

if (combotimer > 0)
{
    combotimer -= 1;
}
else if (combotimer == 0)
{
    combo = 0;
    combotimer = 0;
}

if (position_meeting(x, y - 8, obj_water))
{
    if (b_underwater == 0)
    {
        if (vsp > 2)
            audio_play_sound(snd_splash, 1, false);
    }
    
    b_underwater = 1;
}
else
{
    b_underwater = 0;
}

if (guntimer > 0)
    guntimer -= 1;

if (gunammo <= 0)
    b_hasgun = 0;

if (ghostpoweruptimer > 0)
{
    ghostintervaltimer -= 1;
    
    if (ghostintervaltimer <= 0)
    {
        var ghost = instance_create_depth(x, y, depth, obj_player_ghost);
        ghost.sprite_index = object_get_sprite(object_index);
        ghost.creator = self;
        ghost.team = team;
        ghost.alarm[0] = ghostduration;
        ghostintervaltimer = ghostinterval;
    }
    
    ghostpoweruptimer -= 1;
    
    if (ghostpoweruptimer <= 0)
        ghostintervaltimer = 0;
}

if (flash == 0)
    alpha = 1;

if (flash == 1)
    alpha = 0;

if (b_ishurt == 1)
{
    if (flashtimer < 1)
    {
        if (flash == 1)
            flash = 0;
        else if (flash == 0)
            flash = 1;
        
        flashtimer = 3;
    }
    
    if (flashtimer != 0)
        flashtimer += -1;
}
else
{
    flash = 0;
}

if (dashinvuln_timer > 0)
    dashinvuln_timer -= 1;

if (dashinvuln_timer == 0)
    dashinvuln = 0;

if (voicetimer > 0)
    voicetimer -= 1;
else
    voicetimer = 0;

if (global.classic_stage == 1)
{
    if (!instance_exists(obj_brickparent))
    {
        if (currentstate != UnknownEnum.Value_12)
        {
            audio_stop_all();
            audio_play_sound(mus_levelcomplete, 1, false);
            alarm_set(9, 160);
            currentstate = UnknownEnum.Value_12;
        }
    }
    
    if (global.go == 0)
        currentstate = UnknownEnum.Value_10;
    
    if (global.win == 0)
    {
        if (global.ball_oob == 1)
        {
            instance_destroy(obj_ball);
            currentstate = UnknownEnum.Value_3;
            
            if (!dead)
            {
                alarm_set(6, 60);
                deadfloat = 1;
                dead = 1;
            }
        }
    }
}

if (global.punchball_stage == 1)
{
    if (global.win)
    {
        if (currentstate != UnknownEnum.Value_12)
        {
            audio_stop_all();
            audio_play_sound(snd_hit, 1, false);
            audio_play_sound(mus_levelcomplete, 1, false);
            alarm_set(9, 160);
            currentstate = UnknownEnum.Value_12;
        }
    }
    
    if (global.go == 0)
        currentstate = UnknownEnum.Value_10;
}
