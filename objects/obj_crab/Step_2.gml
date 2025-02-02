xpos = x;
ypos = y;
xcounter += hsp;
ycounter += vsp;
var h = round(xcounter);
var v = round(ycounter);
xcounter -= h;
ycounter -= v;

if (!position_meeting(x - 7, y + 1, obj_block) || (!position_meeting(x + 7, y + 1, obj_block) && !turning))
    turning = 1;

repeat (abs(h))
{
    if (place_meeting(x + sign(h), y, obj_block))
    {
        hsp = 0;
        turning = 1;
        break;
    }
    else
    {
        x += sign(h);
    }
}
