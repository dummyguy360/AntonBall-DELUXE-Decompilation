xpos = x;
ypos = y;
xcounter += hsp;
ycounter += vsp;
var h = round(xcounter);
var v = round(ycounter);
xcounter -= h;
ycounter -= v;

if (!carried)
{
    repeat (abs(v))
    {
        if (vsp <= 0)
        {
            if (place_meeting(x, y + sign(v), obj_block))
            {
                vsp = 0;
                break;
            }
            else
            {
                y += sign(v);
            }
        }
        else if (check_below() || check_below_passthrough())
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
}
