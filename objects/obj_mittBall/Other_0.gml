if (instance_exists(myPunchBall))
{
    myPunchBall.x = myPunchBall.my_player.x;
    myPunchBall.y = myPunchBall.my_player.y;
}

event_inherited();
