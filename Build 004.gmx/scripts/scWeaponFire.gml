if (HoldingWeaponId = Weapons.wPulseBeam)
{
    if (Charger >= 60) alarm[1] = 1;
    else
    {
        if (ShotTimer < 0)
        {
            scFireProjectile(WeaponAim,WeaponProjectile);
            Charger = 0;
            if (pulseshot < 3) 
                { ShotTimer = RateOfFire; pulseshot += 1; }
            if (pulseshot = 3) then
                { ShotTimer = RateOfFire*6; pulseshot -= 3;
            }
        }
    }
}
else
{
    if (ShotTimer < 0)
    {
        ShotTimer = RateOfFire;
        if (_GetRequiresAmmo())
        {
            if (scWeaponGetAmmo(HoldingWeaponId) > 0)
            {
                scWeaponSetAmmo(HoldingWeaponId,scWeaponGetAmmo(HoldingWeaponId)-1);
                scFireProjectile(WeaponAim,WeaponProjectile);
                Charger = 0;
            } 
        }
        else
        {
            scFireProjectile(WeaponAim,WeaponProjectile);
            Charger = 0;
        }   
    }
}
