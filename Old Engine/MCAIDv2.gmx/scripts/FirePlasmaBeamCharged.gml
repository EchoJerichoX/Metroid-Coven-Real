if (overheated = false)
{    
   a1 = point_distance(x,y,x+11,y+7);
   b1 = point_direction(x,y,x+11,y+7);
   a2 = point_distance(x,y,x+17,y+7);
   b2 = point_direction(x,y,x+17,y+7);
   c1 = lengthdir_x(a1,b1+image_angle);
   d1 = lengthdir_y(a1,b1+image_angle);
   c2 = lengthdir_x(a2,b2+image_angle);
   d2 = lengthdir_y(a2,b2+image_angle);
    
   if (global.charge >= 60) then
   {
      ab = instance_create(x+c2,y+d2,objBeamShot);
      ab.sprite_index = sprPlasmaShot;
      ab.image_speed = .5;
      ab.image_xscale = 1.5;
      ab.image_yscale = 1.5;
      
      cd = instance_create(x+c1,y+d1,objPlasmaCh);
      cd.direction = image_angle;
      cd.image_angle = direction;
      
      for (i=0; i<360; i+=30)
      {
         with (instance_create(x+c2,y+d2,objChargeReleaseFlak))
         {
            sprite_index = sprPlasmaChargeFlak;
            direction = random(360);
            speed = random(2)+1;
            trails = 4;
            turnspeed = -10+random(20);
            faderate = .05;
         }
      }
      
      sound_play(Shoot4C);
      global.overheat += 40;
   }
   else
   {
      ab = instance_create(x+c2,y+d2,objBeamShot);
      ab.sprite_index = sprPlasmaShot;
      ab.image_speed = .5;
      
      cd = instance_create(x+c1,y+d1,objPlasma);
      cd.direction = image_angle;
      cd.image_angle = direction;
      sound_play(Shoot4);
      global.overheat += 10;
   }
   gunready = false;
   alarm[0] = 10;
   global.chargeshooting = false;
   global.charge = 0;
   cancharge = true;
}
