// argument0 = x
// argument1 = y
// argument2 = radius
// argument3 = brightness
// argument4 = reveal
if !instance_exists(objLightEngine) {return -1}
if argument0+argument2< view_xview[0] {return 1};
if argument1+argument2< view_yview[0] {return 1};
if argument0-argument2> view_xview[0]+view_wview[0] {return 1};
if argument1-argument2> view_yview[0]+view_hview[0] {return 1};
var radius;
radius=argument2*.008;
surface_set_target(objLightEngine.LightMap);
draw_sprite_ext(sprLightCircle,0,argument0-view_xview,argument1-view_yview,radius,radius,0,c_white,argument3);
surface_reset_target()
return 1
