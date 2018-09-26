background_x[2] = view_xview[0];
background_y[2] = view_yview[0];

var sx1,sx2,sx3,sx4,sx5
    sy1,sy2,sy3,sy4,sy5;

if (instance_exists(objPlayerSpawn1))
{ 
    sx1 = objPlayerSpawn1.x+8; 
    sy1 = objPlayerSpawn1.y+8; 
}
if (instance_exists(objPlayerSpawn2))
{ 
    sx2 = objPlayerSpawn2.x+8; 
    sy2 = objPlayerSpawn2.y+8; 
}
if (instance_exists(objPlayerSpawn3))
{ 
    sx3 = objPlayerSpawn3.x+8; 
    sy3 = objPlayerSpawn3.y+8; 
}
if (instance_exists(objPlayerSpawn4))
{ 
    sx4 = objPlayerSpawn4.x+8; 
    sy4 = objPlayerSpawn4.y+8; 
}
if (instance_exists(objPlayerSpawn5))
{ 
    sx5 = objPlayerSpawn5.x+8; 
    sy5 = objPlayerSpawn5.y+8; 
}

switch (global.transto)
{
    case 1:
        if (instance_exists(objPlayerSpawn1)) instance_create(sx1,sy1,objPlayerStill);
        break;
    case 2:
        if (instance_exists(objPlayerSpawn2)) instance_create(sx2,sy2,objPlayerStill);
        break;
    case 3:
        if (instance_exists(objPlayerSpawn3)) instance_create(sx3,sy3,objPlayerStill);
        break;
    case 4:
        if (instance_exists(objPlayerSpawn4)) instance_create(sx4,sy4,objPlayerStill);
        break;
    case 5:
        if (instance_exists(objPlayerSpawn5)) instance_create(sx5,sy5,objPlayerStill);
        break;
}

EnterRoomTurnPlayer();

global.transto = 0;
