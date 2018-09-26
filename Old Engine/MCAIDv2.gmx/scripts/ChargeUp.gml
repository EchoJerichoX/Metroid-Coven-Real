if (overheated = false) 
and (global.morphed = false)
and (global.transforming = false)
and (gunready = true)
and (global.cursor != 2)
and (global.charging = true)
and (!global.speedboost)
and (global.chargeshooting = false) then
{
   switch (global.weapon)
   {
      case 1:
      case 2:
      case 4:
      case 5:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
         if (!instance_exists(ChargingSpriteParent)) CreateChargeSprite();
         if (global.charge < 101) and (cancharge) global.charge += .9*(global.accel*0.75);
         if (global.charge >= 100) { cancharge = false; global.charge = 100; }
         break;
   }
}
