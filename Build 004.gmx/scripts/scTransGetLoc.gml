// Runs in the create event of the transition parent object.
switch (room) // Check current room.
{
    /*
       ====
       = Barria Tundra
       ====
    */
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
        else trans = 2; // To BarriaCacheMissile.
        break;
    case BarriaCacheMissile:
        trans = 2; // To BarriaIntWest.
        break;
        
    /*
       ====
       = Tutorial
       ====
    */
    case TutorialStart:
        trans = 1; // Blue to Tutorial2.
        break;
    case Tutorial2:
        if (x < room_width/2) trans = 1; // Blue to TutorialStart.
        else trans = 2; // Blue to Tutorial3.
        break;
    case Tutorial3:
        if (sprite_index = sprTransitionGuideLR)
        {
            if (y < room_height/3) trans = 3; // Red to .
            else trans = 2; // Blue to Tutorial2.
        }
        else
        {
            if (y < room_height/2) trans = 1; // Blue to .
            else trans = 4; // Green to .
        }
        break;
}
