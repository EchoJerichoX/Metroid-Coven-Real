switch (state)
{
    case 0: // Idle.
        speed = 0;
        image_speed = 0;
        if (statechange = 0) // If nothing happened, and we are looking to change states...
        {
            state = 1; // Move to the turning state (later, maybe add a different transitional state).
            //destdir = turnrate*(round(random(360/turnrate))); // Pick a target rotation for the turning state.
            destdir = round(random(360/turnrate))*turnrate;
        }
        break;
    case 1: // Turn.
        //if (abs(destdir) <= 180) direction += median(-turnrate,turnrate,destdir); // These 2 lines are used for taking the shortest "path"
        //else direction += median(-turnrate,turnrate,destdir-sign(destdir)*360);   //   to the target rotation.
        direction += sin(degtorad(destdir-direction))*turnrate;
        if (abs(direction-destdir) < turnrate) direction = destdir;
        if (direction = destdir) // If we are facing the target rotation...
            { statechange = staterate+round(random(staterate*stateratemultiplier)); state = 2; } // Set a timer for another state switch,
                                                                                                 //   and switch to the new state (moving).
        break;
    case 2: // Wander.
        if (HP >= MaxHP/2) speed = 0.5;
        else speed = 1; // Move faster if the enemy is weakened, to show panic.
        image_speed = speed/2;
        if (statechange = 0)
            { state = choose(0,1); statechange = staterate+round(random(staterate*stateratemultiplier)); }
        break;
    case 3: // Retreat to den.
        image_speed = 1;
        if (path_position > 0.8) and (path_position < 1) speed += 0.05; // Speed up as it gets closer.
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
