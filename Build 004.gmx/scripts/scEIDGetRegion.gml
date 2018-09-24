// Check the "region" to see if we need to anything special for it, like weather effects.
if (room = TransitionRoom) exit; // Keep region the same in transition rooms.
switch (room)
{
    // Tutorial: 1
    case TutorialStart:
    case Tutorial2:
    case Tutorial3:
    case Tutorial4:
        region = 1; break;
    // Barria Tundra: 1.
    case BarriaLandingSite:
    case BarriaIntWest:
    case BarriaCacheMorphBall:
    case BarriaCacheMissile:
        region = 1; break;
    // Show guide sprite if no region is set.
    default: region = 1; break; // Set back to 0 once we are beyond testing phases.
}
switch (region)
{
    case 1: // Barria Tundra.
        if (!instance_exists(oWeatherSnow)) instance_create(0,0,oWeatherSnow);
    case 0: exit; break; // Do nothing if the region wasn't set.
}
