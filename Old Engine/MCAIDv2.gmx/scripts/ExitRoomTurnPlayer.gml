with (other)
{
   a = instance_create(x,y,objPlayerStill);
   if (global.speedboost) and (!global.morphed) a.boost = true;
   a.image_angle = image_angle;
   a.destindir = point_direction(xprevious,yprevious,x,y);
   global.exitdir = a.destindir;
   if (a.boost = true)
   {
      a.speed = 4+global.playersuitspeed*2;
      a.image_speed = 1;
   }
   else
   {
      a.image_speed = .5;
      if (global.morphed) a.speed = global.playerballspeed;
      else a.speed = global.playersuitspeed;
   }
   //global.speedboost = false;
   //if (sound_isplaying(SpeedBoost)) sound_stop(SpeedBoost);
   //if (sound_isplaying(SpeedBoostBuildup)) sound_stop(SpeedBoostBuildup);
   a.direction = point_direction(xprevious,yprevious,x,y)
   instance_destroy();
}
