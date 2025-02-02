if (carried == 0 && carrieable == 1 && !other.b_holding && !lethal)
{
    bounce = 0;
    carried = 1;
    carrieable = 0;
    audio_play_sound(snd_punchball_pickup, 1, false);
    other.b_holding = 1;
    carrying_player = other;
}
