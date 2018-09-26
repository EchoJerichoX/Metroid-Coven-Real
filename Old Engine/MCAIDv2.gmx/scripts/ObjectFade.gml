if (disappear = true) then
{
   image_alpha -= .01;
   if (image_alpha <= 0) then
   {
      instance_destroy();
   }
}
