HP -= other.Damage; // Reduce health by a value determined by the projectile.
if (HP <= 0)
    { instance_destroy(); exit; }

switch (myid)
{
    case Enemies.eZoomer:
        if (HP < MaxHP/2) staterate = 20; // Speed up the state changes to exhibit panic.
        if (soundcanplay = 0)
            { sound_play(ZoomerHit) soundcanplay += 5+round(random(15)); }
        damaged = 1;
        if (nearestden != noone)
        {
            //if (state = 2) path_end();
            //mypath = path_add();
            mp_grid_path(eId.aigrid,mypath2,x,y,nearestden.x,nearestden.y,true);
            path_set_kind(mypath2,1);
            path_set_precision(mypath2,8);
            path_start(mypath2,1,path_action_stop,0);
            state = 4;
        }
        break;
}
