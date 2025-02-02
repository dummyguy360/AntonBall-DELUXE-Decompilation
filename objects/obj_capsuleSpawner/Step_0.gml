if (!place_meeting(x, y, obj_capsule))
{
    var _capsule = instance_create_depth(x, y, 0, obj_capsule);
    _capsule.image_index = image_index;
    _capsule.rollIndex = rollIndex;
    instance_destroy();
}
