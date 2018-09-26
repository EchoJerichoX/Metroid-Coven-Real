switch (global.secweapon)
{
   case 15:
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
      break;
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
