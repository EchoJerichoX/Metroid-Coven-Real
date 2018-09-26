switch (object_index)
{
   case objBasicBlock16:
   case objBasicBlock8:
      var ii;
      ii = tile_layer_find(2,x,y);
      if (ii) tile_set_visible(ii,false);
      if (object_index = objBasicBlock16) instance_change(objBlockDestroy16,true);
      if (object_index = objBasicBlock8) instance_change(objBlockDestroy8,true);
      break;
// --------------------
   case objReformBlock16:
   case objReformBlock8:
      var ii;
      ii = tile_layer_find(2,x,y);
      if (ii) tile_set_visible(ii,false);
      if (object_index = objReformBlock16) instance_change(objBlockReform16,true);
      if (object_index = objReformBlock8) instance_change(objBlockReform8,true);
      break;
// --------------------
   case objMissileBlock16:
   case objMissileBlock8:
      switch (other.object_index)
      {
         case objMissile:
         case objSuperMissile:
         case objHomingMissile:
         case objDiffusionMissile:
         // Comment the next 3 lines if you don't want
         // explosions to break Missile blocks.
         case objMissileExplosion:
         case objSuperMissileExplosion:
         case objDiffusionMissileExplosion:
            var ii;
            ii = tile_layer_find(2,x,y);
            if (ii) tile_set_visible(ii,false);
            if (object_index = objMissileBlock16) instance_change(objBlockDestroy16,true);
            if (object_index = objMissileBlock8) instance_change(objBlockDestroy8,true);
            break;
// -----
         case objBallBombExplode:
         case objPowerBombExplode:
         case objScrewBombExplode:
         case objScrewBombOtherExplode:
         case objScrewBombPart:
            var ii;
            ii = tile_layer_find(2,x,y);
            if (ii)
               { instance_create(x,y,objBlockDestroy16); tile_delete(ii); }
            visible = true;
            break;
      }
      break;
// --------------------
   case objSuperMissileBlock16:
   case objSuperMissileBlock8:
      switch (other.object_index)
      {
         case objSuperMissile:
         case objDiffusionMissile:
         // Comment the next 2 lines if you don't want
         // explosions to break Missile blocks.
         case objSuperMissileExplosion:
         case objDiffusionMissileExplosion:
            var ii;
            ii = tile_layer_find(2,x,y);
            if (ii) tile_set_visible(ii,false);
            if (object_index = objSuperMissileBlock16) instance_change(objBlockDestroy16,true);
            if (object_index = objSuperMissileBlock8) instance_change(objBlockDestroy8,true);
            break;
// -----
         case objBallBombExplode:
         case objPowerBombExplode:
         case objScrewBombExplode:
         case objScrewBombOtherExplode:
         case objScrewBombPart:
            var ii;
            ii = tile_layer_find(2,x,y);
            if (ii)
               { instance_create(x,y,objBlockDestroy16); tile_delete(ii); }
            visible = true;
            if (object_index = objBasicBlock16) instance_create(x,y,objBlockDestroy16);
            if (object_index = objBasicBlock8) instance_create(x,y,objBlockDestroy8);
            break;
      }
      break;
// --------------------
   case objBombBlock16:
   case objBombBlock8:
      switch (other.object_index)
      {
         case objBallBombExplode:
         case objPowerBombExplode:
         case objScrewBombExplode:
         case objScrewBombOtherExplode:
         case objScrewBombPart:
            var ii;
            ii = tile_layer_find(2,x,y);
            if (ii) tile_set_visible(ii,false);
            if (object_index = objBombBlock16) instance_change(objBlockDestroy16,true);
            if (object_index = objBombBlock8) instance_change(objBlockDestroy8,true);
            break;
      }
      break;
// --------------------
   case objPowerBombBlock16:
   case objPowerBombBlock8:
      switch (other.object_index)
      {
         case objPowerBombExplode:
         case objScrewBombExplode:
         case objScrewBombOtherExplode:
         case objScrewBombPart:
            var ii;
            ii = tile_layer_find(2,x,y);
            if (ii) tile_set_visible(ii,false);
            if (object_index = objPowerBombBlock16) instance_change(objBlockDestroy16,true);
            if (object_index = objPowerBombBlock8) instance_change(objBlockDestroy8,true);
            break;
// -----
         case objBallBombExplode:
            var ii;
            ii = tile_layer_find(2,x,y);
            if (ii)
               { instance_create(x,y,objBlockDestroy16); tile_delete(ii); }
            visible = true;
            if (object_index = objBasicBlock16) instance_create(x,y,objBlockDestroy16);
            if (object_index = objBasicBlock8) instance_create(x,y,objBlockDestroy8);
            break;
      }
      break;
// --------------------
   case objSpeedBoosterBlock16:
   case objSpeedBoosterBlock8:
      switch (other.object_index)
      {
         case objSpeedBoosterEffect:
            var ii;
            ii = tile_layer_find(2,x,y);
            if (ii) tile_set_visible(ii,false);
            if (object_index = objSpeedBoosterBlock16) instance_change(objBlockDestroy16,true);
            if (object_index = objSpeedBoosterBlock8) instance_change(objBlockDestroy8,true);
            break;
// -----
         case objPlayer:
            if (global.speedboost) then
            {
               var ii;
               ii = tile_layer_find(2,x,y);
               if (ii) tile_set_visible(ii,false);
               if (object_index = objSpeedBoosterBlock16) instance_change(objBlockDestroy16,true);
               if (object_index = objSpeedBoosterBlock8) instance_change(objBlockDestroy8,true);
            }
            break;
// -----
         case objBallBombExplode:
         case objPowerBombExplode:
         case objScrewBombExplode:
         case objScrewBombOtherExplode:
         case objScrewBombPart:
            var ii;
            ii = tile_layer_find(2,x,y);
            if (ii)
               { instance_create(x,y,objBlockDestroy16); tile_delete(ii); }
            visible = true;
            if (object_index = objBasicBlock16) instance_create(x,y,objBlockDestroy16);
            if (object_index = objBasicBlock8) instance_create(x,y,objBlockDestroy8);
            break;
      }
      break;
}

// Reference
//  |
// \/
/*
var ii;
ii = tile_layer_find(2,x,y);
if (ii) tile_set_visible(ii,false);
*/
