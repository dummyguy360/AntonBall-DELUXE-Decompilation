xpos = x;
ypos = y;
xcounter += hsp;
ycounter += vsp;
var h = int64(xcounter);
var v = int64(ycounter);
xcounter -= h;
ycounter -= v;

if (place_meeting(x, y + vsp, obj_barrier))
{
    if (spikecounter > 0)
        spikecounter -= 1;
    
    vsp *= -1;
}
else
{
    y += vsp;
}

if (place_meeting(x + hsp, y, obj_barrier))
{
    if (spikecounter > 0)
        spikecounter -= 1;
    
    hsp *= -1;
}
else
{
    x += hsp;
}
