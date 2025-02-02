animation_control();
frame_reset();
var throwable_id_above = instance_place(x, y + 15, obj_throwable);
xpos = x;
ypos = y;
xcounter += hsp;
ycounter += vsp;
var h = int64(xcounter);
var v = int64(ycounter);
xcounter -= h;
ycounter -= v;

repeat (abs(h))
{
    if ((place_meeting(x + sign(h), y, obj_block) && !place_meeting(x + sign(h), y - 1, obj_block)) && !dead)
        y--;
    
    if ((!place_meeting(x + sign(h), y, obj_block) && !place_meeting(x + sign(h), y + 1, obj_block) && place_meeting(x + sign(h), y + 2, obj_block)) && !dead)
        y++;
    
    if (place_meeting(x + sign(h), y, obj_block) && !dead)
    {
        hsp = 0;
        break;
    }
    else
    {
        x += sign(h);
    }
}

repeat (abs(v))
{
    if (vsp <= 0)
    {
        if (!dead && place_meeting(x, y + sign(v), obj_block))
        {
            vsp = 0;
            break;
        }
        else
        {
            y += sign(v);
        }
    }
    else if (!dead && (check_below() || check_below_passthrough() || check_below_throwable()))
    {
        vsp = 0;
        break;
    }
    else
    {
        y += sign(v);
    }
}

if (place_meeting(x, y, obj_bouncyblock) && !dead)
{
    while (place_meeting(x, y, obj_bouncyblock))
        y -= 1;
    
    y -= 3;
}

if (instance_place(x, y, obj_block) && !dead && currentstate != UnknownEnum.Value_12)
{
    var pdir = point_direction(other.x * -1, other.y * -1, x, y);
    move_outside_all(pdir, 1);
}
