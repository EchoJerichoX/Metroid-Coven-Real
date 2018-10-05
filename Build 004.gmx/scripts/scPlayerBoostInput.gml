KeyBoost             = mouse_check_button(mb_middle);
KeyBoostPressed      = mouse_check_button_pressed(mb_middle);
KeyBoostReleased     = mouse_check_button_released(mb_middle);

if (KeyBoost) boosting = 1;
else boosting = 0;

var boostdir = point_direction(x,y,mouse_x,mouse_y);

if (boostdelay > 0)
    { boostdelay -= 1; exit; }
else boostdone = 0;

// Input controller.
if (boosting)
{
    if (boostup < 60) boostup += 1;
    if (boostup = 60) and (boostready < 10) boostready += 1;
    if (boostready = 10) boostgo = 1;
    else boostgo = 0;
    direction = point_direction(x,y,mouse_x,mouse_y);
}
else
{
    boostgo = 0;
    boostready = 0;
    if (boostup > 0) boostup -= 1;
}

if (boostgo) and (!boostdone)
{
    var destx = mouse_x;
    var desty = mouse_y;
    motion_add(boostdir,20);
    friction = 1;
    boostdone = 1;
    boostdelay = 120;
}
