//Argument 0 - Min dmg
//Argument 1 - Min dmg + this number = max dmg
if (global.speedboost) exit;
if (global.hypermode) argument0 = argument0/2;
if (instance_exists(objHomingMissile)) then
{
   with (objHomingMissile)
   {
      instance_create(x,y,objHMissileE);
      sound_play(Explosion6);
      global.homing = false;
      global.goback = true;
      global.missiletime = 0;
      instance_destroy();
   }
}
if (hurtable) then
{
   switch (global.suit)
   {
      case 1:
         health -= floor(random(argument1))+argument0;
         break;
      case 2:
         health -= floor(random(argument1*1.25))+argument0*1.25;
         break;
      case 3:
         health -= floor(random(argument1*.75))+argument0*.75;
         break;
      case 4:
         health -= floor(random(argument1*.5))+argument0*.5;
         break;
   }
   if (health < 30)
   and (health > 19)
   and (global.etanks = 0) 
   and (!sound_isplaying(LowOne))
   and (global.playlowhealthsnds = 1) then
   {
      sound_loop(LowOne);
      if (sound_isplaying(LowTwo)) sound_stop(LowTwo);
   }
   if (health < 20)
   and (health > 0)
   and (global.etanks = 0) 
   and (!sound_isplaying(LowTwo))
   and (global.playlowhealthsnds = 1) then
   {
      sound_loop(LowTwo);
      if (sound_isplaying(LowOne)) sound_stop(LowOne);
   }
   if (health <= 0) then
   {
      global.etanks -= 1;
      if (global.etanks < 0) and (health <= 0) then
      {
         if (sound_isplaying(LowOne)) sound_stop(LowOne);
         if (sound_isplaying(LowTwo)) sound_stop(LowTwo);
         global.etanks = global.maxetanks;
         health = 100;
         with (instance_create(x,y,objPlayerDying))
         {  
            switch (global.suit)
            {
               case 1: sprite_index = sprPlayerVaria; break;
               case 2: sprite_index = sprPlayerGravity; break;
               case 3: sprite_index = sprPlayerPhazon; break;
               case 4: sprite_index = sprPlayerCorruption; break;
            }
            image_angle = other.image_angle;
         }
         instance_destroy();
      }
      if (global.etanks >= 0) health += 100;
   }
   if (health > 0) then
      { damage = true; sound_play(Hurt); }
}
