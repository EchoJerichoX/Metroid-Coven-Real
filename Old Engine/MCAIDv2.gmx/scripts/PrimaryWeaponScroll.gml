var viableweapon, pos, dir, ii;
dir = 2*(argument0==false)-1; // if reverse is true, sets to -1, else sets to 1

if (changeweap)
and (global.morphed = false) 
and (overheated = false) 
and (global.charging = false) then
{
   pos = 0;
   ii = 0;
   viableweapon[ii]=1; 
   if (viableweapon[ii]=global.weapon) {pos=ii}
   
   if (global.wavebeamavail) 
   {
      ii+=1;
      viableweapon[ii]=2; 
      if (viableweapon[ii]=global.weapon) {pos=ii}
   }

   if (global.plasmabeamavail) 
   {
      ii+=1;
      viableweapon[ii]=4; 
      if (viableweapon[ii]=global.weapon) {pos=ii}
   }

   if (global.spazerbeamavail) 
   {
      ii+=1;
      viableweapon[ii]=5; 
      if (viableweapon[ii]=global.weapon) {pos=ii}
   }

   if (global.pulseavail) 
   {
      ii+=1;
      viableweapon[ii]=7; 
      if (viableweapon[ii]=global.weapon) {pos=ii}
   }

   if (global.icebeamavail) 
   {
      ii+=1;
      viableweapon[ii]=8; 
      if (viableweapon[ii]=global.weapon) {pos=ii}
   }

   if (global.novabeamavail) 
   {
      ii+=1;
      viableweapon[ii]=9; 
      if (viableweapon[ii]=global.weapon) {pos=ii}
   }

   if (global.darkbeamavail) 
   {
      ii+=1;
      viableweapon[ii]=10; 
      if (viableweapon[ii]=global.weapon) {pos=ii}
   }

   if (global.lightbeamavail) 
   {
      ii+=1;
      viableweapon[ii]=11; 
      if (viableweapon[ii]=global.weapon) {pos=ii}
   }

   if (global.phazonbeamavail) 
   {
      ii+=1;
      viableweapon[ii]=12; 
      if (viableweapon[ii]=global.weapon) {pos=ii}
   }
    
   pos+=dir
   if (pos>ii) {pos=0}
   if (pos<0) {pos=ii}
   global.weapon=viableweapon[pos]
   
   if (ii > 0)
   {
      sound_play(ChangeWeapon);   
      changeweap = false;
      alarm[4] = 10;
   }
}
else
{
   if (changeweap)
   and (global.morphed = true) 
   and (overheated = false) 
   and (global.charging = false) then   
   {   
      switch (global.weapon)
      {
         case 0:
            if (global.powerbombavail) then
            {
               global.weapon = 15;
               sound_play(ChangeWeapon);
               changeweap = false;
               alarm[4] = 10;
            }
            break;
         case 15:
            if (global.screwbombavail) then
            {
               global.weapon = 16;
               sound_play(ChangeWeapon);
               changeweap = false;
               alarm[4] = 10;
            }
            else
            {
               global.weapon = 0;
               sound_play(ChangeWeapon);
               changeweap = false;
               alarm[4] = 10;
            }        
            break;
         case 16:
            global.weapon = 0;
            sound_play(ChangeWeapon);
            changeweap = false;
            alarm[4] = 10;         
            break;
      }
   }
}
