background_visible[1] = false;
if (global.debugmode = true)
{
   draw_set_alpha(.2);
   draw_set_color(c_white);
   draw_rectangle(view_xview[0]+110,view_yview[0]+41,view_xview[0]+230,view_yview[0]+121,false);
   
   draw_set_alpha(.9);
   draw_set_color(c_black);
   draw_set_font(Debug);
   draw_set_valign(fa_top);
   draw_set_halign(fa_left);
   // Drawn text below is sorted as it shows in-game from top to bottom.
   draw_text(view_xview[0]+111,view_yview[0]+40,string_insert(string_format(fps,2,1), "FPS: ",6));
   draw_text(view_xview[0]+111,view_yview[0]+50,string_insert(string_format(instance_number(all),4,0), "Instances: ",12));
   if (instance_exists(PlayerParent))
   {
      draw_text(view_xview[0]+111,view_yview[0]+65,string_insert(string_format(PlayerParent.x,4,1), "X Coord.: ",11));
      draw_text(view_xview[0]+111,view_yview[0]+75,string_insert(string_format(PlayerParent.y,4,1), "Y Coord.: ",11));
   }
   draw_text(view_xview[0]+111,view_yview[0]+90,string_insert(string_format(global.curroom,1,0), "Current Room: ",15));
   if (instance_exists(objLightEngine))
   {
      draw_text(view_xview[0]+111,view_yview[0]+100,string_insert(string_format(objLightEngine.AmbientBrightness,4,4), "Light Level: ",14));
   }
   background_visible[1] = true;
   
   if (!instance_exists(GainAllItems)) instance_create(x,y,GainAllItems);
}
else 
{
   background_visible[1] = false;
   if (instance_exists(GainAllItems)) then
      { with (GainAllItems) instance_destroy(); }
}
