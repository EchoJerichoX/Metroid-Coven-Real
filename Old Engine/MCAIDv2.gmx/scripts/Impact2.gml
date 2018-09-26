////////////////////////////////////////////////////////////////
// 0 - Sprite.                                                //
// 1 - Amount of flak. Will be randomized and used as a base. //
// Ex: Impact(sprIceGleam,8);                                 //
////////////////////////////////////////////////////////////////

repeat (round(random(2))+(argument1-1))
{
   flak = instance_create(x,y,objFlak2);
   flak.sprite_index = argument0;
   flak.speed = random(3)+3;
   flak.direction = (random(180)+direction-90)-180;
   flak.grav = random(.6)+.3;
   flak.image_alpha = random(.3)+.7;
   flak.depth = 70;
   var scale;
   scale = random(.5)+.5
   flak.image_xscale = scale;
   flak.image_yscale = scale;
}
