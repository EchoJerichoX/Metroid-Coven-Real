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
        turnrate = 5; // How fast we turn towards "destdir."
        direction = round(random(360/turnrate))*turnrate;
        image_angle = direction;
        destdir = 0; // The target rotation for turning state.
        staterate = 50; // How fast states change.
        stateratemultiplier = 5; // Multiplies the statetimer.
                                 //   Change to change the variation in state changes.
        statechange = staterate+round(random(staterate*stateratemultiplier)); // After reaching 0, we choose a new state, if possible.
        damaged = 0; // Determines if we took non-lethal damage.
        soundcanplay = 0; // Keeps hit sounds from overlapping.
        ImmuneToPowerBomb = 0;
        CantTakeDamageFrom = noone;
        nearestden = noone;
        retreatcheckdelay = 1;
        mypath = path_add(); // Wander path.
        mypath2 = path_add(); // Retreat path.
        pspeed = 0;
        state = 0; // 0 = Idle.
                   // 1 = Turning.
                   // 2 = Moving.
                   // 3 = Retreating to den (on path).
                   // 4 = Burrow into den.
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
