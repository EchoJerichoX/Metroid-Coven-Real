     --------------------------
 ----------------------------------
--------- BY: EchoJerichoX ---------
 ----------------------------------
     --------------------------
 ----------------------------------
------ Metroid: Coven Creator ------
 ----------------------------------
     --------------------------
 ----------------------------------
--- Visit MetroidCoven.webs.com! ---
 ----------------------------------
     --------------------------

------ CONTACT INFORMATION ------

You may direct questions to the following places:

GMC Forums: EchoJerichoX
Fan Mission Forums: EchoJerichoX
E-Mail: darkfox@wavecable.com OR echojerichox@live.com (I check Wavecable more frequently).
MSN Messenger: darkfox@wavecable.com

---------------------------------

------ GENERAL INFORMATION ------

Sprite "strips" intended for use for Game Maker. Can be used in any other program of course, but do not edit with
   a program that does not support anti-alising and/or transparency. You will lose the effect. You can, however,
   safely remove the transparency and glow effects simply by importing them into a program that doesn't have the
   necessary support.

Use image_angle to get them in different directions, or rotate them yourself. Quality should be pretty lossless in 
   Game Maker.
Use image_scale to get differently sized explosions for charged beams.

---------------------------------

------ WAVE AND WIDE BEAMS ------

Make sure the origins properly align when using the Wave or Wide Beam start and loop sprites. Make sure the origin on the start
   sprite is the in the same area in relation to the origin for the loop sprite in order to ensure a smooth transition.
   Use the final subimage in the start sprite as reference.
To make the sprites work together, set the sprite in the object editor to the starting sprite, and put this line in 
   the "Animation" End event:

   if (sprite_index != sprWaveLoop) sprite_index = sprWaveLoop; //Or whatever your sprite name is. Same for Wide Beam.

---------------------------------

----- SPAZER AND WIDE BEAMS -----

The Spazer and Wide Beams use a special mathematic equation in order to make the beams split properly and give each object its
   own instance. This means every beam isn't destroyed if one of them hits something, like in Super Metroid.
To create the effect, use the following scripts. (NOTE! Some aligning is needed in order to work with your game. These scripts
   were pulled right out of Metroid: Coven and were only lightly edited and parts omitted for merging purposes. They are
   designed for top-down mouse aiming. Only the x and y coordinates in the firing script are what you need to change.)
In your firing script:

   mid = instance_create(x,y,objSpazer); // Or whatever beam is in question. Same for Wide Beam.
   with(mid) 
   {
      direction = point_direction(other.x,other.y,mouse_x,mouse_y);
   }
   with(instance_create(x,y,objSpazer)) 
   {
      direction = point_direction(other.x,other.y,mouse_x,mouse_y);
      mid = other.mid;
      side = "left";
   }
   with(instance_create(x,y,objSpazer)) 
   { 
      direction = point_direction(other.x,other.y,mouse_x,mouse_y);
      mid = other.mid;
      side = "right";
   }

In the beam's "Create" event:

   stick = true;
   dist = 0;
   side = "mid"
   mid = -1

Finally, in the beam's "Step" event:

   image_angle = direction;
   if( side != "mid" and dist < 6) 
   {
      if( side == "left") 
      {
         x += 10*cos(degtorad(90+direction));
         y -= 10*sin(degtorad(90+direction));
      }
      else 
      {
         x -= 10*cos(degtorad(90+direction));
         y += 10*sin(degtorad(90+direction));
      }
      dist += 2;
   }

The settings are customizable, but I advise against it. This provides the most realistic spread in terms of what it looks like
   in the Metroid games. Specifically, Super Metroid.

---------------------------------

--------- END OF README ---------

Make sure credit goes to EchoJerichoX and Miles07, from whom I got the sprites to use as a base.

Check out the Metroid: Coven website to see full updates and screenshots of my project.

Enjoy!

- Echo

---------------------------------