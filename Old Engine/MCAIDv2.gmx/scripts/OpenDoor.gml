// Check current room and then check a specific door in the room.

switch (global.curroom)
{
   case 2: //AIDemo2
      if (object_index = objRedDoorLeft) global.aidemo2reddoor1open = 1;
      if (object_index = objRedDoorRight) global.aidemo2reddoor2open = 1;
      break;
   case 3: //AIDemo3
      if (object_index = objRedDoorUp) global.aidemo3reddoor1open = 1;
      if (object_index = objRedDoorDown) global.aidemo3reddoor2open = 1;
      break;
   case 5: //AIDemo5
      if (object_index = objGreenDoorDown) global.aidemo5greendoor1open = 1;
      if (object_index = objGreenDoorUp) global.aidemo5greendoor2open = 1;
      break;
   case 7: //AIDemo7
      if (link = 1) then
      {
         if (object_index = objGreenDoorUp) global.aidemo7greendoor1open = 1;
         if (object_index = objGreenDoorDown) global.aidemo7greendoor2open = 1;
      }
      if (link = 2) then
      {
         if (object_index = objGreenDoorUp) global.aidemo7greendoor3open = 1;
         if (object_index = objGreenDoorDown) global.aidemo7greendoor4open = 1;
      }
      break;
   case 8: //AIDemo8
      if (object_index = objGreenDoorDown) global.aidemo8greendooropen = 1;
      break;
   case 11: //AIDemo11
      if (object_index = objYellowDoorUp) global.aidemo11yellowdooropen = 1;
      break;
   case 12: //AIDemo12
      if (object_index = objYellowDoorRight) global.aidemo12yellowdooropen = 1;
      break;
   case 13: //AIDemo12
      if (object_index = objYellowDoorUp) global.aidemo13yellowdoor1open = 1;
      if (object_index = objYellowDoorDown) global.aidemo13yellowdoor2open = 1;
      break;
   case 14: //AIDemo14
      if (object_index = objYellowDoorLeft) global.aidemo14yellowdooropen = 1;
      break;
   
}
