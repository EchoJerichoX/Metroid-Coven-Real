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
    
    
   mid = instance_create(x+c1,y+d1,objSpazer);
   with(mid) 
   {
       direction = other.image_angle;
   }
   with(instance_create(x+c1,y+d1,objSpazer)) 
   {
       direction = other.image_angle;
       mid = other.mid;
       side = "left";
   }
   with(instance_create(x+c1,y+d1,objSpazer)) 
   { 
       direction = other.image_angle;
       mid = other.mid;
       side = "right";
   }
   
   cd = instance_create(x+c2,y+d2,objBeamShot);
   cd.sprite_index = sprSpazerShot;
   cd.image_speed = .5;
   
   gunready = false;
   sound_play(Shoot5);
   alarm[0] = global.weaponspeed;
    
    
}
