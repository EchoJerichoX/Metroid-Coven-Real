////////////////////////////////////////////////////////////////
// 0 - Sprite.                                                //
// 1 - Amount of flak. Will be randomized and used as a base. //
// Ex: Impact(sprIceGleam,8);                                 //
////////////////////////////////////////////////////////////////

repeat(choose(argument1-2,argument1-1,argument1,argument1+1,argument1+2)) 
{
   flak = instance_create(x,y,objFlak);
   flak.sprite_index = argument0;
   flak.speed = random(3)+1;
   flak.direction = (random(180)+direction-90)-180;
   flak.gravity_direction = flak.direction-180;
   flak.gravity = .2;
   flak.image_speed = random(.2)+.1;
   flak.image_alpha = random(.3)+.3;
   //flak.depth = 70;
   var scale;
   scale = random(.5)+.5
   flak.image_xscale = scale;
   flak.image_yscale = scale;
   if (argument0 != sprWaveFlak) flak.image_angle = random(360);
   else flak.image_angle = image_angle;
}
