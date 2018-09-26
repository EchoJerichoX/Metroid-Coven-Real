// This script is not affected by room creation codes.
// Also does not need to be run or have a certain variable
// initialized. This is just a good place for this script.
// ---------------------------------------------------------
// First, check to see what kind of door it is. If the door
// needs to be opened with something special, we want to make
// sure it was opened with the proper weapon. REMEMBER that
// for red doors, this script is called in DamageRedDoor();.

switch (object_index)
{
   case objRedDoorDown:
   case objRedDoorLeft:
   case objRedDoorRight:
   case objRedDoorUp:
      if (other.object_index = objMissile)
      or (other.object_index = objSuperMissile)
      or (other.object_index = objHomingMissile)
      or (other.object_index = objDiffusionMissile)
         { OpenDoor(); }
      else exit;
      break;
   case objGreenDoorDown:
   case objGreenDoorLeft:
   case objGreenDoorRight:
   case objGreenDoorUp:
      if (other.object_index = objSuperMissile)
      or (other.object_index = objDiffusionMissile)
         { OpenDoor(); }
      else exit;
      break;
   case objYellowDoorDown:
   case objYellowDoorLeft:
   case objYellowDoorRight:
   case objYellowDoorUp:
      if (other.object_index = objPowerBombExplode)
      or (other.object_index = objScrewBombExplode)
      or (other.object_index = objScrewBombOtherExplode)
      or (other.object_index = objScrewBombPart)
         { OpenDoor(); }
      else exit;
      break;
}

door = instance_create(x,y,objDoorChange);

switch (object_index) // For choosing beam type.
{
   // MakeDoorMarker(argument0);
   // argument0: 0 = Blue.
   //            1 = Wave. 
   //            2 = Dark.
   //            3 = Red.
   //            4 = Green.
   //            5 = Yellow.
   case objBlueDoorDown:
   case objBlueDoorLeft:
   case objBlueDoorRight:
   case objBlueDoorUp:
      door.beamtype = 0;
      break;
   case objWaveDoorDown:
   case objWaveDoorLeft:
   case objWaveDoorRight:
   case objWaveDoorUp:
      door.beamtype = 1;
      break;
   case objRedDoorDown:
   case objRedDoorLeft:
   case objRedDoorRight:
   case objRedDoorUp:
      door.beamtype = 3;
      break;
   case objGreenDoorDown:
   case objGreenDoorLeft:
   case objGreenDoorRight:
   case objGreenDoorUp:
      door.beamtype = 4;
      break;
   case objYellowDoorDown:
   case objYellowDoorLeft:
   case objYellowDoorRight:
   case objYellowDoorUp:
      door.beamtype = 5;
      break;
}

switch (object_index)
{
   // 1 = Down. 2 = Left. 3 = Right. 4 = Up.
   case objBlueDoorDown:
   case objWaveDoorDown:
   case objRedDoorDown:
   case objGreenDoorDown:
   case objYellowDoorDown:
      door.sprite_index = sprDoorOpenDown; break;
   case objBlueDoorLeft:
   case objWaveDoorLeft:
   case objRedDoorLeft:
   case objGreenDoorLeft:
   case objYellowDoorLeft:
      door.sprite_index = sprDoorOpenLeft; break;
   case objBlueDoorRight:
   case objWaveDoorRight:
   case objRedDoorRight:
   case objGreenDoorRight:
   case objYellowDoorRight:
      door.sprite_index = sprDoorOpenRight; break;
   case objBlueDoorUp:
   case objWaveDoorUp:
   case objRedDoorUp:
   case objGreenDoorUp:
   case objYellowDoorUp:
      door.sprite_index = sprDoorOpenUp; break;
}
instance_destroy();
