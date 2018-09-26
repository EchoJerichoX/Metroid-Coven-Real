if (!updatemap) exit;
//MAP COORDINATE CONTROL
if (global.curroom = 9999999) exit;
if (global.curroom = 10000) exit;
if (global.curroom = 10001) exit;
if (global.curroom = 10002) exit;
if (global.curroom = 10003) exit;
global.myposx = floor(x/256);
global.myposy = floor(y/256);
global.mapposx = global.myposx+global.mapoffsetx;
global.mapposy = global.myposy+global.mapoffsety;
global.dmap[global.mapposx,global.mapposy]=1;
var px,py;
if (instance_exists(PlayerParent))
   { px = PlayerParent.x; py = PlayerParent.y; }
else
   { px = -100; py = -100; }

//HUD MAP STUFF
var xx,yy,i;
xx=-2;
yy=-2;
i=1;
while (yy<3) {
    m[i]=string(global.map[global.mapposx+xx,global.mapposy+yy]);
    dm[i]=global.dmap[global.mapposx+xx,global.mapposy+yy];
    xx+=1;
    i+=1;
    if (xx>2) {
        yy+=1;
        xx=-2;
    }
}
 
//MAKE THE CURSOR BLINK
if malpha>-1 malpha-=0.02
if malpha<=0 malpha=1
