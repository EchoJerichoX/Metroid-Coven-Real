a1 = point_distance(x,y,x+8,y+7);
b1 = point_direction(x,y,x+8,y+7);
a2 = point_distance(x,y,x+14,y+7);
b2 = point_direction(x,y,x+14,y+7);
c1 = lengthdir_x(a1,b1+image_angle);
d1 = lengthdir_y(a1,b1+image_angle);
c2 = lengthdir_x(a2,b2+image_angle);
d2 = lengthdir_y(a2,b2+image_angle);

if (global.charge >= 60) then
{
   ab = instance_create(x+c2,y+d2,objBeamShot);
   ab.sprite_index = sprSpazerShot;
   ab.image_speed = .5;
   ab.image_xscale = 1.5;
   ab.image_yscale = 1.5;
   
   mid = instance_create(x+c1,y+d1,objSpazerCh);
   with(mid) 
   {
       direction = point_direction(other.x,other.y,mouse_x,mouse_y);
   }
   with(instance_create(x+c1,y+d1,objSpazerCh)) 
   {
       direction = point_direction(other.x,other.y,mouse_x,mouse_y);
       mid = other.mid;
       side = "left";
   }
   with(instance_create(x+c1,y+d1,objSpazerCh)) 
   { 
       direction = point_direction(other.x,other.y,mouse_x,mouse_y);
       mid = other.mid;
       side = "right";
   }
   
   var i,j;
   j = random(360);
   
   for (i=0; i<360; i+=90)
   {
       with (instance_create(x+c2,y+d2,objChargeReleaseFlak))
       {
           sprite_index = sprSpazerChargeFlak;
           direction = i+j;
           speed = 2;
           trails = 4;
           turnspeed = 1;
           faderate = .03;
       }
   }
   
   sound_play(Shoot5C);
}
else
{
   ab = instance_create(x+c2,y+d2,objBeamShot);
   ab.sprite_index = sprSpazerShot;
   ab.image_speed = .5;
   
   mid = instance_create(x+c1,y+d1,objSpazer);
   with(mid) 
   {
       direction = point_direction(other.x,other.y,mouse_x,mouse_y);
   }
   with(instance_create(x+c1,y+d1,objSpazer)) 
   {
       direction = point_direction(other.x,other.y,mouse_x,mouse_y);
       mid = other.mid;
       side = "left";
   }
   with(instance_create(x+c1,y+d1,objSpazer)) 
   { 
       direction = point_direction(other.x,other.y,mouse_x,mouse_y);
       mid = other.mid;
       side = "right";
   }
   sound_play(Shoot5);
}
gunready = false;
alarm[0] = 10;
global.chargeshooting = false;
global.charge = 0;
cancharge = true;
