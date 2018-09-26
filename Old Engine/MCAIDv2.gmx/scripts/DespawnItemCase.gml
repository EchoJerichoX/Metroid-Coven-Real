//Script used to despawn an item case if the player has already obtained
//    the upgrade chosen in the room creation code.

switch (item)
{
    case 2: if (global.morphballavail = true) instance_destroy(); break;
    case 3: if (global.bombavail = true) instance_destroy() break;
    case 4: if (global.missilelauncheravail = true) instance_destroy(); break;
    case 5: if (global.wavebeamavail = true) instance_destroy(); break;
    case 6: if (global.supermissilelauncheravail = true) instance_destroy(); break;
    case 7: if (global.gravitysuitavail = true) instance_destroy(); break;
    case 8: if (global.plasmabeamavail = true) instance_destroy(); break;
    case 9: if (global.spazerbeamavail = true) instance_destroy(); break;
    case 10: if (global.pulseavail = true) instance_destroy(); break;
    case 11: if (global.phazonsuitavail = true) instance_destroy(); break;
    case 12: if (global.speedboosteravail = true) instance_destroy(); break;
    case 13: if (global.homingmissilelauncheravail = true) instance_destroy(); break;
    case 14: if (global.novabeamavail = true) instance_destroy(); break;
    case 15: if (global.diffuseravail = true) instance_destroy(); break;
    case 16: if (global.darkbeamavail = true) instance_destroy(); break;
    case 17: if (global.lightbeamavail = true) instance_destroy(); break;
    case 18: if (global.jetboostavail = true) instance_destroy(); break;
    case 19: if (global.lightsearavail = true) instance_destroy(); break;
    case 20: if (global.powerbombavail = true) instance_destroy(); break;
    case 21: if (global.xrayvisoravail = true) instance_destroy(); break;
    case 22: if (global.screwbombavail = true) instance_destroy(); break;
    case 23: if (global.corruptionsuitavail = true) instance_destroy(); break;
    case 24: if (global.phazonbeamavail = true) instance_destroy(); break;
    
    case 30: if (global.icebeamavail = true) instance_destroy(); break; //Yep, forgot it here too.
}
visible = true;
