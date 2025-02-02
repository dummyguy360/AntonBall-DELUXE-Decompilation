if (exploded)
    exit;

if (global.win)
{
    explode();
    exit;
}

switch (currentState)
{
    case UnknownEnum.Value_0:
        if (instance_number(obj_brickparent) <= brickThreshold)
        {
            if (y == startY)
                audio_play_sound(snd_fall, 0, false);
            
            if (y >= targetY && collision_check(vsp, 131))
            {
                currentState = UnknownEnum.Value_1;
            }
            else
            {
                vsp.y = min(vsp.y + grav, 4);
                y += vsp.y;
            }
        }
        
        break;
    
    case UnknownEnum.Value_1:
        if (obj_player.hsp > 0 && obj_player.currentstate == UnknownEnum.Value_4 && place_meeting(x, y, obj_player))
        {
            currentState = UnknownEnum.Value_2;
            nearestBrick = instance_nearest(200, 72, obj_brickparent);
            
            if (nearestBrick == -4)
            {
                explode();
                exit;
            }
            
            direction = point_direction(x, y, nearestBrick.x, nearestBrick.y);
            speed = reflectSpeed;
        }
        
        break;
    
    case UnknownEnum.Value_2:
        if (place_meeting(x, y, obj_brickparent) || x > 222 || y < 22 || y > 120)
        {
            with (obj_brickparent)
            {
                create_sprite_effect(x + (sprite_width / 2), y + (sprite_height / 2), 58);
                instance_destroy();
            }
            
            obj_controller.shake = 1;
            obj_controller.shakeDur = 5;
            obj_controller.shakeForce = 4;
            instance_create_layer(0, 0, "System", obj_transition_fadeinw);
            global.points_p1 = max(global.points_p1 - usePenalty, 0);
            part_particles_create(global.p_system, 200, 72, global.particle_n10000, 1);
        }
        
        break;
}
