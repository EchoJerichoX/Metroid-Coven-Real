// Runs within oPlayer/scTransOut.
// This next set of blocks determines where the view will adjust when a transition occurs
//   BEFORE and sliding across the view.
// Variables vox and voy are where the transition object needs to be adjusted during a
//   transition in relation to the view x and y. So, if the destination room's door is 128
//   pixels from the top of the screen, we set voy to 128.
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
    case BarriaLandingSite: // Only one destination that applies in this room.
        // Determine the destination room.
        eId.destinationroom = BarriaIntWest;
        break;
    case BarriaIntWest:
        if (other.trans = 1) eId.destinationroom = BarriaLandingSite;
        if (other.trans = 2)
            { eId.destinationroom = BarriaCacheMissile; eId.vox = 320; }
        break;
    case BarriaCacheMissile:
        if (other.trans = 2) eId.destinationroom = BarriaIntWest;
        break;
}
