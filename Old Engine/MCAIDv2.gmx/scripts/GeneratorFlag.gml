//////////////////////////////////////
// argument0 = global variable that //
// the generator checks to see if   //
// it should be active or not. You  //
// MUST run this in the room        //
// creation code.                   //
//////////////////////////////////////

if (argument0 = 1) then
{
   switch (object_index)
   {
      case objGeneratorSmall:
         with (instance_create(x,y,objGeneratorSmallDestroyed)) image_angle = other.image_angle;
         instance_destroy();
         break;
      case objGeneratorMedium:
         with (instance_create(x,y,objGeneratorMediumDestroyed)) image_angle = other.image_angle;
         instance_destroy();
         break;
      case objGeneratorLarge:
         with (instance_create(x,y,objGeneratorLargeDestroyed)) image_angle = other.image_angle;
         instance_destroy();
         break;
//---------------------------------------------------------------
      case objSealedDoorUp:
         instance_change(objBlueDoorUp,1); break;
      case objSealedDoorDown:
         instance_change(objBlueDoorDown,1); break;
      case objSealedDoorLeft:
         instance_change(objBlueDoorLeft,1); break;
      case objSealedDoorRight:
         instance_change(objBlueDoorRight,1); break;
   }
}
