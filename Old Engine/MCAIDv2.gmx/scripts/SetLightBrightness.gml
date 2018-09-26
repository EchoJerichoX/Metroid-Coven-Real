//Check current room and set darkness levels accordingly.

switch (global.curroom) 
{
   case 1:
   case 2:
   case 3:
   case 4:
   case 5:
   case 6:
   case 7:
   case 8:
   case 9:
   case 12:
      if (instance_exists(objLightEngine)) objLightEngine.AmbientBrightness = .1 break;
   case 10:
   case 13:
   case 14:
   case 15:
   case 16:
      if (instance_exists(objLightEngine)) objLightEngine.AmbientBrightness = .05 break;
   case 11:
   case 10002:
      if (instance_exists(objLightEngine)) objLightEngine.AmbientBrightness = .025 break;
}
