// Check the "region" to see if we need to anything special for it, like weather effects.
if (room = TransitionRoom) exit; // Keep region the same in transition rooms.
switch (room)
{
    // Barria Tundra: 1.
    case BarriaLandingSite:
    case BarriaIntWest:
    case BarriaCacheMorphBall:
    case BarriaCacheMissile:
        region = 1; break;
    default: region = 0; break;
}
switch (region)
{
    case 1: // Barria Tundra.
        if (!instance_exists(oWeatherSnow)) instance_create(0,0,oWeatherSnow);
    case 0: exit; break; // Do nothing if the region wasn't set.
}
