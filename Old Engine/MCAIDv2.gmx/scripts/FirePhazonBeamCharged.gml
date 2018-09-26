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
   if (global.phazon >= 20)
   {
      for (i=image_angle-20;i<image_angle+21;i+=10)
      {
         ab = instance_create(x+c1,y+d1,objPhazonCh);
         ab.direction = i;
         ab.image_angle = ab.direction;
      }
      cd = instance_create(x+c2,y+d2,objBeamShot);
      cd.sprite_index = sprPhazonShot;
      cd.image_speed = .5;
      cd.image_xscale = 1.5;
      cd.image_yscale = 1.5;
      
      var i,j;
      j = random(360);
      
      for (i=0; i<360; i+=40)
      {
         with (instance_create(x+c2,y+d2,objChargeReleaseFlak))
         {
            sprite_index = sprPhazonChargeFlak;
            direction = i+j;
            speed = 3;
            trails = 4;
            turnspeed = 3;
            faderate = .05;
         }
      }
      sound_play(Shoot10C);
      gunready = false;
      alarm[0] = 10;
      global.chargeshooting = false;
      global.charge = 0;
      cancharge = true;
      global.phazon -= 20;
      if (global.phazon <= 20) global.phazon = 0;
   }
   else if (global.phazon < 20) and (global.phazon >= .5)
   {
      ab = instance_create(x+c1,y+d1,objPhazon);
      ab.direction = random(4)+image_angle-2;
      ab.image_angle = ab.direction;
       
      cd = instance_create(x+c2,y+d2,objBeamShot);
      cd.sprite_index = sprPhazonShot;
      cd.image_speed = .5;
      
      sound_play(Shoot10);
      global.chargeshooting = false;
      global.charge = 0;
      cancharge = true;
      global.phazon -= .5;
      if (global.phazon <= 0) global.phazon = 0;
   }
   else
   {
      repeat(15)
      {
         cb = instance_create(x+c2,y+d2,objPhazonFizz);
         cb.basedir = image_angle;
      }
      global.chargeshooting = false;
      global.charge = 0;
      cancharge = true;
      sound_play(Fizz);
      gunready = false;
      alarm[0] = global.weaponspeed;
   }
}
else if (global.phazon >= .5)
{
   ab = instance_create(x+c1,y+d1,objPhazon);
   ab.direction = random(4)+image_angle-2;
   ab.image_angle = ab.direction;
    
   cd = instance_create(x+c2,y+d2,objBeamShot);
   cd.sprite_index = sprPhazonShot;
   cd.image_speed = .5;
    
   sound_play(Shoot10);
   global.chargeshooting = false;
   global.charge = 0;
   cancharge = true;
   global.phazon -= .5;
   if (global.phazon <= 0) global.phazon = 0;
}
else
{
   repeat(15)
   {
      cb = instance_create(x+c2,y+d2,objPhazonFizz);
      cb.basedir = image_angle;
   }
   global.chargeshooting = false;
   global.charge = 0;
   cancharge = true;
   sound_play(Fizz);
   gunready = false;
   alarm[0] = global.weaponspeed;
}
