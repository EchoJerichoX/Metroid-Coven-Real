switch (global.curroom)
{
   case 1: //AIDemo1
      if (global.transto = 1) objPlayerStill.direction = 225;
      if (global.transto = 2) objPlayerStill.direction = 0;
      if (global.transto = 3) objPlayerStill.direction = 180;
      break;
//------------------------------------------------------------------------------
   case 2: //AIDemo2
      if (global.transto = 1) objPlayerStill.direction = 90;
      if (global.transto = 2) objPlayerStill.direction = 180;
      break;
//------------------------------------------------------------------------------
   case 3: //AIDemo3
      if (global.transto = 1) objPlayerStill.direction = 180;
      if (global.transto = 2) objPlayerStill.direction = 0;
      if (global.transto = 3) objPlayerStill.direction = 270;
      if (global.transto = 5) objPlayerStill.direction = 90;
      break;
//------------------------------------------------------------------------------
   case 4: //AIDemo4
      if (global.transto = 1) objPlayerStill.direction = 0;
      break;
//------------------------------------------------------------------------------
   case 5: //AIDemo5
      if (global.transto = 1) objPlayerStill.direction = 135;
      if (global.transto = 2) objPlayerStill.direction = 45;
      if (global.transto = 3) objPlayerStill.direction = 270;
      break;
//------------------------------------------------------------------------------
   case 6: //AIDemo6
      if (global.transto = 1) objPlayerStill.direction = 270;
      if (global.transto = 2) objPlayerStill.direction = 90;
      break;
//------------------------------------------------------------------------------
   case 7: //AIDemo7
      if (global.transto = 1) objPlayerStill.direction = 90;
      if (global.transto = 2) objPlayerStill.direction = 90;
      break;
//------------------------------------------------------------------------------
   case 8: //AIDemo8
      if (global.transto = 1) objPlayerStill.direction = 270;
      if (global.transto = 2) objPlayerStill.direction = 180;
      if (global.transto = 3) objPlayerStill.direction = 90;
      break;
//------------------------------------------------------------------------------
   case 9: //AIDemo9
      if (global.transto = 1) objPlayerStill.direction = 225;
      if (global.transto = 2) objPlayerStill.direction = 0;
      break;
//------------------------------------------------------------------------------
   case 10: //AIDemo10
      if (global.transto = 1) objPlayerStill.direction = 0;
      break;
//------------------------------------------------------------------------------
   case 11: //AIDemo11
      if (global.transto = 1) objPlayerStill.direction = 0;
      if (global.transto = 3) objPlayerStill.direction = 270;
      break;
//------------------------------------------------------------------------------
   case 12: //AIDemo12
      if (global.transto = 1) objPlayerStill.direction = 225;
      if (global.transto = 2) objPlayerStill.direction = 0;
      if (global.transto = 4) objPlayerStill.direction = 270;
      break;
//------------------------------------------------------------------------------
   case 13: //AIDemo13
      if (global.transto = 2) objPlayerStill.direction = 90;
      if (global.transto = 4) objPlayerStill.direction = 270;
      break;
//------------------------------------------------------------------------------
   case 14: //AIDemo14
      if (global.transto = 1) objPlayerStill.direction = 135;
      if (global.transto = 3) objPlayerStill.direction = 225;
      break;
//------------------------------------------------------------------------------
   case 15: //AIDemo15
      if (global.transto = 1) objPlayerStill.direction = 0;
      if (global.transto = 2) objPlayerStill.direction = 180;
      break;
//------------------------------------------------------------------------------
   case 16: //AIDemo16
      if (global.transto = 2) objPlayerStill.direction = 0;
      break;
}
objPlayerStill.image_angle = direction;
objPlayerStill.destindir = direction;
