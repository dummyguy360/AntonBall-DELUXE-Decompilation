if (currentThresholdIndex > 0)
{
    var _barrierWidth = incrementAmount * currentThresholdIndex;
    var _drawRect = new rect(backWallX - _barrierWidth, topWallY, _barrierWidth, barrierDrawHeight);
    draw_sprite_tiled_rect(908, 0, _drawRect);
}
