xpos = x;
ypos = y;
xcounter += hsp;
ycounter += vsp;
var h = round(xcounter);
var v = round(ycounter);
xcounter -= h;
ycounter -= v;

repeat (abs(v))
{
    if (instance_place(x, y + vsp, obj_block))
    {
        if (bounce == 2)
        {
            vsp = -3;
            bounce = 1;
        }
        else if (bounce == 1)
        {
            vsp = -2;
            bounce = 0;
        }
        else
        {
            vsp = 0;
        }
        
        break;
    }
    else
    {
        y += sign(v);
    }
}

repeat (abs(h))
{
    if (place_meeting(x + sign(h), y, obj_block))
    {
        hsp = 0;
        break;
    }
    else
    {
        x += sign(h);
    }
}
