var _nearestPlayer = instance_nearest(x, y, obj_player);

if (_nearestPlayer != -4 && point_distance(x, y, _nearestPlayer.x, _nearestPlayer.y) < playerDetectionRange)
{
    if (sprite_index == defaultSprite)
        sprite_index = spr_snail_sliming;
    
    var _blockBelow = instance_place(x, y + 1, obj_bouncyblock);
    
    if (_blockBelow != -4)
    {
        var _slimeBlock = instance_create_depth(_blockBelow.x, _blockBelow.y, _blockBelow.depth, obj_slime_block);
        
        with (_slimeBlock)
        {
            baseSprite = _blockBelow.sprite_index;
            sprite_index = other.slimeBlockAnimations[other.currentSlimeBlockAnimation];
        }
        
        instance_destroy(_blockBelow);
        currentSlimeBlockAnimation = wrap(currentSlimeBlockAnimation + 1, 0, array_length(slimeBlockAnimations) - 1);
    }
}
else if (sprite_index == spr_snail_sliming)
{
    sprite_index = defaultSprite;
}

event_inherited();
