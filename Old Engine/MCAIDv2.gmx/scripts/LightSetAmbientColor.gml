// LightSetAmbientColor(color,[colorspeed])
// argument0 = color
// argument1 = colorspeed

if !instance_exists(objLightEngine) {return -1}
var color, colorspeed;
color=make_color_hsv(color_get_hue(argument0),/*color_get_saturation(argument0)*/255,255)
if 0==argument1 {colorspeed=.0125}
else {colorspeed=argument1}
objLightEngine.TargetColor=color;
objLightEngine.ColorSpeed=colorspeed;
return 1
