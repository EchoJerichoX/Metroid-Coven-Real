//////////////////////////////////////
// argument0 = global variable that //
// the slot checks to see if it     //
// should be active or not. You     //
// MUST run this in the room        //
// creation code.                   //
//////////////////////////////////////

if (argument0 = 1)
{
   switch (object_index)
   {
      case objBombSlotDoorUD:
         sprite_index = sprBombSlotDoorUDDone; break;
      case objBombSlotDoorRL:
         sprite_index = sprBombSlotDoorRLDone; break;
//---------------------------------------------------------------
      case objBombSlotU:
      case objBombSlotD:
      case objBombSlotL:
      case objBombSlotR:
         active = false; break;
   }
}
else
// Used to prevent Bomb Slots from starting inactive.
switch (object_index)
{
   case objBombSlotU:
   case objBombSlotD:
   case objBombSlotL:
   case objBombSlotR:
      active = true; break;
}
