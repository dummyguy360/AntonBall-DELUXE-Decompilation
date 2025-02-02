event_inherited();

if (age >= maxSpawnTime)
{
    if (walkSpeed > 0)
    {
        walkSpeed = 0;
        moveSpeed.x = 0;
    }
    
    if (currentlyMoving)
    {
        if (jumpTimer >= jumpPause)
        {
            moveSpeed.x = jumpStrength.x * image_xscale;
            moveSpeed.y = -jumpStrength.y;
            jumpTimer = 0;
            sprite_index = spr_frog_jump;
        }
        else if (moveSpeed.y == 0)
        {
            jumpTimer += 1;
            
            if (jumpTimer > 1)
            {
                moveSpeed.x = 0;
                sprite_index = spr_frog;
                
                if (jumpTimer >= (jumpPause - jumpSquat))
                    image_index = 1;
                else
                    image_index = 0;
            }
        }
    }
    else
    {
        jumpTimer = 0;
    }
}
else
{
    walkSpeed = 0.25;
}
