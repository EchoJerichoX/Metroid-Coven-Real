HP -= other.Damage;
if (HP <= 0)
    { instance_destroy(); exit; }

switch (myid)
{
    case Enemies.eZoomer:
        if (HP < MaxHP/2) staterate = 20; // Speed up the state changes to exhibit panic.
        if (soundcanplay = 0)
            { sound_play(ZoomerHit) soundcanplay += 5+round(random(15)); }
        damaged = 1;
        if (instance_exists(oZoomerDen))
        {
            var d = instance_nearest(x,y,oZoomerDen);
            scDefineActorPath(d.x,d.y);
            path_start(eId.aipath,1,path_action_stop,0);
            state = 3;
        }
        break;
}
