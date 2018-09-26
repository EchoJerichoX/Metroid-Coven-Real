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
   ab = instance_create(x+c2,y+d2,objBeamShot);
   ab.sprite_index = sprWaveShot;
   ab.image_speed = .5;
   ab.image_xscale = 1.5;
   ab.image_yscale = 1.5;
   
   i1 = instance_create(x+c1,y+d1,objWaveChL);
   i1.image_angle = image_angle;
   i1.direction = image_angle;
   i1.speed = 8;
   i2 = instance_create(x+c1,y+d1,objWaveChR);
   i2.image_angle = image_angle;
   i2.direction = image_angle;
   i2.speed = 8;
   i3 = instance_create(x+c1,y+d1,objWaveChC);
   i3.image_angle = image_angle;
   i3.direction = image_angle;
   i3.speed = 8;
   
   var i,j;
   j = random(360);
   
   for (i=0; i<360; i+=90)
   {
       with (instance_create(x+c2,y+d2,objChargeReleaseFlak))
       {
           sprite_index = sprWaveChargeFlak;
           direction = i+j;
           speed = 4;
           trails = 4;
           turnspeed = 12;
           faderate = .035;
       }
   }
   
   sound_play(Shoot2C);
}
else
{
   ab = instance_create(x+c2,y+d2,objBeamShot);
   ab.sprite_index = sprWaveShot;
   ab.image_speed = .5;
   
   i1 = instance_create(x+c1,y+d1,objWaveL);
   i1.image_angle = image_angle;
   i1.direction = image_angle;
   i1.speed = 5;
   i2 = instance_create(x+c1,y+d1,objWaveR);
   i2.image_angle = image_angle;
   i2.direction = image_angle;
   i2.speed = 5;
   sound_play(Shoot2);
}
gunready = false;
alarm[0] = 10;
global.chargeshooting = false;
global.charge = 0;
cancharge = true;
