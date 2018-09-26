// argument0 = x
// argument1 = y
// argument2 = radius
// argument3 = brightness
if !instance_exists(objLightEngine) {return -1};
if argument0+argument2< view_xview[0] {return 1};
if argument1+argument2< view_yview[0] {return 1};
if argument0-argument2> view_xview[0]+view_wview[0] {return 1};
if argument1-argument2> view_yview[0]+view_hview[0] {return 1};
if argument3=0 {return 1};
with objLightEngine
{
stack[index+0]=argument0-view_xview;
stack[index+1]=argument1-view_yview;
stack[index+2]=argument2*.008;
stack[index+3]=argument3;
index+=4;
}
return 1
