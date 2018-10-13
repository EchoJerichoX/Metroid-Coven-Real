if (boosting)
{
    if (!other.stopdash) exit; // If the other object should be able to stop
                               //   the player while boosting, continue.
    //or (angle_difference(boostdir,point_direction(xprevious,yprevious,x,y)) < 21) exit;
    x = xprevious;
    y = yprevious;
    boosting = 0;
    boosttrail = 0;
    repeat (10+round(random(10)))
    {
        with (instance_create(x+random_range(-7,7),y+random_range(-7,7),oDestroyAnim))
        {
            sprite_index = sprSmoke;
            direction = random(360);
            image_angle = random(360);
            speed = random_range(.5,1.25);
            image_speed = random_range(.125,.25);
        }
    }
    KnockbackDir = direction-180;
    alarm[3] = 2;
}
