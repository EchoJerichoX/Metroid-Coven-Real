switch (state)
{
    case 0: // Idle.
        speed = 0;
        image_speed = 0;
        if (statechange = 0) // If nothing happened, and we are looking to change states...
        {
            state = 1; // Move to the turning state (later, maybe add a different transitional state).
            destdir = round(random(360/turnrate))*turnrate; // Pick a target rotation for the turning state.
        }
        break;
    case 1: // Turn.
        if (direction = destdir) // If we are facing the target rotation...
        {
            var cellx,celly;
            cellx = random(room_width);
            celly = random(room_height);
            if (mp_grid_get_cell(eId.aigrid,cellx,celly) = 0) // If the random cell is unoccupied, see if a path to it is possible.
            {
                if (mp_potential_path_object(mypath,cellx,celly,MaxSpeed,6,oBlockParent)) // If the path is clear, make it move.
                {
                    mp_grid_path(eId.aigrid,mypath,x,y,nearestden.x,nearestden.y,true);
                    path_set_kind(mypath,1);
                    path_set_precision(mypath,8);
                    if (HP >= MaxHP/2) pspeed = 0.5;
                    else pspeed = 1; // Move faster if the enemy is weakened, to show panic.
                    path_start(mypath,pspeed,path_action_stop,0);
                    image_speed = speed/2;
                    state = 2;
                }
            }
        }
        else
        {
            direction += sin(degtorad(destdir-direction))*turnrate;
            if (abs(direction-destdir) < turnrate) direction = destdir;
        }
        break;
    case 2: // Wander.
        if (statechange = 0) or (path_position = 1)
        {
            path_end();
            state = choose(0,1);
            statechange = staterate+round(random(staterate*stateratemultiplier));
        }
        break;
    case 3: // Retreat to den.
        if (!ignorevector) ignorevector = 1;
        image_speed = 1;
        if (path_position = 1) state = 4; // Burrow when it gets to the den.
        break;
    case 4:
        image_angle += -5+random(15);
        if (image_alpha > 0) image_alpha -= 0.05;
        if (image_alpha = 0)
            { despawn = true; instance_destroy(); }
        break;
}

if (statechange > 0) statechange -= 1;
if (damaged > 0) damaged -= .1;
if (soundcanplay > 0) soundcanplay -= 1;

if (!ignorevector)
{
    mhspeed = lengthdir_x(speed,direction);
    mvspeed = lengthdir_y(speed,direction);
    move_step_ext(x+mhspeed,y+mvspeed,sign(0)*min(1,abs(0)),oBlockParent);
    speed = 0;
}

if (speed > 0) image_angle = point_direction(x,y,xprevious,yprevious);
else image_angle = direction;
