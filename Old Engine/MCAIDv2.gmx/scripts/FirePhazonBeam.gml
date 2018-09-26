if (gunready)
{
   if (global.phazon >= .5)
   {
      a1 = point_distance(x,y,x+11,y+7);
      b1 = point_direction(x,y,x+11,y+7);
      a2 = point_distance(x,y,x+17,y+7);
      b2 = point_direction(x,y,x+17,y+7);
      c1 = lengthdir_x(a1,b1+image_angle);
      d1 = lengthdir_y(a1,b1+image_angle);
      c2 = lengthdir_x(a2,b2+image_angle);
      d2 = lengthdir_y(a2,b2+image_angle);
       
      ab = instance_create(x+c1,y+d1,objPhazon);
      ab.direction = random(4)+image_angle-2;
      ab.image_angle = ab.direction;
       
      cd = instance_create(x+c2,y+d2,objBeamShot);
      cd.sprite_index = sprPhazonShot;
      cd.image_speed = .5;
   
      gunready = false;
      sound_play(Shoot10);
      alarm[0] = global.weaponspeed;
      global.phazon -= .5;
      if (global.phazon <= 0) global.phazon = 0;
   }
   else 
   {
      var a,b,c,d;
      
      a = point_distance(x,y,x+17,y+7);
      b = point_direction(x,y,x+17,y+7);
      c = lengthdir_x(a,b+image_angle);
      d = lengthdir_y(a,b+image_angle);
      
      repeat(random(5)+10)
      {
         cb = instance_create(x+c,y+d,objPhazonFizz);
         cb.basedir = image_angle;
         cb.dir = 15;
         cb.direction = (cb.basedir-cb.dir)+(random(cb.dir*2));
      }
      sound_play(Fizz);
      gunready = false;
      alarm[0] = global.weaponspeed;
   }
}
