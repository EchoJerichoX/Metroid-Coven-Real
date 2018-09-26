switch (object_index)
{
   case objIceBarrierUD:
   case objIceBarrierLR:
      a = instance_create(x,y,objIceBarrierShatter)
      if (object_index = objIceBarrierUD) a.image_angle = choose(0,180);
      if (object_index = objIceBarrierLR) a.image_angle = choose(90,270);
      a.image_alpha = image_alpha;
      repeat(20+random(10))
      {
         var xx,yy;
         xx = lengthdir_x(random(sprite_width/2-10),random(360));//x-sprite_width/2+(random(sprite_width));
         yy = lengthdir_y(random(sprite_height/2-10),random(360));//y-sprite_height/2+(random(sprite_height));
         b = instance_create(x+xx,y+yy,objIceBarrierGlitter);
         b.speed = 1+random(2);
         b.direction = random(360);
         //b.gravity = .1;
         //b.gravity_direction = direction-180;
         b.image_angle = random(360);
         a = instance_create(x+xx,y+yy,objIceShatter);
         a.speed = 2+random(3);
      }
      sound_play(IceShatter);
      repeat (5) SpawnItem();
      break;
// -------------------------------------------------------------------------------------------------------------------------
   case objSpacePirateFrozen:
      var xx,yy;
      xx = lengthdir_x(random(sprite_width/2),random(360));//x-sprite_width/2+(random(sprite_width));
      yy = lengthdir_y(random(sprite_height/2),random(360));//y-sprite_height/2+(random(sprite_height));
      instance_create(x,y,objIceShatterExplode);
      repeat(4) instance_create(x+xx,y+yy,objIceShatter);
      sound_play(IceShatter);
      SpawnItem();
      break;
}
instance_destroy();
