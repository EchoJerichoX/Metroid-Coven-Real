myid = argument0;
mask_index = sprProjectileMaskDoorChecker;
alarm[4] = 1;
switch (myid)
{
// ===== Player Beams =====
// --- Power Beam ---
    case Weapons.wPowerBeam:
        playerprojectile = 1;
        hittype = 1; // Beam.
        speed = 10;
        sprite_index = sprPower;
        Damage = 1;
        DiesOnContact = true;
        pop = instance_create(x,y,oParticle);
        pop.myid = Weapons.wPowerBeam;
        if (Charger >= 60)
        {
            Damage = 5;
            sound_play(BeamPower);
            sprite_index = sprPowerCharge;
            _ProjectileLight(.2,c_white,c_yellow,1);
            pop.c = 1;
        }
        else
        {
            sound_play(BeamPower);
            _ProjectileLight(.1,c_white,c_yellow,.6)
            pop.c = 0;
        }
        alarm[0] = 20+random(5);
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire1; image_blend = c_yellow; image_speed = .5; }
        break;
// --- Wave Beam Proxy ---
    case Weapons.wWaveBeam:
        playerprojectile = 1;
        hittype = 1; // Beam.
        speed = 0;
        sprite_index = sprWave;
        Damage = 0;
        alarm[0] = 3;
        DiesOnContact = true;
        var xx,yy;
        xx = oPlayer.WeaponXPosition+lengthdir_x(20,direction)
        yy = oPlayer.WeaponYPosition+lengthdir_y(20,direction)
        with (instance_create(xx,yy,oProjectile))
        {
            t = 0;
            Charger = other.Charger;
            direction = other.direction;
            image_angle = direction;
            scDefineProjectile(Projectiles.pWaveBeam);
            SwingPositive = true;
            alarm[1] = 2;
        }
        with (instance_create(xx,yy,oProjectile))
        {
            t = 0;
            Charger = other.Charger;
            direction = other.direction;
            image_angle = direction;
            scDefineProjectile(Projectiles.pWaveBeam);
            SwingPositive = false;
            alarm[1] = 2;
        }
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire1; image_blend = make_color_rgb(181,87,171); image_speed = .5; }
        break;
// --- Wave Beam ---
    case Projectiles.pWaveBeam:
        playerprojectile = 1;
        hittype = 1; // Beam.
        speed = 6;
        sprite_index = sprWave;
        Damage = 5;
        alarm[0] = 30+random(5);
        DiesOnContact = true;
        pop = instance_create(x,y,oParticle);
        pop.myid = Projectiles.pWaveBeam;
        if (Charger >= 60)
        {
            Damage = 8;
            speed = 8;
            sound_play(BeamWave);
            sprite_index = sprWaveCharge;
            _ProjectileLight(.2,c_white,c_purple,1);
            pop.c = 1;
        }
        else
        {
            sound_play(BeamWave);
            _ProjectileLight(.1,c_white,c_purple,.6);
            pop.c = 0;
        }
        break;
// --- Plasma Beam ---
    case Weapons.wPlasmaBeam:
        playerprojectile = 1;
        hittype = 1; // Beam.
        direction = direction+random_range(oPlayer.WeaponAccuracy,oPlayer.WeaponAccuracy*-1);
        speed = 6;
        sprite_index = sprPlasma;
        Damage = 7;
        pop = instance_create(x,y,oParticle);
        pop.myid = Weapons.wPlasmaBeam;
        if (Charger >= 60)
        {
            Damage = 13;
            speed = 11;
            sound_play(BeamPlasma);
            sprite_index = sprPlasmaCharge;
            _ProjectileLight(.3,c_white,c_orange,1);
            pop.c = 1;
        }
        else
        {
            sound_play(BeamPlasma);
            _ProjectileLight(.15,c_white,c_orange,.6);
            pop.c = 0;
        }
        alarm[0] = 35+random(5);
        DiesOnContact = true;
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire2; image_speed = .5; }
        break;
// --- Spazer Beam Proxy ---
    case Weapons.wSpazerBeam:
        playerprojectile = 1;
        hittype = 1; // Beam.
        speed = 0;
        image_alpha = 0;
        sprite_index = sprSpazer;
        Damage = 0;
        alarm[0] = 3;
        DiesOnContact = true;
        var xx,yy;
        xx = oPlayer.WeaponXPosition+lengthdir_x(20,direction)
        yy = oPlayer.WeaponYPosition+lengthdir_y(20,direction)
        with (instance_create(xx,yy,oProjectile))
        {
            t               =   0;
            Charger         =   other.Charger;
            direction       =   other.direction;
            image_angle     =   direction;
            scDefineProjectile(Projectiles.pSpazerBeam);
            side = "left";
        }
        with (instance_create(xx,yy,oProjectile))
        {
            t = 0;
            Charger = other.Charger;
            direction = other.direction;
            image_angle = direction;
            scDefineProjectile(Projectiles.pSpazerBeam);
            side = "mid";
        }
        with (instance_create(xx,yy,oProjectile))
        {
            t = 0;
            Charger = other.Charger;
            direction = other.direction;
            image_angle = direction;
            scDefineProjectile(Projectiles.pSpazerBeam);
            side = "right";
        }
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire1; image_blend = c_lime; image_speed = .5; }
        break;
// --- Spazer Beam ---
    case Projectiles.pSpazerBeam:
        playerprojectile = 1;
        hittype = 1; // Beam.
        direction = direction;
        speed = 2;
        sprite_index = sprSpazer;
        Damage = 3;
        alarm[0] = 25;
        DiesOnContact = true;
        pop = instance_create(x,y,oParticle);
        pop.myid = Projectiles.pSpazerBeam;
        if (Charger >= 60)
        {
            Damage = 6;
            speed = 3;
            sound_play(BeamSpazer);
            sprite_index = sprSpazerCharge;
            _ProjectileLight(.2,c_white,c_lime,1);
            pop.c = 1;
        }
        else
        {
            sound_play(BeamSpazer);
            _ProjectileLight(.1,c_white,c_lime,.6);
            pop.c = 0;
        }
        break;
// --- Pulse Beam ---
    case Weapons.wPulseBeam:
        playerprojectile = 1;
        hittype = 1; // Beam.
        direction = direction+random_range(oPlayer.WeaponAccuracy,oPlayer.WeaponAccuracy*-1);
        speed = 11;
        sprite_index = sprPulse;
        Damage = 3;
        DiesOnContact = true;
        if (sound_isplaying(BeamPulse)) sound_stop(BeamPulse);
        sound_play(BeamPulse);
        _ProjectileLight(.1,c_white,make_color_rgb(0,255,255),.6);
        pop = instance_create(x,y,oParticle);
        pop.myid = Weapons.wPulseBeam;
        pop.c = 0;
        alarm[0] = 15+random(5);
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire1; image_blend = make_color_rgb(0,255,255); image_speed = .5; }
        break;
// --- Ice Beam ---
    case Weapons.wIceBeam:
        playerprojectile = 1;
        hittype = 1; // Beam.
        direction = direction+random_range(oPlayer.WeaponAccuracy,oPlayer.WeaponAccuracy*-1);
        speed = 7;
        sprite_index = sprIce;
        Damage = 3;
        DiesOnContact = true;
        pop = instance_create(x,y,oParticle);
        pop.myid = Weapons.wIceBeam;
        if (Charger >= 60)
        {
            Damage = 8;
            sound_play(BeamIce);
            sprite_index = sprIceCharge;
            _ProjectileLight(.2,c_white,make_color_rgb(94,174,255),1);
            pop.c = 1;
        }
        else
        {
            sound_play(BeamIce);
            _ProjectileLight(.1,c_white,make_color_rgb(94,174,255),.6);
            pop.c = 0;
        }
        if (Charger < 60) alarm[0] = 25+random(5);
        else alarm[0] = 35+random(5);
        alarm[1] = 2;
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire1; image_blend = make_color_rgb(94,174,255); image_speed = .5; }
        break;
// --- Rupture Beam ---
    case Weapons.wRuptureBeam:
        playerprojectile = 1;
        hittype = 1; // Beam.
        direction = direction+random_range(oPlayer.WeaponAccuracy,oPlayer.WeaponAccuracy*-1);
        speed = 10;
        sprite_index = sprRupture;
        Damage = 3;
        DiesOnContact = true;
        pop = instance_create(x,y,oParticle);
        pop.myid = Weapons.wRuptureBeam;
        if (Charger >= 60)
        {
            Damage = 7;
            sound_play(BeamRupture);
            sprite_index = sprRuptureCharge;
            _ProjectileLight(.2,c_white,c_orange,1);
            pop.c = 1;
        }
        else
        {
            sound_play(BeamRupture);
            _ProjectileLight(.1,c_white,c_orange,.6)
            pop.c = 0;
        }
        alarm[0] = 25+random(5);
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire1; image_blend = c_orange; image_speed = .5; }
        break;
// --- Rupture Beam Particle---
    case Projectiles.pRuptureBeam:
        playerprojectile = 1;
        hittype = 1; // Beam.
        speed = random_range(1,3);
        sprite_index = sprRuptureParticle;
        Damage = 1;
        DiesOnContact = true;
        image_speed = .5;
        alarm[0] = 20;
        alarm[1] = 2;
        direction = random(360);
        break;
// --- Phazon Beam Proxy ---
    case Weapons.wPhazonBeam:
        playerprojectile = 1;
        hittype = 1; // Beam.
        speed = 0;
        image_alpha = 0;
        sprite_index = sprPhazon;
        Damage = 0;
        alarm[0] = 3;
        var xx,yy;
        xx = oPlayer.WeaponXPosition+lengthdir_x(20,direction);
        yy = oPlayer.WeaponYPosition+lengthdir_y(20,direction);
        pop = instance_create(x,y,oParticle);
        pop.myid = Weapons.wPhazonBeam;
        if (Charger < 60)
        {
            with (instance_create(xx,yy,oProjectile))
            {
                direction = oPlayer.WeaponAim+random_range(oPlayer.WeaponAccuracy,oPlayer.WeaponAccuracy*-1);
                image_angle = direction;
                Charger = other.Charger;
                sound_play(BeamPhazon);
                scDefineProjectile(Projectiles.pPhazonBeam);
                alarm[0] = 20+random(5);
            }
            pop.c = 0;
        }
        else
        {
            var i;
            for (i = direction-20; i < direction+21; i+=10)
            {
                with (instance_create(xx,yy,oProjectile))
                {
                    direction = i;
                    image_angle = direction;
                    Charger = other.Charger;
                    scDefineProjectile(Projectiles.pPhazonBeam);
                    alarm[0] = 25+random(5);
                }
            }
            pop.c = 1;
        }
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire1; image_blend = c_blue; image_speed = .5; }
        break;
// --- Phazon Beam ---
    case Projectiles.pPhazonBeam:
        playerprojectile = 1;
        hittype = 1; // Beam.
        if (Charger < 60)
        {
            speed = 8;
            sprite_index = sprPhazon;
            Damage = 8;
            DiesOnContact = true;
            _ProjectileLight(.1,c_white,c_navy,.6)
        }
        else
        {
            sound_play(BeamPhazon);
            speed = 12;
            sprite_index = sprPhazonCharge;
            Damage = 20;
            DiesOnContact = true;
            _ProjectileLight(.2,c_white,c_navy,1)
        }
        break;

// ===== Player Secondary Weapons =====
// --- Missile Launcher ---
    case Weapons.wMissileLauncher:
        playerprojectile = 1;
        hittype = 2; // Missile.
        speed = 6;
        sprite_index = sprMissile;
        Damage = 8;
        DiesOnContact = true;
        sound_play(MissileFire);
        _ProjectileLight(.1,c_white,c_orange,.6);
        alarm[0] = 200;
        break;
    case Weapons.wSuperMissile:
        playerprojectile = 1;
        hittype = 3; // Super Missile.
        speed = 4;
        sprite_index = sprSuperMissile;
        Damage = 20;
        DiesOnContact = true;
        sound_play(MissileFire);
        _ProjectileLight(.2,c_white,make_color_rgb(196,121,196),1);
        alarm[0] = 200;
        break;

// ===== Player Addon Weapons =====
// --- Ball Bomb ---
    case Weapons.wBallBomb:
        playerprojectile = 1;
        // See this ID in "scProjectileDeath" for actual damage info.
        speed = 0;
        Damage = 0;
        if (instance_exists(oPlayer)) oPlayer.ExistingBombs += 1;
        sprite_index = sprBallBomb;
        mask_index = sprite_index;
        DiesOnContact = false;
        sound_play(BombLay);
        _ProjectileLight(.2,c_white,make_color_rgb(94,174,255),.4);
        image_speed = .03;
        createeffect = 0;
        break;
// --- Power Bomb ---
    case Weapons.wPowerBomb:
        playerprojectile = 1;
        // See this ID in "scProjectileDeath" for actual damage info.
        speed = 0;
        Damage = 0;
        if (instance_exists(oPlayer)) oPlayer.ExistingPowerBombs += 1;
        sprite_index = sprPowerBomb;
        mask_index = sprite_index;
        DiesOnContact = false;
        sound_play(BombLay);
        _ProjectileLight(.2,c_white,c_red,.4);
        image_speed = .03;
        createeffect = 0;
        break;
        
// ===== Enemy Projectiles =====
// --- Turret Bolt ---
    case Projectiles.pTurret:
        playerprojectile = 0;
        hittype = 1; // Beam.
        Damage = 12;
        speed = 10;
        sprite_index = sprTurretBolt;
        DiesOnContact = true;
        pop = instance_create(x,y,oParticle);
        pop.myid = Projectiles.pTurret;
        pop.c = 0;
        sound_play(BeamPower);
        _ProjectileLight(.1,c_white,c_red,.6)
        alarm[0] = 20+random(5);
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire1; image_blend = c_red; image_speed = .5; }
        break;

// ===== Error-catcher =====
    default: show_error("The projectile ID ("+string(myid)+") is not defined in the engine ID list.",tr=ue); break;
}
