if (instance_exists(SealedDoorParent)) then
{
   with (instance_create(x,y,objAchievementController)) 
      { alarm[0] = 180; alarm[1] = 150;}
   sound_play(DoorBuildup);
   with (SealedDoorParent)
   {
      if (link = other.link) deac = true;
      switch (global.curroom)
      {
         case 5: //AIDemo5
            global.aidemo5gendestroyed = 1;
            break;
      }
   }
}
