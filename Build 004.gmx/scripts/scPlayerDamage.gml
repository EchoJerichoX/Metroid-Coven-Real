//Damage the player.
//argument0 = minimum damage the player can take, before modifier(s).
//argument1 = maximum damage the player can tage, before modifier(s).
loss = round(random_range(argument0,argument1));
//Insert "switch" statement here for different suit damage modifiers. Below is placeholder.
if (CanTakeHit)
{
    CanTakeHit = false;
    alarm[0] = 10;
    TakeHitDirection = point_direction(other.x,other.y,x,y);
    motion_add(TakeHitDirection,5);
    Energy -= loss;
    if (Energy <= 0)
    {
        FullTanks -= 1;
        if (FullTanks < 0) and (Energy <= 0)
        {
            //Insert death sequence or precursor to death sequence. Below is placeholder.
            room_restart();
        }
        if (FullTanks >= 0) Energy += 100;
    }
    if (Energy > 0)
    {
        if (!sound_isplaying(SamusHurt1) &&
            !sound_isplaying(SamusHurt2) &&
            !sound_isplaying(SamusHurt3) &&
            !sound_isplaying(SamusHurt4) &&
            !sound_isplaying(SamusHurt5))
        {
            switch(choose(0,1,2,3,4))
            {
                case 0: sound_play(SamusHurt1); break;
                case 1: sound_play(SamusHurt2); break;
                case 2: sound_play(SamusHurt3); break;
                case 3: sound_play(SamusHurt4); break;
                case 4: sound_play(SamusHurt5); break;
            }
        }
    }
    if (other != eId) 
        { with (other) motion_add(other.TakeHitDirection,1); }
}
