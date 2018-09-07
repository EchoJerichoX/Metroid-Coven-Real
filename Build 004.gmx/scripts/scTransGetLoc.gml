// Runs in the create event of the transition parent object.
switch (room) // Check current room.
{
    // Get the position of the transition object in the room.
    case BarriaLandingSite:
        // Set a variable (trans) to match with the target room's transition object.
        trans = 1; // To BarriaIntWest.
        break;
    case BarriaIntWest:
        if (sprite_index = sprTransitionGuideLR)
        {
            if (x < room_width/2) trans = 1; // To BarriaLandingSite.
            else trans = 3; // To BarriaIceTunnelWest.
        }
        else trans = 2; // To BArriaCacheMissile.
        break;
    case BarriaCacheMissile:
        trans = 2; // To BarriaIntWest.
        break;
}
