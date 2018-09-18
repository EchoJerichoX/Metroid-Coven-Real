// Runs at the creation of every actor (not in the create event, but when created remotely.
myid = argument0;
switch(myid)
{
    case Enemies.eZoomer:
        enemy = 1;
        ActorSprite = sprZoomer;
        ActorSpriteHit = sprZoomerHit;
        MaxSpeed = 2.25;
        MaxHP = choose(3.5,4,4.5,5);
        HP = MaxHP;
        state = 0; // 0 = Idle.
                   // 1 = Turning.
                   // 2 = Moving.
                   // 3 = Retreating to den (on path).
                   // 4 = Burrow into den.
        if (state = 2)
            { direction = round(random(360)); speed = 0.5; }
        destdir = 0; // The target rotation for turning state.
        turnrate = 5; // How fast we turn towards "destdir."
        staterate = 50; // How fast states change.
        stateratemultiplier = 5; // Multiplies the statetimer.
                                 //   Change to change the variation in state changes.
        statechange = staterate+round(random(staterate*stateratemultiplier)); // After reaching 0, we choose a new state, if possible.
        damaged = 0; // Determines if we took non-lethal damage.
        soundcanplay = 0; // Keeps hit sounds from overlapping.
        ImmuneToPowerBomb = 0;
        CantTakeDamageFrom = noone;
        if (instance_exists(oZoomerDen)) nearestden = instance_nearest(x,y,oZoomerDen);
        else nearestden = noone;
        mypath = path_add();
        break;
        
    case Enemies.eGeemer:
        enemy = 1;
        ActorSprite = sprGeemer;
        MaxSpeed = 1.5;
        destdir = random(360);
        depth = 7;
        state = 1; // Wandering.
        AnimationStart = 0;
        AnimationEnd = 7;
        break;
        
    default:
        enemy = 0;
        break;
}
sprite_index = ActorSprite;
