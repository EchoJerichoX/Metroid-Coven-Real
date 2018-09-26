switch (other.sprite_index)
{
   case sprLight:
      DamageLightBeamReg(); break;
   case sprLightCh:
      DamageLightBeamCh(); break;
   case sprLightBeamExplosionSmall:
   case sprLightBeamExplosionLarge:
      DamageLightBeamExplosion(); break;
}
