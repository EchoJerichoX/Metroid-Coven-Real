if (argument0 = 1)
{
   switch (object_index)
   {
      case objRedDoorDown:
      case objGreenDoorDown:
      case objYellowDoorDown:
         instance_change(objBlueDoorDown,true); break;
      case objRedDoorLeft:
      case objGreenDoorLeft:
      case objYellowDoorLeft:
         instance_change(objBlueDoorLeft,true); break;
      case objRedDoorRight:
      case objGreenDoorRight:
      case objYellowDoorRight:
         instance_change(objBlueDoorRight,true); break;
      case objRedDoorUp:
      case objGreenDoorUp:
      case objYellowDoorUp:
         instance_change(objBlueDoorUp,true); break;
   }
}
