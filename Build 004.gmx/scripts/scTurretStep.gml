//if (maxdir1 != primarydir-60) maxdir1 = primarydir-60;
//if (maxdir2 != primarydir+60) maxdir2 = primarydir+60;
if (instance_exists(oPlayer))
{
    if (point_distance(x,y,oPlayer.x,oPlayer.y) <= 150)
    and (!collision_line(x,y,oPlayer.x,oPlayer.y,oBlockParent,1,0))
    and (angle_difference(primarydir,point_direction(x,y,oPlayer.x,oPlayer.y)) <= sightconesize/2)
        { target = oPlayer; }
    else target = 0;
}
if (target != 0)
{
    destdir = point_direction(x,y,oPlayer.x,oPlayer.y);
    if (abs(direction-destdir) < turnrate*2) attack = 1;
    else attack = 0;
}
else
{
    switch (turn)
    {
        case 0: // Stop.
            if (turnchange > 0) turnchange -= 1;
            else
            {
                if (destdir = primarydir+turnchangerate) destdir = primarydir-turnchangerate;
                else destdir = primarydir+turnchangerate;
                turn = 1;
            }
            break;
        case 1: // Turn.
            if (abs(direction-destdir) < turnrate)
                { turn = 0; turnchange = turnchangerate; direction = destdir; }
            break;
    }
}

if (attack) and (shotready > 0) shotready -= 1;
if (!attack) and (shotready > 1) shotready -= 1;
if (shotready = 0) and (pulse < 3)
{
    if (pulseready > 0) pulseready -= 1;
    else
    {
        if (target = 0)
            { pulse = 0; pulseready = pulsedelay; shotready = shotdelay; exit; }
        pulse += 1;
        pulseready = pulsedelay;
        with (instance_create(x+lengthdir_x(15,direction),y+lengthdir_y(15,direction),oProjectile))
        {
            scDefineProjectile(Projectiles.pTurret);
            speed = 5;
            direction = other.direction+random_range(-10,10);
            image_angle = direction;
        }
        if (pulse = 3)
            { pulse = 0; shotready = shotdelay; }
    }
}

if (direction != destdir) direction -= clamp(angle_difference(direction,destdir),-turnrate,turnrate);
if (abs(direction-destdir) < turnrate) direction = destdir;
image_angle = direction;
