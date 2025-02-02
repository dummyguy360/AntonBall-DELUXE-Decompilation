draw_self();
var _gunSprite = spr_tankgun;

if (sprite_index == spr_tankbod_hurt)
    _gunSprite = spr_tankgun_hurt;

draw_sprite_ext(_gunSprite, image_index, x, y, 1, 1, aimDir + 180, c_white, 1);
