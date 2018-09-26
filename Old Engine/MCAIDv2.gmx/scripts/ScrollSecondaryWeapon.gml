if (global.morphed = false) then
{
   switch (global.secweapon)
   {
      case 3:
         if (global.supermissilelauncheravail = true) 
            { global.secweapon = 6; sound_play(Click); }
         break;
      case 6:
         if (global.homingmissilelauncheravail = true) 
            { global.secweapon = 13; sound_play(Click); }
         else
            { global.secweapon = 3; sound_play(Click); }
         break;
      case 13:
         if (global.diffusionmissilelauncheravail = true)
            { global.secweapon = 14; sound_play(Click); }
         else 
            { global.secweapon = 3; sound_play(Click); }
         break;
      case 14:
         global.secweapon = 3;
         sound_play(Click);
         break;
   }
}

if (global.morphed = true) then
{
   switch (global.secweapon)
   {
      case 15:
         if (global.screwbombavail = true)
         { global.secweapon = 16; sound_play(Click); }
         break;
      case 16:
         global.secweapon = 15;
         sound_play(Click);
         break;
   }
}
