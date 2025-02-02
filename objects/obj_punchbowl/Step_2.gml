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
    if ((check_below() || check_below_passthrough()) && !currentstate == 1)
    {
        vsp = 0;
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
