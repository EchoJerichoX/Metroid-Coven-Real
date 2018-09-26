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
   ab = instance_create(x+c1,y+d1,objNovaCh);
   ab.direction = random(2)+image_angle-1;
   ab.image_angle = ab.direction;
   
   cd = instance_create(x+c2,y+d2,objBeamShot);
   cd.sprite_index = sprNovaShot;
   cd.image_speed = .5;
   cd.image_xscale = 1.5;
   cd.image_yscale = 1.5;
   
   var i,j;
   j = random(360);
   
   for (i=0; i<360; i+=72)
   {
      with (instance_create(x+c2,y+d2,objChargeReleaseFlak))
      {
         sprite_index = sprNovaChargeFlak;
         direction = i+j;
         speed = 2;
         trails = 4;
         turnspeed = 0;
         faderate = .04;
      }
   }
   
   sound_play(Shoot8C);
}
else
{
   ab = instance_create(x+c1,y+d1,objNova);
   ab.direction = random(4)+image_angle-2;
   ab.image_angle = ab.direction;
   
   cd = instance_create(x+c2,y+d2,objBeamShot);
   cd.sprite_index = sprNovaShot;
   cd.image_speed = .5;
   
   sound_play(Shoot8);
}
gunready = false;
alarm[0] = 10;
global.chargeshooting = false;
global.charge = 0;
cancharge = true;
