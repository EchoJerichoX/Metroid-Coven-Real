if (active = false) then
{
   switch (object_index)
   {
      case objBombSlotD:
         sprite_index = sprBombSlotDDone; break;
      case objBombSlotL:
         sprite_index = sprBombSlotLDone; break;
      case objBombSlotR:
         sprite_index = sprBombSlotRDone; break;
      case objBombSlotU:
         sprite_index = sprBombSlotUDone; break;
   }
   if (moveplayerback = true) then
   {
      //objPlayer.x = global.xx;
      //objPlayer.y = global.yy;
      moveplayerback = false;
   }
}
