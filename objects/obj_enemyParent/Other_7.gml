switch (sprite_index)
{
    case stunSprites[currentStunSprite][0]:
        var _nextSprite = currentStunSprite + 1;
        
        if (_nextSprite >= array_length(stunSprites))
        {
            currentStunSprite = spr_danton_clutch;
            sprite_index = defaultSprite;
        }
        else if (array_length(stunSprites[_nextSprite]) <= 1 || stunRecoveryTimer < stunSprites[_nextSprite][1])
        {
            sprite_index = stunSprites[_nextSprite][0];
            currentStunSprite = _nextSprite;
        }
        
        break;
    
    case spawnSprite:
        sprite_index = defaultSprite;
        break;
}
