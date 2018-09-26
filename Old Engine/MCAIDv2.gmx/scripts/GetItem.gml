switch (object_index) // Check index and see what to do next.
{
   case objMissilePickup2:
      sound_play(AmmoGain);
      with (instance_create(x,y,objPickupGrab)) image_blend = c_red;
      if (global.missiles < global.maxmissiles) global.missiles += 2;
      if (global.missiles >= global.maxmissiles) global.missiles = global.maxmissiles;
      break;
   case objMissilePickup5:
      sound_play(AmmoGain);
      with (instance_create(x,y,objPickupGrab)) image_blend = c_red;
      if (global.missiles < global.maxmissiles) global.missiles += 5;
      if (global.missiles >= global.maxmissiles) global.missiles = global.maxmissiles;
      break;
   case objSuperMissilePickup1:
      sound_play(AmmoGain);
      with (instance_create(x,y,objPickupGrab)) image_blend = c_green;
      if (global.supermissiles < global.maxsupermissiles) global.supermissiles += 1;
      if (global.supermissiles >= global.maxsupermissiles) global.supermissiles = global.maxsupermissiles;
      break;
   case objSuperMissilePickup3:
      sound_play(AmmoGain);
      with (instance_create(x,y,objPickupGrab)) image_blend = c_green;
      if (global.supermissiles < global.maxsupermissiles) global.supermissiles += 3;
      if (global.supermissiles >= global.maxsupermissiles) global.supermissiles = global.maxsupermissiles;
      break;
   case objPowerBombPickup:
      sound_play(AmmoGain);
      with (instance_create(x,y,objPickupGrab)) image_blend = c_ltgray;
      if (global.powerbombs < global.maxpowerbombs) global.powerbombs += 1;
      if (global.powerbombs >= global.maxpowerbombs) global.powerbombs = global.maxpowerbombs;
      break;
   case objEnergy10:
      sound_play(EnergyGain);
      with (instance_create(x,y,objPickupGrab)) image_blend = c_fuchsia;
      global.gainhealth += 10; break;
   case objEnergy20:
      sound_play(EnergyGain);
      with (instance_create(x,y,objPickupGrab)) image_blend = c_red;
      global.gainhealth += 20; break;
   case objEnergy50:
      sound_play(EnergyGain);
      with (instance_create(x,y,objPickupGrab)) image_blend = make_color_rgb(0,128,255);
      global.gainhealth += 50; break;
}
instance_destroy();
