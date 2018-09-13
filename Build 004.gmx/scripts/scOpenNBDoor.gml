// Runs within oDoorParent when a door is hit by something that can open it.
// Mark a special door as opened so the player doesn't have to open it again.
// See switch statement case numbers for argument0 meaning.
switch (argument0)
{
    // --- Red (Missile) ---
    case 1:
        // - Tutorial -
        if (room = Tutorial2) eId.OpenedTutorial2Red = true;
        // - Barria Tundra -
        if (room = BarriaIntWest) eId.OpenedBarriaIntWestRed = true;
        if (room = BarriaCacheMissile) eId.OpenedBarriaCacheMissileRedE = true;
        if (room = BarriaCacheMissile) eId.OpenedBarriaCacheMissileRedW = true;
        break;
    // --- Green (Super Missile) ---
    case 2:
        break;
    // --- Yellow (Power Bomb) ---
    case 3:
        break;
}
