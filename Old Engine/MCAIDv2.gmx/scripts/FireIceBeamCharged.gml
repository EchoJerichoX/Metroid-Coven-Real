a1 = point_distance(x,y,x+8,y+7);
b1 = point_direction(x,y,x+8,y+7);
a2 = point_distance(x,y,x+14,y+7);
b2 = point_direction(x,y,x+14,y+7);
c1 = lengthdir_x(a1,b1+image_angle);
d1 = lengthdir_y(a1,b1+image_angle);
c2 = lengthdir_x(a2,b2+image_angle);
d2 = lengthdir_y(a2,b2+image_angle);

if (global.charge >= 60) then
{
   ab = instance_create(x+c1,y+d1,objIceCh);
   ab.direction = random(4)+image_angle-2;
   ab.image_angle = ab.direction;
    
   cd = instance_create(x+c2,y+d2,objBeamShot);
   cd.sprite_index = sprIceShot;
   cd.image_speed = .5;
   cd.image_xscale = 1.5;
   cd.image_yscale = 1.5;
   
   var i;
   
   for (i=0; i<360; i+=40)
   {
      with (instance_create(x+c2,y+d2,objChargeReleaseFlak))
      {
         sprite_index = sprIceChargeFlak;
         direction = random(360);
         speed = random(2)+2;
         trails = 3;
         turnspeed = -3+random(6);;
         faderate = .03;
      }
   }

   sound_play(Shoot7C);
}
else
{
   ab = instance_create(x+c1,y+d1,objIce);
   ab.direction = random(8)+image_angle-4;
   ab.image_angle = ab.direction;
   
   cd = instance_create(x+c2,y+d2,objBeamShot);
   cd.sprite_index = sprIceShot;
   cd.image_speed = .5;
   
   sound_play(Shoot7);
}
gunready = false;
alarm[0] = 10;
global.chargeshooting = false;
global.charge = 0;
cancharge = true;
