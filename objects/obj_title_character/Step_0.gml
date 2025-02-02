if (!obj_title_cutscene.startup)
{
    x = lerp(x, targetX, moveSpeed);
    y = wave(baseY - bobAmount, baseY + bobAmount, bobDuration, bobOffset);
}
