var _ct = current_time;

with (obj_mitt)
{
    if (heldPunchball == other.id)
    {
        show_debug_message("EXIT ATTEMPT " + string(_ct));
        exit;
    }
}

with (obj_mittBall)
{
    if (myPunchBall == other.id)
        exit;
}

show_debug_message("WARPING " + string(_ct));
x = my_player.x;
y = my_player.y;
