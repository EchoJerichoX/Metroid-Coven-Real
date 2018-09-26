//////////////////////////////////////
// Argument 0 is transition number. //
//                                  //
// global.destinroom corresponds to //
// the target room's global.curroom //
// value.                           //
//////////////////////////////////////

global.transto = argument0;

ExitRoomTurnPlayer();

instance_create(x,y,fadeToBlack);

switch (global.curroom)
{
   case 1: //AIDemo1
      switch (global.transto)
      {
         case 1: global.destinroom = 2; break;
         case 2: global.destinroom = 3; break;
      }
      break;
//------------------------------------------------------------------------------
   case 2: //AIDemo2
      switch (global.transto)
      {
         case 1: global.destinroom = 1; break;
         case 2: global.destinroom = 6; break;
      }
      break;
//------------------------------------------------------------------------------
   case 3: //AIDemo3
      switch (global.transto)
      {
         case 1: global.destinroom = 4; break;
         case 2: global.destinroom = 5; break;
         case 3: global.destinroom = 1; break;
         case 4: global.destinroom = 13; break;
      }
      break;
//------------------------------------------------------------------------------
   case 4: //AIDemo4
      switch (global.transto)
      {
         case 1: global.destinroom = 3; break;
      }
      break;
//------------------------------------------------------------------------------
   case 5: //AIDemo5
      switch (global.transto)
      {
         case 1: global.destinroom = 8; break;
         case 2: global.destinroom = 7; break;
         case 3: global.destinroom = 3; break;
      }
      break;
//------------------------------------------------------------------------------
   case 6: //AIDemo6
      switch (global.transto)
      {
         case 1: global.destinroom = 7; break;
         case 2: global.destinroom = 2; break;
      }
      break;
//------------------------------------------------------------------------------
   case 7: //AIDemo7
      switch (global.transto)
      {
         case 1: global.destinroom = 6; break;
         case 3: global.destinroom = 5; break;
      }
      break;
//------------------------------------------------------------------------------
   case 8: //AIDemo8
      switch (global.transto)
      {
         case 1: global.destinroom = 5; break;
         case 2: global.destinroom = 9; break;
         case 3: global.destinroom = 11; break;
      }
      break;
//------------------------------------------------------------------------------
   case 9: //AIDemo9
      switch (global.transto)
      {
         case 1: global.destinroom = 10; break;
         case 2: global.destinroom = 8; break;
      }
      break;
//------------------------------------------------------------------------------
   case 10: //AIDemo10
      switch (global.transto)
      {
         case 1: global.destinroom = 9; break;
      }
      break;
//------------------------------------------------------------------------------
   case 11: //AIDemo11
      switch (global.transto)
      {
         case 1: global.destinroom = 12; break;
         case 3: global.destinroom = 8; break;
      }
      break;
//------------------------------------------------------------------------------
   case 12: //AIDemo12
      switch (global.transto)
      {
         case 1: global.destinroom = 11; break;
         case 2: global.destinroom = 13; break;
         case 3: global.destinroom = 14; break;
      }
      break;
//------------------------------------------------------------------------------
   case 13: //AIDemo13
      switch (global.transto)
      {
         case 4: global.destinroom = 12; break;
         case 5: global.destinroom = 3; break;
      }
      break;
//------------------------------------------------------------------------------
   case 14: //AIDemo14
      switch (global.transto)
      {
         case 1: global.destinroom = 15; break;
         case 2: global.destinroom = 12; break;
      }
      break;
//------------------------------------------------------------------------------
   case 15: //AIDemo15
      switch (global.transto)
      {
         case 1: global.destinroom = 14; break;
         case 2: global.destinroom = 16; break;
      }
      break;
//------------------------------------------------------------------------------
   case 16: //AIDemo16
      switch (global.transto)
      {
         case 2: global.destinroom = 15; break;
      }
      break;
}
