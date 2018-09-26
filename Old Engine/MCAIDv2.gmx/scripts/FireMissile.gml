if (global.missiles > 0) and (novaready) then
{
   var a,b,c,d;
   
   a = point_distance(x,y,x+12,y+7);
   b = point_direction(x,y,x+12,y+7);
   c = lengthdir_x(a,b+image_angle);
   d = lengthdir_y(a,b+image_angle);
   
   cb = instance_create(x+c,y+d,objMissile);
   cb.direction = image_angle;
   novaready = false;
   global.missiles -= 1;
   sound_play(Shoot3)
}
