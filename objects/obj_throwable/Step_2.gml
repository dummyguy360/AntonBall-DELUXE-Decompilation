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
    if (object_index == obj_trashcan && b_thrown)
    {
        x += h;
        y += v;
    }
    else
    {
        repeat (abs(v))
        {
            if (vsp <= 0)
            {
                if (currentstate != 2 && place_meeting(x, y + sign(v), obj_block))
                {
                    vsp = 0;
                    break;
                }
                else
                {
                    y += sign(v);
                }
            }
            else if (currentstate != 2 && (check_below() || check_below_passthrough() || place_meeting(x, y + sign(v), obj_throwable)))
            {
                vsp = 0;
                break;
            }
            
            y += sign(v);
        }
        
        repeat (abs(h))
        {
            if (place_meeting(x + sign(h), y, obj_block) && !place_meeting(x + sign(h), y - 1, obj_block))
                y--;
            
            if (!place_meeting(x + sign(h), y, obj_block) && !place_meeting(x + sign(h), y + 1, obj_block) && place_meeting(x + sign(h), y + 2, obj_block))
                y++;
            
            if (currentstate != 2 && (place_meeting(x + sign(h), y, obj_block) || place_meeting(x + sign(h), y, obj_throwable)))
            {
                hsp = 0;
                break;
            }
            
            if (!carried && !b_thrown && place_meeting(x + sign(h), y, obj_player))
            {
                hsp = 0;
                break;
            }
            
            x += sign(h);
        }
    }
}
