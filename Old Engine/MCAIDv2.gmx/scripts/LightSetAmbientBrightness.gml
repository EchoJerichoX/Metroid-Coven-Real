// LightSetAmbientBrightness(calpha,[colorspeed])
// argument0 = alpha
// argument1 = FadeSpeed
if !instance_exists(objLightEngine) {return -1}
var alpha, fadespeed;
alpha=argument0
if 0==argument1 {fadespeed=.0125}
else {fadespeed=argument1}
objLightEngine.TargetBrightness=alpha;
objLightEngine.FadeSpeed=fadespeed;
return 1
