// Runs within oItem.
// Check if we have acquired a tank or expansion so the player can't obtain it twice.
// See switch statement case numbers for argument0 meaning.
switch (argument0)
{
    // --- Energy Tanks ---
    case 1:
        break;
    // --- Missile Expansions ---
    case 2:
        if (room = BarriaLandingSite) and (eId.HasBarriaLandingSiteME = true) instance_destroy();
        if (room = BarriaCacheMissile) and (eId.HasBarriaCacheMissileME = true) instance_destroy();
        break;
    // --- Super Missile Expansions ---
    case 3:
        break;
    // --- Power Bomb Expansions ---
    case 4:
        break;
}
