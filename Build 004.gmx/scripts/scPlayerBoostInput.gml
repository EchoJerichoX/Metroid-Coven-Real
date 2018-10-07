if (!eId.HasArcDash) exit;

KeyBoost             = mouse_check_button(mb_middle);
KeyBoostPressed      = mouse_check_button_pressed(mb_middle);
KeyBoostReleased     = mouse_check_button_released(mb_middle);

// Press.
if (KeyBoostPressed) and (!boostdelay) and (!startboostcharge)
{
    startboostcharge = 1;
    with (instance_create(x,y,oEffect))
    {
        sound_play(snArcDashStart);
        sound_play(snArcDashCharge);
        sprite_index = sprArcDashReady;
        image_speed = 0.5;
        image_alpha = 0.2;
        image_angle = random(360);
    }
}

// Hold.

if (KeyBoost) and (startboostcharge) and (boostchargelevel < boostchargemax) boostchargelevel += 1;
   
if (boostalpha <= 0) boostalpha = boostalphaset;
boostfaderate = boostchargelevel/1500;
if (boostalpha > 0) boostalpha -= boostfaderate;

if (boostchargelevel > 0)
{
    var ce = random(boostchargelevel);
    if (abs(ce-boostchargemax) > boostchargemax/3) and (!boosteffectdelay)
    {
        boosteffectdelay = boosteffectdelaytimer;
        with (instance_create(x+random_range(boostchargelevel/boosteffectrangemod,boostchargelevel/-boosteffectrangemod),
                              y+random_range(boostchargelevel/boosteffectrangemod,boostchargelevel/-boosteffectrangemod),oEffect))
        {
            var s = random(other.boostchargelevel)+random(40);
            if (s > 40) sound_play(choose(snCrackleShort1,
                                          snCrackleShort2,
                                          snCrackleShort3,
                                          snCrackleShort4,
                                          snCrackleShort5));
            sprite_index = sprArcDashSpark;
            image_speed = 1;
            image_alpha = ((random(other.boostchargelevel))/other.boostchargemax)*0.9;
            clamp(image_alpha,0,1);
            image_angle = random(360);
            image_xscale = random_range(0.75,1.25);
            image_yscale = image_xscale;
            depth = other.depth+round(random_range(-2,1));
        }
    }
}

if (boosteffectdelay > 0) boosteffectdelay -= 1;
if (boostdelay > 0) boostdelay -= 1;

// Release.

if (KeyBoostReleased)
{
    if (boostchargelevel = boostchargemax)
    {
        motion_add(point_direction(x,y,mouse_x,mouse_y),boostspeed);
        friction = 0.1;
        boosting = 60;
    }
    boostchargelevel = 0;
    startboostcharge = 0;
    boostdelay = 10;
}

/*
var boostdir = point_direction(x,y,mouse_x,mouse_y);

if (boostdelay > 0)
    { boostdelay -= 1; exit; }
else boostdone = 0;

// Input controller.
if (boosting)
{
    if (boostup < 60) boostup += 1;
    if (boostup = 60) and (boostready < 10) boostready += 1;
    if (boostready = 10) boostgo = 1;
    else boostgo = 0;
    direction = point_direction(x,y,mouse_x,mouse_y);
}
else
{
    boostgo = 0;
    boostready = 0;
    if (boostup > 0) boostup -= 1;
}

if (boostgo) and (!boostdone)
{
    var destx = mouse_x;
    var desty = mouse_y;
    motion_add(boostdir,20);
    friction = 1;
    boostdone = 1;
    boostdelay = 120;
}
