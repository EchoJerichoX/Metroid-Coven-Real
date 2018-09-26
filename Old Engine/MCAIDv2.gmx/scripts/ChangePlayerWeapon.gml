if (changeweap)
and (global.morphed = false) 
and (overheated = false) 
and (global.charging = false)
and (global.chargeshooting = false)
and (pulsechargeshot = 0)
and (global.cursor != 2)
and (gunready) then
{
   switch (argument0)
   {
      case 1:
         global.primweapon = 1; break;
      case 2:
         if (global.wavebeamavail = true) global.primweapon = 2; 
         else global.primweapon = global.weapon; break;
      case 3:
         if (global.plasmabeamavail = true) global.primweapon = 4; 
         else global.primweapon = global.weapon; break;
      case 4:
         if (global.spazerbeamavail = true) global.primweapon = 5; 
         else global.primweapon = global.weapon; break;
      case 5:
         if (global.pulseavail = true) global.primweapon = 7; 
         else global.primweapon = global.weapon; break;
      case 6:
         if (global.icebeamavail = true) global.primweapon = 8; 
         else global.primweapon = global.weapon; break;
      case 7:
         if (global.novabeamavail = true) global.primweapon = 9; 
         else global.primweapon = global.weapon; break;
      case 8:
         if (global.darkbeamavail = true) global.primweapon = 10; 
         else global.primweapon = global.weapon; break;
      case 9:
         if (global.lightbeamavail = true) global.primweapon = 11; 
         else global.primweapon = global.weapon; break;
      case 10:
         if (global.phazonbeamavail = true) global.primweapon = 12; 
         else global.primweapon = global.weapon; break;
      case 11:
         if (global.missilelauncheravail) global.primweapon = 3; 
         else global.primweapon = global.weapon; break;
      case 12:
         if (global.supermissilelauncheravail) global.primweapon = 6; 
         else global.primweapon = global.weapon; break;
      case 13:
         if (global.homingmissilelauncheravail) global.primweapon = 13; 
         else global.primweapon = global.weapon; break;;
      case 14:
         if (global.diffusionmissilelauncheravail) global.primweapon = 14; 
         else global.primweapon = global.weapon; break;
      case 15:
         if (global.screwbombavail) global.primweapon = 16; 
         else global.primweapon = global.weapon; break;
   }
   if (global.weapon != global.primweapon) then
   {
      global.weapon = global.primweapon;        
      sound_play(ChangeWeapon);
      global.justswitchedweapon = true;   
      changeweap = false;
      gunready = false;
      novaready = false;
      alarm[0] = 5;
      alarm[4] = 10;
   }
}
      
/*

if (changeweap)
and (global.morphed = false) 
and (overheated = false) 
and (global.charging = false)
and (global.chargeshooting = false)
and (global.cursor != 2) then
{
   switch (argument0)
   {
      case 1:
         desiredweapon = 1; break;
      case 2:
         if (global.wavebeamavail = true) desiredweapon = 2; 
         else desiredweapon = global.weapon; break;
      case 3:
         if (global.plasmabeamavail = true) desiredweapon = 4; 
         else desiredweapon = global.weapon; break;
      case 4:
         if (global.spazerbeamavail = true) desiredweapon = 5; 
         else desiredweapon = global.weapon; break;
      case 5:
         if (global.pulseavail = true) desiredweapon = 7; 
         else desiredweapon = global.weapon; break;
      case 6:
         if (global.icebeamavail = true) desiredweapon = 8; 
         else desiredweapon = global.weapon; break;
      case 7:
         if (global.novabeamavail = true) desiredweapon = 9; 
         else desiredweapon = global.weapon; break;
      case 8:
         if (global.darkbeamavail = true) desiredweapon = 10; 
         else desiredweapon = global.weapon; break;
      case 9:
         if (global.lightbeamavail = true) desiredweapon = 11; 
         else desiredweapon = global.weapon; break;
      case 10:
         if (global.phazonbeamavail = true) desiredweapon = 12; 
         else desiredweapon = global.weapon; break;
      case 11:
         if (global.missilelauncheravail) desiredweapon = 3; 
         else desiredweapon = global.weapon; break;
      case 12:
         if (global.supermissilelauncheravail) desiredweapon = 6; 
         else desiredweapon = global.weapon; break;
      case 13:
         if (global.homingmissilelauncheravail) desiredweapon = 13; 
         else desiredweapon = global.weapon; break;;
      case 14:
         if (global.diffusionmissilelauncheravail) desiredweapon = 14; 
         else desiredweapon = global.weapon; break;
      case 15:
         if (global.screwbombavail) desiredweapon = 16; 
         else desiredweapon = global.weapon; break;
   }
   if (global.weapon != desiredweapon) then
   {
      global.weapon = desiredweapon;        
      sound_play(ChangeWeapon);   
      changeweap = false;
      gunready = false;
      alarm[0] = 2;
      alarm[4] = 10;
   }
}
      
