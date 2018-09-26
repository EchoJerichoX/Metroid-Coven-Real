 //(x,y,r1,r2,d,ao)
var a,am;
a = 0;am = 360 / argument4;
for (a = 0; a < argument4; a += 1)
{
draw_triangle(argument0 + lengthdir_x(argument2,a*am+argument5),argument1 + lengthdir_y(argument2,a*am+argument5),
argument0 + lengthdir_x(argument3,a*am+argument5),argument1 + lengthdir_y(argument3,a*am+argument5),
argument0 + lengthdir_x(argument2,(a+1)*am+argument5),argument1 + lengthdir_y(argument2,(a+1)*am+argument5),0);

draw_triangle(argument0 + lengthdir_x(argument3,a*am+argument5),argument1 + lengthdir_y(argument3,a*am+argument5),
argument0 + lengthdir_x(argument3,(a+1)*am+argument5),argument1 + lengthdir_y(argument3,(a+1)*am+argument5),
argument0 + lengthdir_x(argument2,(a+1)*am+argument5),argument1 + lengthdir_y(argument2,(a+1)*am+argument5),0);
}
