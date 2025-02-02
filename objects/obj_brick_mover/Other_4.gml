backBarrier = instance_nearest(room_width, 0, obj_barrier);
backWallX = backBarrier.bbox_left;
var _topBarrier = instance_nearest(0, 0, obj_barrier);
var _bottomBarrier = instance_nearest(0, room_height, obj_barrier);
topWallY = _topBarrier.y + 4;
barrierDrawHeight = _bottomBarrier.bbox_top - topWallY;
