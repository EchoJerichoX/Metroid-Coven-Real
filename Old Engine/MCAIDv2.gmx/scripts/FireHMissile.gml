if (global.missiles > 2)
and (instance_number(objHomingMissile) < 1)
and (global.homing = false)
and (global.goback = false)
and (gunready) then
{
   var a,b,c,d;
   
   a = point_distance(x,y,x+12,y+7);
   b = point_direction(x,y,x+12,y+7);
   c = lengthdir_x(a,b+image_angle);
   d = lengthdir_y(a,b+image_angle);
   
   cb = instance_create(x+c,y+d,objHomingMissile);
   cb.direction = image_angle;
   gunready = false;
   global.missiles -= 3;
   sound_play(Shoot3)
   alarm[0] = 15;
}

