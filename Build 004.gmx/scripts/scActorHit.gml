if (enemy = 1) // If the actor running this script is an enemy...
{
    if (other.playerweapon = 1)
    and (other.sprite_index != sprBallBomb)
    and (other.sprite_index != sprPowerBomb) scDamageEnemy();    
}
