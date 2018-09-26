if (global.morphed = false)
and (global.transforming = false)
and (gunready = true)
and (!global.speedboost)
and (global.cursor != 2) then
{
   switch (global.weapon)
   {
      case 0:
      case 3:
      case 6:
      case 13:
         exit;
         break;
      case 1:
         FirePowerBeamCharged();
         break;
      case 2:
         FireWaveBeamCharged();
         break;
      case 4:
         FirePlasmaBeamCharged();
         break;
      case 5:
         FireSpazerBeamCharged();
         break;
      case 7:
         FirePulseBeamCharged();
         break;
      case 8:
         FireIceBeamCharged();
         break;
      case 9:
         FireNovaBeamCharged();
         break;
      case 10:
         FireDarkBeamCharged();
         break;
      case 11:
         FireLightBeamCharged();
         break;
      case 12:
         FirePhazonBeamCharged();
         break;
   }
}
