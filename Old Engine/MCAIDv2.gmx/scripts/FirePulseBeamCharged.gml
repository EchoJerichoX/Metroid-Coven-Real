if (global.charge >= 60) then
{
   alarm[8] = 1;
}
else
{
   a1 = point_distance(x,y,x+9,y+7);
   b1 = point_direction(x,y,x+9,y+7);
   a2 = point_distance(x,y,x+15,y+7);
   b2 = point_direction(x,y,x+15,y+7);
   c1 = lengthdir_x(a1,b1+image_angle);
   d1 = lengthdir_y(a1,b1+image_angle);
   c2 = lengthdir_x(a2,b2+image_angle);
   d2 = lengthdir_y(a2,b2+image_angle);
    
   ab = instance_create(x+c1,y+d1,objPulse);
   ab.direction = random(3)+image_angle-1.5;
   ab.image_angle = ab.direction;
    
   cd = instance_create(x+c2,y+d2,objBeamShot);
   cd.sprite_index = sprPulseShot;
   cd.image_speed = .5;
   
   sound_play(Shoot6);
   
   gunready = false;
   alarm[0] = 10;
   global.chargeshooting = false;
   global.charge = 0;
   cancharge = true;
}

