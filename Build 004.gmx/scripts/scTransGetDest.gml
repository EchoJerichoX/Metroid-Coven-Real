// Runs within oPlayer/scTransOut.
// This next set of blocks determines where the view will adjust when a transition occurs
//   BEFORE and sliding across the view.
// Variables vox and voy are where the transition object needs to be adjusted during a
//   transition in relation to the view x and y. So, if the destination room's door is 128
//   pixels from the top of the screen, we set voy to 128.
// If we are sending the player to a "cache" or single-cell room, we manually set vox to
//   320 to make sure the view sets properly.
// Variable transdir is the direction that the transition object will move across the screen
//   plus 180 degrees.

if (other.object_index = oTransitionTubeLR)
{
    if (x < other.x) eId.transdir = 0;
    else eId.transdir = 180;
}
if (other.object_index = oTransitionTubeUD)
{
    if (y < other.y) eId.transdir = 270;
    else eId.transdir = 90;
}
// Determine the room we need to move to.
switch (room) // Determine current room.
{
    // - Tutorial -
    case TutorialStart: // Only one destination that applies in this
                        //   room, so we don't care what eId.trans says.
        eId.destinationroom = Tutorial2; // Determine the destination room.
        break;
    case Tutorial2:
        if (other.trans = 1) eId.destinationroom = TutorialStart;
        if (other.trans = 2)  eId.destinationroom = Tutorial3;
        break;
    case Tutorial3:
        if (other.trans = 1)
            { eId.destinationroom = Tutorial4; eId.vox = 320; }
        if (other.trans = 2)
            { eId.destinationroom = Tutorial2; eId.voy = 240; }
        if (other.trans = 3)
            { eId.destinationroom = Tutorial5; eId.voy = 352; }
        //if (other.trans = 4) eId.destinationroom = Tutorial;
        break;
    case Tutorial4:
        eId.destinationroom = Tutorial3;
        break;
    case Tutorial5:
        if (other.trans = 1)
            { eId.destinationroom = Tutorial7; eId.voy = 128; }
        if (other.trans = 2)
            { eId.destinationroom = Tutorial6; eId.vox = 320; }
        if (other.trans = 3)
            { eId.destinationroom = Tutorial3; eId.voy = 128; }
        break;
    case Tutorial6:
        eId.destinationroom = Tutorial5;
        break;
    case Tutorial7:
        if (other.trans = 1) eId.destinationroom = Tutorial5;
        else
            { eId.destinationroom = Tutorial8; eId.vox = 320; }
        break;
    case Tutorial8:
        if (other.trans = 2)
            { eId.destinationroom = Tutorial5; eId.vox = 128; }
        //else
            //{ eId.destinationroom = Tutorial9; eId.vox = 128; }
        break;
        
    // - Barria Tundra -
    case BarriaLandingSite:
        eId.destinationroom = BarriaIntWest;
        break;
    case BarriaIntWest:
        if (other.trans = 1) eId.destinationroom = BarriaLandingSite;
        if (other.trans = 2)
            { eId.destinationroom = BarriaCacheMissile; eId.vox = 320; }
        break;
    case BarriaCacheMissile:
        eId.destinationroom = BarriaIntWest;
        break;
}
