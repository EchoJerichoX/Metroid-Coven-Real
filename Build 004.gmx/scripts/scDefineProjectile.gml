// Initialization script for all projectiles.
myid = argument0; // Set engine ID in accordance with current player weapon.
mask_index = sprProjectileMaskDoorChecker; // If the player is butted up against
                                           //   a door, open it.
impaused = 0;
for (var i = 0; i < 6; i++) c_alarm[i] = -1; // Build array to store alarm counts when pausing.
alarmsheld = 0; // Tells the object if its alarm states are currently held.
alarm[4] = 2; // Revert to the proper mask_index after it has moved few frames.
switch (myid)
{
// ========================
// ===== Player Beams =====
// ========================
// --- Power Beam ---
    case Weapons.wPowerBeam:
        // - General Initialization -
        playerprojectile = 1; // Player-owned projectile.
        hittype = 1; // Beam.
        DiesOnContact = true; // Destroy the instance when it hits something.
        Damage = 1; // Damage dealt to enemies and applicable obstructions.
        var lightalpha = 0.1;
        var lightradius = 0.6;
        var charged = 0; // Tell the particle object that the player fired
                         //   using the Charge Beam.
        var sprite = sprPower;
        // - Charge Beam variance -
        if (Charger >= 60) // If the player's weapon is sufficiently charged, make these changes.
        {
            sprite = sprPowerCharge;
            Damage = 5;
            lightalpha = 0.2;
            lightradius = 1;
            charged = 1;
        }
        // - Movement, graphics, and effects -
        sprite_index = sprite;
        speed = 10;
        pop = instance_create(x,y,oParticle); // Create a small particle burst.
        pop.myid = myid;                      // ^
        pop.c = charged;                      // ^
        scProjectileLight(lightalpha,c_white,c_yellow,lightradius); // Create the light that follows the projectile.
        sound_play(BeamPower);
        alarm[0] = 20+random(5); // Time until the projectile starts fading out.
        with (instance_create(x,y,oDestroyAnim)) // Create a small explosion at the tip of the arm cannon.
            { sprite_index = sprBeamFire1; image_blend = c_yellow; image_speed = .5; }
        break;
// --- Wave Beam ---
    case Weapons.wWaveBeam:
        // - General Initialization -
        playerprojectile = 1;
        hittype = 1; // Beam.
        DiesOnContact = true;
        Damage = 1;
        var lightalpha = 0.1;
        var lightradius = 0.6;
        var charged = 0;
        var sprite = sprWave;
        // - Charge Beam Variance -
        if (Charger >= 60)
        {
            sprite = sprWaveCharge;
            Damage = 4;
            lightalpha = 0.2;
            lightradius = 1;
            charged = 1;
        }
        // - Movement, graphics, and effects -
        sprite_index = sprite;
        speed = 6;
        pop = instance_create(x,y,oParticle);
        pop.myid = myid;
        pop.c = charged;
        scProjectileLight(lightalpha,c_white,c_purple,lightradius);
        alarm[0] = 25+random(5);
        alarm[1] = 2; // For creating trails more slowly.
        break;
// --- Plasma Beam ---
    case Weapons.wPlasmaBeam:
        // - General Initialization -
        playerprojectile = 1;
        hittype = 1; // Beam.
        DiesOnContact = true;
        Damage = 7;
        var lightalpha = 0.15;
        var lightradius = 0.6;
        var charged = 0;
        var sprite = sprPlasma;
        // - Charge Beam Variance -
        if (Charger >= 60)
        {
            sprite = sprPlasmaCharge;
            Damage = 13;
            lightalpha = 0.3;
            lightradius = 1;
            charged = 1;
        }
        // - Movement, graphics, and effects -
        sprite_index = sprite;
        speed = 6;
        pop = instance_create(x,y,oParticle);
        pop.myid = myid;
        pop.c = charged;
        scProjectileLight(lightalpha,c_white,c_orange,lightradius);
        sound_play(BeamPlasma);
        alarm[0] = 35+random(5);
        image_speed = .25;
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire2; image_speed = .5; }
        break;
// --- Spazer Beam ---
    case Weapons.wSpazerBeam:
        // - General Initialization -
        playerprojectile = 1;
        hittype = 1; // Beam.
        DiesOnContact = true;
        Damage = 1;
        var lightalpha = 0.1;
        var lightradius = 0.6;
        var charged = 0;
        var sprite = sprSpazer;
        // - Charge Beam Variance -
        if (Charger >= 60)
        {
            sprite = sprSpazerCharge;
            Damage = 3;
            lightalpha = 0.2;
            lightradius = 1;
            charged = 1;
        }
        // - Movement, graphics, and effects -
        sprite_index = sprite;
        speed = 2;
        pop = instance_create(x,y,oParticle);
        pop.myid = myid;
        pop.c = charged;
        scProjectileLight(lightalpha,c_white,c_lime,lightradius);
        alarm[0] = 25;
        with (instance_create(x,y,oDestroyAnim)) // Create a small explosion at the tip of the arm cannon.
            { sprite_index = sprBeamFire1; image_blend = c_lime; image_speed = .5; }
        break;
// --- Pulse Beam ---
    case Weapons.wPulseBeam:
        // - General Initialization -
        playerprojectile = 1;
        hittype = 1; // Beam.
        DiesOnContact = true;
        Damage = 1;
        // - Movement, graphics, and effects -
        sprite_index = sprPulse;
        speed = 11;
        pop = instance_create(x,y,oParticle);
        pop.myid = myid;
        scProjectileLight(0.1,c_white,make_color_rgb(0,255,255),0.6);
        if (sound_isplaying(BeamPulse)) sound_stop(BeamPulse);
        sound_play(BeamPulse);
        alarm[0] = 15+random(5);
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire1; image_blend = make_color_rgb(0,255,255); image_speed = .5; }
        break;
// --- Ice Beam ---
    case Weapons.wIceBeam:
        // - General Initialization -
        playerprojectile = 1;
        hittype = 1; // Beam.
        DiesOnContact = true;
        Damage = 2;
        var lightalpha = 0.15;
        var lightradius = 0.6;
        var charged = 0;
        var sprite = sprIce;
        // - Charge Beam Variance -
        if (Charger >= 60)
        {
            sprite = sprIceCharge;
            Damage = 6;
            lightalpha = 0.2;
            lightradius = 1;
            charged = 1;
        }
        // - Movement, graphics, and effects -
        sprite_index = sprite;
        speed = 7;
        pop = instance_create(x,y,oParticle);
        pop.myid = myid;
        pop.c = charged;
        scProjectileLight(lightalpha,c_white,make_color_rgb(94,174,255),lightradius);
        sound_play(BeamIce);
        alarm[0] = 30+random(5);
        alarm[1] = 2;
        image_speed = .25;
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire1; image_blend = make_color_rgb(94,174,255); image_speed = .5; }
        break;
// --- Rupture Beam ---
    case Weapons.wRuptureBeam:
        // - General Initialization -
        playerprojectile = 1;
        hittype = 1; // Beam.
        DiesOnContact = true;
        Damage = 2;
        var lightalpha = 0.1;
        var lightradius = 0.6;
        var charged = 0;
        var sprite = sprRupture;
        // - Charge Beam Variance -
        if (Charger >= 60)
        {
            sprite = sprRuptureCharge;
            Damage = 6;
            lightalpha = 0.2;
            lightradius = 1;
            charged = 1;
        }
        // - Movement, graphics, and effects -
        sprite_index = sprite;
        speed = 10;
        pop = instance_create(x,y,oParticle);
        pop.myid = myid;
        pop.c = charged;
        scProjectileLight(lightalpha,c_white,c_orange,lightradius);
        sound_play(BeamRupture);
        alarm[0] = 25+random(5);
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire1; image_blend = c_orange; image_speed = .5; }
        break;
// --- Rupture Beam Particle---
    case Projectiles.pRuptureBeamParticle:
        // - General Initialization -
        playerprojectile = 1;
        hittype = 1; // Beam.
        DiesOnContact = true;
        Damage = 0.5;
        // - Movement, graphics, and effects -
        sprite_index = sprRuptureParticle;
        speed = random_range(1,3);
        direction = random(360);
        sound_play(BeamIce);
        alarm[0] = 20;
        alarm[1] = 2;
        image_speed = .5;
        break;
// --- Phazon Beam ---
    case Weapons.wPhazonBeam:
        // - General Initialization -
        playerprojectile = 1;
        hittype = 1; // Beam.
        DiesOnContact = true;
        Damage = 4;
        var lightalpha = 0.1;
        var lightradius = 0.1;
        var charged = 0;
        var sprite = sprPhazon;
        speed = 8;
        alarm[0] = 25+random(5);
        // - Charge Beam Variance -
        if (Charger >= 60)
        {
            sprite = sprPhazonCharge;
            Damage = 14;
            lightalpha = 0.2;
            lightradius = 1;
            charged = 1;
            speed = 12;
            alarm[0] = 25+random(5);
        }
        // - Movement, graphics, and effects -
        sprite_index = sprite;
        sound_play(BeamPhazon);
        scProjectileLight(lightalpha,c_white,c_blue,lightradius);
        break;
        
// ====================================
// ===== Player Secondary Weapons =====
// ====================================
// --- Missile Launcher ---
    case Weapons.wMissileLauncher:
        playerprojectile = 1;
        hittype = 2; // Missile.
        speed = 6;
        sprite_index = sprMissile;
        Damage = 8;
        DiesOnContact = true;
        sound_play(MissileFire);
        scProjectileLight(.1,c_white,c_orange,.6);
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
        scProjectileLight(.2,c_white,make_color_rgb(196,121,196),1);
        alarm[0] = 200;
        break;

// ================================
// ===== Player Addon Weapons =====
// ================================
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
        scProjectileLight(.2,c_white,make_color_rgb(94,174,255),.4);
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
        scProjectileLight(.2,c_white,c_red,.4);
        image_speed = .03;
        createeffect = 0;
        break;

// =============================
// ===== Enemy Projectiles =====
// =============================

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
        scProjectileLight(.1,c_white,c_red,.6)
        alarm[0] = 20+random(5);
        with (instance_create(x,y,oDestroyAnim))
            { sprite_index = sprBeamFire1; image_blend = c_red; image_speed = .5; }
        break;

// =========================
// ===== Error-catcher =====
// =========================
    default: show_error("The projectile ID ("+string(myid)+") is not defined in the engine ID list.",true); break;
}

inputspeed = speed; // Grab the projectile speed for pausing interaction.
