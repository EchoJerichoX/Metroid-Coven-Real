if (global.morphed = false) 
and (global.transforming = false) 
and (global.cursor != 2) 
and (global.charging = false)
and (global.chargeshooting = false)
and (!global.speedboost)
and (!mouse_check_button(mb_right)) then
{
   switch (global.weapon)
   {
   case 1:
      FirePowerBeam();
      break;
   case 2:
      FireWaveBeam();
      break;
   case 3:
      FireMissile();
      break;
   case 4:
      FirePlasmaBeam();
      break;
   case 5:
      FireSpazerBeam();
      break;
   case 6:
      FireSuperMissile();
      break;
   case 7:
      FirePulseBeam();
      break;
   case 8:
      FireIceBeam();
      break;
   case 9:
      FireNovaBeam();
      break;
   case 10:
      FireDarkBeam();
      break;
   case 11:
      FireLightBeam();
      break;
   case 12:
      FirePhazonBeam();
      break;
   case 13:
      FireHMissile();
      break;
   case 14:
      FireDMissile();
      break;
   }
}
if (global.morphed = true)
and (global.transforming = false) then
{
   switch (global.weapon)
   {
      case 0:
         if (global.bombavail = true) 
         and (instance_number(objBallBomb) < 3)
         and (bombready)
         and (global.cursor != 2) then
         {
            if (global.inslot = false) then
            {
               instance_create(x,y,objBallBomb);
            }
            if (global.inslot = true) 
            and (instance_number(objBallBombSlot) < 1) then
            {
               instance_create(x,y,objBallBombSlot);
            }
         }
         bombready = false;
         break;
      /*case 15:
         if (global.powerbombavail = true) 
         and (powerbombready)
         and (global.powerbombs > 0) then
         {
            if (global.inslot = false) then
            {
               instance_create(x,y,objPowerBomb);
               global.powerbombs -= 1;
            }
            if (global.inslot = true) 
            and (instance_number(objBallBombSlot) < 1) then
            {
               instance_create(x,y,objBallBombSlot);
            }
            powerbombready = false;
            alarm[10] = 200;
         }
         break;*/
      case 16:
         if (global.screwbombavail = true) 
         and (powerbombready)
         and (global.powerbombs > 1) then
         {
            if (global.inslot = false)
            and !(collision_circle(x,y,8,BlockParent,true,false)) then
            {
               instance_create(x,y,objScrewBomb);
               global.powerbombs -= 2;
               powerbombready = false;
               alarm[10] = 200;
            }
            if (global.inslot = true) 
            and (instance_number(objBallBombSlot) < 1) then
            {
               instance_create(x,y,objBallBombSlot);
            }
         }
   }
}
