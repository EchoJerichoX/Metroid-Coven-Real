// argument0 = x
// argument1 = y
// argument2 = radius
// argument3 = brightness
if !instance_exists(objLightEngine) {return -1}
var radius;
radius=argument2/128
surface_set_target(objLightEngine.LightMap);
draw_set_color(c_black)
draw_set_alpha(argument3)
draw_circle(argument0, argument1, argument2,0)
draw_set_alpha(argument3*.6)
draw_circle(argument0, argument1, 1.33*argument2,0)
draw_set_alpha(argument3*.3)
draw_circle(argument0, argument1, 1.66*argument2,0)
//draw_sprite_ext(sprLightCircle,0,argument0-view_xview,argument1-view_yview,radius,radius,0,c_white,argument3);
surface_reset_target()
return 1
