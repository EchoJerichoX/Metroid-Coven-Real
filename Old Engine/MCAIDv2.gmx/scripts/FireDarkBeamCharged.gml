a1 = point_distance(x,y,x+9,y+7);
b1 = point_direction(x,y,x+9,y+7);
a2 = point_distance(x,y,x+15,y+7);
b2 = point_direction(x,y,x+15,y+7);
c1 = lengthdir_x(a1,b1+image_angle);
d1 = lengthdir_y(a1,b1+image_angle);
c2 = lengthdir_x(a2,b2+image_angle);
d2 = lengthdir_y(a2,b2+image_angle);

if (global.charge >= 60) then
{
   ab = instance_create(x+c2,y+d2,objBeamShot);
   ab.sprite_index = sprDarkShot;
   ab.image_speed = .5;
   ab.image_xscale = 1.5;
   ab.image_yscale = 1.5;
   
   cd = instance_create(x+c1,y+d1,objDarkCh);
   cd.direction = random(3.5) + image_angle-1.75;
   cd.image_angle = cd.direction;
   
   for (i=0; i<360; i+=60)
   {
       with (instance_create(x+c2,y+d2,objChargeReleaseFlak))
       {
           sprite_index = sprDarkChargeFlak;
           direction = random(360);
           speed = 2;
           trails = 4;
           turnspeed = choose(6,-6);
           faderate = .03;
       }
   }
   
   sound_play(Shoot9C);
}
else
{
   ab = instance_create(x+c1,y+d1,objDark);
   ab.direction = random(7)+image_angle-3.5;
   ab.image_angle = ab.direction;
    
   cd = instance_create(x+c2,y+d2,objBeamShot);
   cd.sprite_index = sprDarkShot;
   cd.image_speed = .5;
   
   sound_play(Shoot9);
}
gunready = false;
alarm[0] = 10;
global.chargeshooting = false;
global.charge = 0;
cancharge = true;
