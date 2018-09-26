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
    
   ab1 = instance_create(x+c1,y+d1,objWaveL);
   ab1.direction = image_angle;
   ab1.image_angle = ab1.direction;
   ab1.speed = 4;
   ab2 = instance_create(x+c1,y+d1,objWaveR);
   ab2.direction = image_angle;
   ab2.image_angle = ab2.direction;
   ab2.speed = 4;
    
   cd = instance_create(x+c2,y+d2,objBeamShot);
   cd.sprite_index = sprWaveShot;
   cd.image_speed = .5;
    
   gunready = false;
   sound_play(Shoot2)
   alarm[0] = global.weaponspeed;
}
