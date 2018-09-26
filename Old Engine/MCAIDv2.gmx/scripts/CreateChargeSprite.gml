switch (global.weapon)
{
   case 1:
      instance_create(x,y,objPowerCharging); break;
   case 2:
      instance_create(x,y,objWaveCharging); break;
   case 4:
      if (overheated = false) { instance_create(x,y,objPlasmaCharging); } break;
   case 5:
      instance_create(x,y,objSpazerCharging); break;
   case 7:
      instance_create(x,y,objPulseCharging); break;
   case 8:
      instance_create(x,y,objIceCharging); break;
   case 9:
      instance_create(x,y,objNovaCharging); break;
   case 10:
      instance_create(x,y,objDarkCharging); break;
   case 11:
      instance_create(x,y,objLightCharging); break;
   case 12:
      instance_create(x,y,objPhazonCharging); break;
}
