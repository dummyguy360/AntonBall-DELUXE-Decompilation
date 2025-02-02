event_inherited();

if (moveSpeed.y == 0)
    slideTimer -= 1;

if (slideTimer <= 0)
{
    if (instance_exists(myPunchBall))
    {
        myPunchBall.x = x;
        myPunchBall.y = y;
    }
    else
    {
        corpseSprite = spr_baseball_break;
    }
    
    kill(image_xscale);
}
