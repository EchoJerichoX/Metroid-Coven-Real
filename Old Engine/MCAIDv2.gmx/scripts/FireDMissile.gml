if (global.supermissiles > 1) and (gunready) then
{
   var a,b,c,d;
   
   a = point_distance(x,y,x+12,y+7);
   b = point_direction(x,y,x+12,y+7);
   c = lengthdir_x(a,b+image_angle);
   d = lengthdir_y(a,b+image_angle);
   
   cb = instance_create(x+c,y+d,objDiffusionMissile);
   cb.direction = image_angle;
   gunready = false;
   global.supermissiles -= 2;
   sound_play(Shoot3)
   alarm[0] = global.weaponspeed;
}

