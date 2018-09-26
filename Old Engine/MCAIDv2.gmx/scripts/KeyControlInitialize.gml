globalvar KEYALT, TOGGLEVISOR, POWERBEAM, WAVEBEAM, PLASMABEAM, SPAZERBEAM, PULSEBEAM, ICEBEAM, NOVABEAM, DARKBEAM, LIGHTBEAM, PHAZONBEAM;
globalvar MORPHBALL, LIGHTSEAR, VARIASUIT, GRAVITYSUIT, PHAZONSUIT, DARKSUIT, LIGHTSUIT, CORRUPTIONSUIT;
globalvar PAUSE, SCREENSHOT, TOGGLEZOOM, TOGGLEMOUSELOCK, TOGGLEFULLSCREEN, MOVELEFT, MOVERIGHT, MOVEUP, MOVEDOWN, KEYALT2, HYPERMODE, XRAY;

global.KEYMAX=32;

global.KEY[0]=0;
global.KEYNAME[0]="";
global.KEYNAME2[0]="";

DefaultControls();

if !(file_exists("controls.dat")) then SaveControls();
LoadControls();

/*
globalvar KEYALT, TOGGLEVISOR, POWERBEAM, WAVEBEAM, PLASMABEAM, SPAZERBEAM, PULSEBEAM, ICEBEAM, NOVABEAM, DARKBEAM, LIGHTBEAM, PHAZONBEAM;
globalvar MORPHBALL, LIGHTSEAR, VARIASUIT, GRAVITYSUIT, PHAZONSUIT, DARKSUIT, LIGHTSUIT, CORRUPTIONSUIT;
globalvar PAUSE, SCREENSHOT, TOGGLEZOOM, TOGGLEMOUSELOCK, TOGGLEFULLSCREEN, MOVELEFT, MOVERIGHT, MOVEUP, MOVEDOWN, KEYALT2, HYPERMODE, XRAY;
KEYALT=vk_shift;
TOGGLEVISOR=ord('X');
POWERBEAM=ord('1');
WAVEBEAM=ord('2');
PLASMABEAM=ord('3');
SPAZERBEAM=ord('4');
PULSEBEAM=ord('5');
ICEBEAM=ord('6');
NOVABEAM=ord('7');
DARKBEAM=ord('8');
LIGHTBEAM=ord('9');
PHAZONBEAM=ord('0');
MORPHBALL=ord('Z');
LIGHTSEAR=ord('Q');
VARIASUIT=vk_f2;
GRAVITYSUIT=vk_f3;
PHAZONSUIT=vk_f4;
DARKSUIT=vk_f5;
LIGHTSUIT=vk_f6;
CORRUPTIONSUIT=vk_f7;
PAUSE=vk_enter;
SCREENSHOT=vk_f9;
TOGGLEZOOM=vk_f11;
TOGGLEMOUSELOCK=ord('C');
TOGGLEFULLSCREEN=vk_f12;
MOVELEFT=ord('A');
MOVERIGHT=ord('D');
MOVEUP=ord('W');
MOVEDOWN=ord('S');
KEYALT2=vk_control;
HYPERMODE=ord('R');
XRAY=ord('V');

global.KEYMAX=32;

global.KEY[0]=0;

global.KEYNAME[0]="";

global.KEYNAME2[0]="";

if !(file_exists("controls.dat")) then MakeFileControls();
LoadControls();