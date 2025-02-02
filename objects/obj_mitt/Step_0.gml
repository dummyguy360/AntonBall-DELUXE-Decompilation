event_inherited();

if (heldPunchball != -4)
{
    waveTimer -= 1;
    
    if (waveTimer == sprite_get_duration(139))
        image_index = 0;
    
    if (waveTimer > sprite_get_duration(139))
        sprite_index = spr_mitt_wave;
    else if (sprite_index == spr_mitt_wave)
        sprite_index = spr_mitt_throw;
    
    if (waveTimer <= 0)
    {
        var _mittBall = instance_create_depth(x, y, depth, obj_mittBall);
        _mittBall.image_xscale = image_xscale;
        _mittBall.myPunchBall = heldPunchball;
        heldPunchball = -4;
        currentlyMoving = 1;
    }
}
