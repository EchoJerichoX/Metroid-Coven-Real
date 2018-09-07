if (fadeout) and (image_alpha <= 0) exit;

switch (myid)
{
// ===== Player Beams =====
// --- Power Beam ---
    case Weapons.wPowerBeam:
        sound_play(BeamImpact1);
        with (instance_create(x,y,oDestroyAnim))
        {
            sprite_index = sprBeamExplosion1;
            image_blend = c_yellow;
            image_speed = .25;
            if (other.Charger < 60) _ProjectileLight(.1,c_white,c_yellow,.3);
            else _ProjectileLight(.4,c_white,c_yellow,.6);
        }
    break;
// --- Wave Beam ---
    case Projectiles.pWaveBeam:
        sound_play(BeamImpact2);
        with (instance_create(x,y,oDestroyAnim))
        {
            sprite_index = sprBeamExplosion1;
            image_blend = c_purple;
            image_speed = .25;
            if (other.Charger < 60) _ProjectileLight(.1,c_white,c_purple,.3);
            else _ProjectileLight(.4,c_white,c_purple,.6);
        }
    break;
// --- Plasma Beam ---
    case Weapons.wPlasmaBeam:
        sound_play(BeamImpact3);
        with (instance_create(x,y,oDestroyAnim))
        {
            sprite_index = sprPlasmaExplosion;
            image_speed = .5;
            image_alpha = 1;
            if (other.Charger < 60) _ProjectileLight(.1,c_white,c_red,.3);
            else _ProjectileLight(.4,c_white,c_red,.6);
        }
    break;
// --- Spazer Beam ---    
    case Projectiles.pSpazerBeam:
        sound_play(BeamImpact1);
        with (instance_create(x,y,oDestroyAnim))
        {
            sprite_index = sprBeamExplosion1;
            image_blend = c_lime;
            image_speed = .25;
            if (other.Charger < 60) _ProjectileLight(.1,c_white,c_lime,.3);
            else _ProjectileLight(.4,c_white,c_lime,.6);
        }
    break;
// --- Pulse Beam ---
    case Weapons.wPulseBeam:
        sound_play(BeamImpact1);
        with (instance_create(x,y,oDestroyAnim))
        {
            sprite_index = sprBeamExplosion1;
            image_blend = make_color_rgb(0,255,255);
            image_speed = .25;
            if (other.Charger < 60) _ProjectileLight(.1,c_white,make_color_rgb(0,255,255),.3);
            else _ProjectileLight(.4,c_white,make_color_rgb(0,255,255),.6);
        }
    break;
// --- Ice Beam ---
    case Weapons.wIceBeam:
        sound_play(choose(IceBeamImpact1,IceBeamImpact2,IceBeamImpact3));
        with (instance_create(x,y,oDestroyAnim))
        {
            sprite_index = sprBeamExplosion1;
            image_blend = make_color_rgb(94,174,255);
            image_speed = .25;
            if (other.Charger < 60) _ProjectileLight(.1,c_white,make_color_rgb(94,174,255),.3);
            else _ProjectileLight(.4,c_white,make_color_rgb(94,174,255),.6);
        }
    break;
// --- Rupture Beam ---
    case Weapons.wRuptureBeam:
        sound_play(BeamImpact4);
        with (instance_create(x,y,oDestroyAnim))
        {
            sprite_index = sprBeamExplosion2;
            image_blend = c_orange;
            image_speed = .25;
            var PartAmount;
            if (other.Charger < 60)
                { _ProjectileLight(.1,c_white,c_orange,.3); PartAmount = 6; }
            else
                { _ProjectileLight(.4,c_white,c_orange,.6); PartAmount = 18; }
            repeat (PartAmount)
            {
                with (instance_create(x,y,oProjectile))
                {
                    direction = random(360);
                    scDefineProjectile(Projectiles.pRuptureBeam);
                    alarm[1] = 2;
                }
            }
        }
    break;
// --- Rupture Beam Particle ---
    case Projectiles.pRuptureBeam:
        sound_play(BeamImpact1);
        with (instance_create(x,y,oDestroyAnim))
        {
            sprite_index = sprBeamExplosion2;
            image_blend = c_orange;
            image_speed = .25;
            image_xscale = .5;
            image_yscale = .5;
            _ProjectileLight(.05,c_white,c_orange,.2);
        }
    break;
// --- Phazon Beam ---
    case Projectiles.pPhazonBeam:
        sound_play(BeamImpact2);
        with (instance_create(x,y,oDestroyAnim))
        {
            sprite_index = sprBeamExplosion3;
            image_blend = c_blue;
            image_speed = .25;
            if (other.Charger < 60)
            {
                image_xscale = 0.7;
                image_yscale = 0.7;
                _ProjectileLight(.1,c_white,c_blue,.3);
            }
            else _ProjectileLight(.4,c_white,c_blue,.6);
        }
    break;
// ===== Player Secondary Weapons and Addons =====
// --- Missile Launcher ---
    case Weapons.wMissileLauncher:
        sound_play(MissileExplosion);
        repeat (20)
        {
            with (instance_create(x,y,oDestroyAnim))
            {
                sprite_index = sprMissileSmoke;
                direction = random(360);
                image_angle = random(360);
                speed = random_range(.5,1.5);
                image_speed = random_range(.25,.5);
            }
        }
        with (instance_create(x,y,oExplosion))
        {
            hittype = 2;
            sprite_index = sprMissileExplosion;
            image_speed = .25;
            Damage = 0.5;
            _ProjectileLight(.2,c_white,c_orange,.6)
        }
    break;
    case Weapons.wSuperMissile:
        sound_play(SuperMissileExplosion);
        repeat (60)
        {
            with (instance_create(x,y,oDestroyAnim))
            {
                sprite_index = sprSuperMissileSmoke;
                direction = random(360);
                image_angle = random(360);
                speed = random_range(.25,1.5);
                image_speed = random_range(.15,.45);
            }
        }
        with (instance_create(x,y,oExplosion))
        {
            hittype = 3;
            sprite_index = sprSuperMissileExplosion;
            image_speed = .25;
            Damage = 1;
            _ProjectileLight(.3,c_white,c_purple,.7)
        }
    break;
// --- Ball Bomb ---
    case Weapons.wBallBomb:
        sound_play(BombExplosion);
        with (instance_create(x,y,oExplosion))
        {
            hittype = 4; // Bomb.
            sprite_index = sprBallBombExplosion;
            image_speed = .5;
            Damage = 6;
            _ProjectileLight(.2,c_white,make_color_rgb(94,174,255),.4);
            if (instance_exists(oPlayer)) oPlayer.ExistingBombs -= 1;
        }
    break;
}
