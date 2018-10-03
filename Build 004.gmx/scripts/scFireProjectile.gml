// Runs within oPlayer.
// Get data about the projectile, and create it.
// argument0 = Aiming direction of the player when firing.
// argument1 = WeaponProjectile. Defined by enums in scDefineWeapon.
var xx = WeaponXPosition+lengthdir_x(13,argument0); // Determine where we spawn the projectile from,
var yy = WeaponYPosition+lengthdir_y(13,argument0); //   in relation to the arm cannon.
if (Charger >= 60) Heat += Heating*4; // Increase heat if using the Plasma Beam.
else Heat += Heating; // Increase heat by less if the shot is not from the Charge Beam.

if (HoldingWeaponId = Weapons.wWaveBeam) // Specific behavior for Wave Beam.
{
    sound_play(BeamWave);
    for (var i = 0; i < 2; i += 1;) // Create 2 projectiles, one for each side.
    {
        with (instance_create(xx,yy,oProjectile))
        {
            Charger = other.Charger; // Inherit charge level from Charge Beam.
            direction = argument0; // Fires "straight".
            image_angle = direction;
            scDefineProjectile(argument1);
            t = 0;
            SwingPositive = i;
        }
    }
    with (instance_create(xx,yy,oDestroyAnim))
        { sprite_index = sprBeamFire1; image_blend = c_purple; image_speed = .5; }
}
else if (HoldingWeaponId = Weapons.wSpazerBeam) // Specific behavior for Spazer Beam.
{
    sound_play(BeamSpazer);
    for (var i = 0; i < 3; i += 1;)
    {
        with (instance_create(xx,yy,oProjectile))
        {
            Charger = other.Charger;
            direction = argument0;
            image_angle = direction;
            scDefineProjectile(argument1);
            side = i; // 0 = left, 1 = middle, 2 = right projectile.
        }
    }
    with (instance_create(xx,yy,oDestroyAnim))
        { sprite_index = sprBeamFire1; image_blend = c_lime; image_speed = .5; }
}
else with (instance_create(xx,yy,oProjectile)) // Behavior for all other projectiles.
{
    Charger = other.Charger;
    direction = argument0+random_range(other.WeaponAccuracy*-1,other.WeaponAccuracy);
    image_angle = direction;
    scDefineProjectile(argument1);
}
