var DiffDir;
DiffDir=point_direction(x,y,mouse_x,mouse_y)-image_angle;
if abs(DiffDir)<=180 image_angle+=median(-20,20,DiffDir) else image_angle+=median(-20,20,DiffDir-sign(DiffDir)*360);

var DiffDir;
DiffDir=point_direction(x,y,mouse_x,mouse_y);
if ((d < 45 and d > 0) or (d < 360 and d > 135)){direction = d} // set direction to the mouse
aim = direction// set aim to direction
image_angle=(image_angle+(sin(degtorad(aim-image_angle))*12));
