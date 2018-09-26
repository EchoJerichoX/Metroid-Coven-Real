if (gunready)
{
   a1 = point_distance(x,y,x+8,y+7);
   b1 = point_direction(x,y,x+8,y+7);
   a2 = point_distance(x,y,x+14,y+7);
   b2 = point_direction(x,y,x+14,y+7);
   c1 = lengthdir_x(a1,b1+image_angle);
   d1 = lengthdir_y(a1,b1+image_angle);
   c2 = lengthdir_x(a2,b2+image_angle);
   d2 = lengthdir_y(a2,b2+image_angle);
    
   ab = instance_create(x+c1,y+d1,objPower);
   ab.direction = random(10)+image_angle-5;
   ab.image_angle = ab.direction;
    
   cd = instance_create(x+c2,y+d2,objBeamShot);
   cd.sprite_index = sprPowerShot;
   cd.image_speed = .5;
    
   gunready = false;
   sound_play(Shoot1);
   alarm[0] = global.weaponspeed;
}
