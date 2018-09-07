var o,xx,yy;

xx = WeaponXPosition+lengthdir_x(12,argument0);
yy = WeaponYPosition+lengthdir_y(12,argument0);

if (Charger >= 60) Heat += Heating*4;
else Heat += Heating;

with(instance_create(xx,yy,oProjectile))
{
    Charger = other.Charger;
    direction = argument0+random_range(other.WeaponAccuracy*-1,other.WeaponAccuracy);
    image_angle = direction;
    scDefineProjectile(argument1);
}
