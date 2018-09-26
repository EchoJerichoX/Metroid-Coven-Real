if (novaready) then
{
   a1 = point_distance(x,y,x+8,y+7);
   b1 = point_direction(x,y,x+8,y+7);
   a2 = point_distance(x,y,x+14,y+7);
   b2 = point_direction(x,y,x+14,y+7);
   c1 = lengthdir_x(a1,b1+image_angle);
   d1 = lengthdir_y(a1,b1+image_angle);
   c2 = lengthdir_x(a2,b2+image_angle);
   d2 = lengthdir_y(a2,b2+image_angle);
    
   if (global.hypermode = true)
   {
      repeat(choose(1,2))
      {
         ab = instance_create(x+c1,y+d1,objNova);
         ab.direction = random(4)+image_angle-2;
         ab.image_angle = ab.direction;
      }
   }
   else 
   {
      ab = instance_create(x+c1,y+d1,objNova);
      ab.direction = random(4)+image_angle-2;
      ab.image_angle = ab.direction;
   }
   
   cd = instance_create(x+c2,y+d2,objBeamShot);
   cd.sprite_index = sprNovaShot;
   cd.image_speed = .5;
   
   novaready = false;
   sound_play(Shoot8);
}
