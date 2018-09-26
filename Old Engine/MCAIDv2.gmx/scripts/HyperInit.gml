// Higher numbers mean longer delays. Not faster speeds.
// Regular mode.
if (argument0 = false) then
{
    if (global.hypermode = false) then
    {
        global.powerbeamspd = 6;
        global.waveplasmabeamspd = 12;
        global.spazerbeamspd = 13.5;
        global.pulsebeamspd = 4.5;
        global.icedarkbeamspd = 14;
        global.novabeamspd = "X";
        global.lightbeamspd = 20;
        global.phazonbeamspd = 11.5;
        global.accel = global.accelprev;
    }
}

// Hyper mode.
if (argument0 = true) then
{
    if (global.hypermode = true) then
    {
        global.powerbeamspd = 5;
        global.waveplasmabeamspd = 9;
        global.spazerbeamspd = 10;
        global.pulsebeamspd = 3;
        global.icedarkbeamspd = 11;
        global.novabeamspd = "X";
        global.lightbeamspd = 15;
        global.phazonbeamspd = 8;
        global.accelprev = global.accel;
        global.accel = 3;
    }
}
/*
// Old speeds at 40 room speed.
// Regular mode.
if (argument0 = false) then
{
    if (global.hypermode = false) then
    {
        global.powerbeamspd = 4;
        global.waveplasmabeamspd = 9;
        global.spazerbeamspd = 10;
        global.pulsebeamspd = 3;
        global.icedarkbeamspd = 11;
        global.novabeamspd = "X";
        global.lightbeamspd = 15;
        global.phazonbeamspd = 8;
        global.accel = global.accelprev;
    }
}

// Hyper mode.
if (argument0 = true) then
{
    if (global.hypermode = true) then
    {
        global.powerbeamspd = 3;
        global.waveplasmabeamspd = 7;
        global.spazerbeamspd = 7;
        global.pulsebeamspd = 2;
        global.icedarkbeamspd = 8;
        global.novabeamspd = "X";
        global.lightbeamspd = 11;
        global.phazonbeamspd = 6;
        global.accelprev = global.accel;
        global.accel = 3;
    }
}
