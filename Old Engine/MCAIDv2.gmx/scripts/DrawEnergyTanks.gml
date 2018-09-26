x = view_xview[0]+162;
y = view_yview[0]+5;
if (instance_exists(PlayerParent)) then
{
   img = global.etanks;
   draw_sprite_ext(sprite_index,img,x,y,1,1,0,c_white,1);
}
