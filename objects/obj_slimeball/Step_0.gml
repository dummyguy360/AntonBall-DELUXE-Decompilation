event_inherited();

if (age < maxSpawnTime)
{
    sprite_index = spawnSprite;
    attacking = 0;
}
else
{
    sprite_index = defaultSprite;
    attacking = 1;
    fallSpeed += grav;
    y += fallSpeed;
}
