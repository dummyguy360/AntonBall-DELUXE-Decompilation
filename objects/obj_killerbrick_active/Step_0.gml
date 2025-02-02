hsp += acceleration;
hsp = clamp(hsp, -maxSpeed, maxSpeed);
x += hsp;

if (global.win)
    instance_destroy(self);
