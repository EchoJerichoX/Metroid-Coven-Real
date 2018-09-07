if (instance_exists(oCannon))
{
    if (MorphBall = false) oCannon.image_alpha = 1;
    else oCannon.image_alpha = 0;
}
if (CanTakeHit = false)
    { col = choose(.8,.5); image_blend = c_gray; }
else
    { col = 1; image_blend = c_white; }
draw_sprite_ext(sprite_index,image_single,x,y,image_xscale,image_yscale,image_angle,image_blend,col);
