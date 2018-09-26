if (global.diffuseravail)
{
   switch (sprite_index)
   {
      case sprPowerCh: a = instance_create(x,y,objDiffuserExp); a.expl = objPowerBeamExplosion; break;
      case sprWaveCh: a = instance_create(x,y,objDiffuserExp); a.expl = objWaveBeamExplosion; break;
      case sprPlasmaCh: a = instance_create(x,y,objDiffuserExp); a.expl = objPlasmaBeamExplosion; break;
      case sprSpazerCh: a = instance_create(x,y,objDiffuserExp); a.expl = objSpazerBeamExplosion; a.numexp = 6; break;
      case sprIceCh: a = instance_create(x,y,objDiffuserExp); a.expl = objIceBeamExplosion; break;
      case sprNovaCh: a = instance_create(x,y,objDiffuserExp); a.expl = objNovaBeamExplosion; break;
      case sprDarkCh: a = instance_create(x,y,objDiffuserExp); a.expl = objDarkBeamExplosion; break;
      case sprLightCh: a = instance_create(x,y,objDiffuserExp); a.expl = objLightBeamExplosion; a.numexp = 6; a.area = 50; break;
      case sprPhazonCh: a = instance_create(x,y,objDiffuserExp); a.expl = objPhazonBeamExplosion; a.numexp = 6; break;
   }
}
