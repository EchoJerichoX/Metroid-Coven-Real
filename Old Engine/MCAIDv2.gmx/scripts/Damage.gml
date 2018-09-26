if (object_get_parent(id) = BlockParent) then // Prevents destructible blocks from being ignored.
{
   if (collision_line(x,y,other.x,other.y,BlockParent,1,0)) // See if a wall is between itself and colliding object.
   and (other.sprite_index != sprPowerBombInvert) // Make sure the colliding object is not one that is SUPPOSED to damage past walls.
      { exit; } // If both are true, do not continue and do not take damage.
}

if (other.object_index = objShockwaveSmall)
or (other.object_index = objShockwaveLarge)
or (other.object_index = objShockwaveHuge) exit;

switch (other.sprite_index)
{
   case sprPower:
   case sprPowerCh:
      DamagePowerBeam(); break;
   case sprWave:
   case sprWaveCh:
      DamageWaveBeam(); break;
   case sprPlasma:
   case sprPlasmaCh:
      DamagePlasmaBeam(); break;
   case sprSpazer:
   case sprSpazerCh:
      DamageSpazerBeam(); break;
   case sprPulse:
      DamagePulseBeam(); break;
   case sprIce:
   case sprIceCh:
      DamageIceBeam(); break;
   case sprNova:
   case sprNovaCh:
      DamageNovaBeam(); break;
   case sprDark:
   case sprDarkCh:
   case sprDarkPart:
      DamageDarkBeam(); break;
   case sprLight:
   case sprLightCh:
   case sprLightBeamExplosionSmall:
   case sprLightBeamExplosionLarge:
      DamageLightBeam(); break;
   case sprPhazon:
   case sprPhazonCh:
      DamagePhazonBeam(); break;
   case sprMissile:
   case sprHomingMissile:
      DamageMissile(); break;
   case sprSuperMissile:
   case sprDiffusionMissile:
      DamageSuperMissile(); break;
   case sprDiffuserExplosion:
      DamageDiff(); break;
   case sprScrewBombPart:
      en -= 10; break;
   case sprBombExplosion:
   case sprScrewBombExplosion:
      en -= 2; break;
   case spr_pirate_blast_reflected:
      en -= 5; break;
   case sprPowerBombInvert:
      en -= 1; break;
   case sprSpeedBoosterEffect:
      en -= 1; break;
}

if (other.object_index = objScrewBombOtherExplode) en -= .05;
