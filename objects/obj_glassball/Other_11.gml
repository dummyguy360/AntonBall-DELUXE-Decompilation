var inst = instance_place(x + hspeed, y + vspeed, obj_brickparent);

if (inst != -4)
{
    if (!inst.broken)
    {
        if (currentstate != 2)
        {
            var dir = point_direction(0, 0, hspeed, vspeed);
            
            repeat (ceil(abs(speed)))
            {
                if (!place_meeting(x + lengthdir_x(1, dir), y + lengthdir_y(1, dir), obj_brickparent))
                {
                    x += lengthdir_x(1, dir);
                    y += lengthdir_y(1, dir);
                }
                else
                {
                    inst = instance_place(x + lengthdir_x(1, dir), y + lengthdir_y(1, dir), obj_brickparent);
                    
                    if (!inst.bonusbrick)
                    {
                        if (place_meeting(x + lengthdir_x(1, dir), y, inst))
                            hspeed *= -1;
                        
                        if (place_meeting(x, y + lengthdir_y(1, dir), inst))
                            vspeed *= -1;
                        
                        global.combo += 1;
                        global.combox = 2.5;
                        global.comboy = 2.5;
                        
                        if (global.combo == 5)
                        {
                            with (instance_create_depth(x, y, layer, obj_pointmarker))
                                image_index = 0;
                            
                            global.points_p1 += 1600;
                            audio_stop_sound(snd_bonus);
                            audio_play_sound(snd_bonus, 1, false);
                            
                            if (lastplayer.voicetimer == 0)
                            {
                                if (!audio_is_playing(lastplayer.voice_yay1) || !audio_is_playing(lastplayer.voice_yay2))
                                {
                                    lastplayer.voicetimer = lastplayer.voicetimermax;
                                    audio_play_sound(choose(lastplayer.voice_yay1, lastplayer.voice_yay2), 1, false);
                                }
                            }
                        }
                        else if (global.combo == 10)
                        {
                            with (instance_create_depth(x, y, layer, obj_pointmarker))
                                image_index = 1;
                            
                            global.points_p1 += 2400;
                            audio_stop_sound(snd_bonus);
                            audio_play_sound(snd_bonus, 1, false);
                            
                            if (lastplayer.voicetimer == 0)
                            {
                                if (!audio_is_playing(lastplayer.voice_yay1) || !audio_is_playing(lastplayer.voice_yay2))
                                {
                                    lastplayer.voicetimer = lastplayer.voicetimermax;
                                    audio_play_sound(choose(lastplayer.voice_yay1, lastplayer.voice_yay2), 1, false);
                                }
                            }
                        }
                        else if (global.combo == 15)
                        {
                            with (instance_create_depth(x, y, layer, obj_pointmarker))
                                image_index = 2;
                            
                            global.points_p1 += 3200;
                            audio_stop_sound(snd_bonus);
                            audio_play_sound(snd_bonus, 1, false);
                            
                            if (lastplayer.voicetimer == 0)
                            {
                                if (!audio_is_playing(lastplayer.voice_yay1) || !audio_is_playing(lastplayer.voice_yay2))
                                {
                                    lastplayer.voicetimer = lastplayer.voicetimermax;
                                    audio_play_sound(choose(lastplayer.voice_yay1, lastplayer.voice_yay2), 1, false);
                                }
                            }
                        }
                        else if (global.combo == 20)
                        {
                            with (instance_create_depth(x, y, layer, obj_pointmarker))
                                image_index = 3;
                            
                            global.points_p1 += 4800;
                            audio_stop_sound(snd_bonus);
                            audio_play_sound(snd_bonus, 1, false);
                            
                            if (lastplayer.voicetimer == 0)
                            {
                                if (!audio_is_playing(lastplayer.voice_yay1) || !audio_is_playing(lastplayer.voice_yay2))
                                {
                                    lastplayer.voicetimer = lastplayer.voicetimermax;
                                    audio_play_sound(choose(lastplayer.voice_yay1, lastplayer.voice_yay2), 1, false);
                                }
                            }
                        }
                        
                        alarm[3] = 90;
                    }
                    
                    break;
                }
            }
        }
        
        inst.killingball = id;
        
        with (inst)
            event_user(0);
        
        ballbuffer = 0;
        ballcounter = 0;
        global.ballhits += 1;
        hit = 0;
        mercyTimer = 0;
        audio_play_sound(snd_breakpunch, 1, false);
        part_particles_create(global.p_system, x + 3, y, global.particle_glassshard, 1);
        part_particles_create(global.p_system, x + 1, y + 1, global.particle_glassshard, 1);
        part_particles_create(global.p_system, x - 1, y - 1, global.particle_glassshard, 1);
        part_particles_create(global.p_system, x, y - 2, global.particle_glassshard, 1);
        instance_destroy(self);
    }
}
