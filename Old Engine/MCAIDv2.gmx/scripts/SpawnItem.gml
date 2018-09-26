switch (object_index) // Change pickup rate based on target dropping them.
                      // Smaller numbers = greater drop rate.
                      // If randomized number = 1, spawn a pickup.
{
   case objGametDown:
   case objGametLeft:
   case objGametRight:
   case objGametUp:
      pickuphealth = round(random(2));
      pickupammo = round(random(1)); break;
   case objParasite:
   case objItemBoxLarge:
   case objItemBoxSmall:
      pickuphealth = round(random(3));
      pickupammo = round(random(2)); break;
   case objSpacePirate:
   case objSpacePirateFrozen:
      pickuphealth = round(random(1));
      pickupammo = round(random(1)); break;
   case objIceBarrierLR:
   case objIceBarrierUD:
      pickuphealth = 1;
      pickupammo = 1; break;
}
      
whichpickup = choose("health","ammo"); //1 = drop health. 2 = drop ammo.
switch (whichpickup)
{
   case "health":
      if (pickuphealth = 1)
      {
         if (object_index != objIceBarrierLR)
         and (object_index != objIceBarrierUD)
         {
            if (health < 100) and (health >= 85) instance_create(x,y,objEnergy10);
            if (health < 85) and (health >= 35) instance_create(x,y,choose(objEnergy10,objEnergy20));
            if (health < 35) or (global.etanks < global.maxetanks) instance_create(x,y,choose(objEnergy10,objEnergy20,objEnergy50));
         }
         else
         {
            if (health < 100) and (health >= 85) then
               { repeat(round(random(4))) instance_create(x,y,objEnergy10); exit; }
            if (health < 85) and (health >= 35) then
               { repeat(round(random(4))) instance_create(x,y,choose(objEnergy10,objEnergy20)); exit; }
            if (health < 35) or (global.etanks < global.maxetanks) then
               { repeat(round(random(4))) instance_create(x,y,choose(objEnergy10,objEnergy20,objEnergy50)); exit; }
         }
      }
      break;
   case "ammo":
      if (pickupammo = 1)
      var whichammo;
      whichammo = choose(1,2, 3,4, 5); // Separated to control drop rate of higher-value weapons.
                                       // 1 & 2 = Missile ammo.
                                       // 3 & 4 = Super Missile ammo.
                                       // 5 = Power Bomb ammo.
      {
         if (object_index != objIceBarrierLR)
         and (object_index != objIceBarrierUD)
         {
            switch (whichammo)
            {
               case 1:
               case 2:
                  if (global.missiles < global.maxmissiles) and (global.missiles >= global.maxmissiles/2) then
                     { instance_create(x,y,objMissilePickup2); exit; }
                  if (global.missiles < global.maxmissiles/2) then
                     { instance_create(x,y,choose(objMissilePickup2,objMissilePickup5)); exit; }
                  break;
               case 3:
               case 4:
                  if (global.supermissiles < global.maxsupermissiles) and (global.supermissiles >= global.maxsupermissiles/2) then
                     { instance_create(x,y,objSuperMissilePickup1); exit; }
                  if (global.supermissiles < global.maxsupermissiles/2) then
                     { instance_create(x,y,choose(objSuperMissilePickup1,objSuperMissilePickup3)); exit; }
                  break;
               case 5:
                  if (global.powerbombs < global.maxpowerbombs) then
                     { instance_create(x,y,objPowerBombPickup); exit; }
            }
         }
         else
         {
            if (health < 100) and (health >= 85) then
               { repeat(round(random(4))) instance_create(x,y,objEnergy10); exit; }
            if (health < 85) and (health >= 35) then
               { repeat(round(random(4))) instance_create(x,y,choose(objEnergy10,objEnergy20)); exit; }
            if (health < 35) or (global.etanks < global.maxetanks) then
               { repeat(round(random(4))) instance_create(x,y,choose(objEnergy10,objEnergy20,objEnergy50)); exit; }
         }
      }
      break;
}
