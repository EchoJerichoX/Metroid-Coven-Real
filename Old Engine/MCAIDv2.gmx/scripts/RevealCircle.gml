// argument0 = x
// argument1 = y
// argument2 = radius
// argument3 = brightness

if !instance_exists(objHideMap) {return -1}
var xview, yview;
xview = objHideMap.view_x;
yview = objHideMap.view_y;
if ((argument0+argument2) < xview) return 1;
if ((argument1+argument2) < yview) return 1;
if ((argument0-argument2) > xview+view_wview[0]) return 1;
if ((argument1-argument2) > yview+view_hview[0]) return 1;
var radius;
radius = argument2*.008;
surface_set_target(objHideMap.HideMap);
draw_set_blend_mode(bm_subtract);
draw_sprite_ext(sprLightCircle,0,argument0-xview+64,argument1-yview+64,radius,radius,0,c_white,argument3);
draw_set_blend_mode(bm_normal);
surface_reset_target();
return 1;
