KeyUp                = keyboard_check(ord("W"));
KeyLeft              = keyboard_check(ord("A"));
KeyDown              = keyboard_check(ord("S"));
KeyRight             = keyboard_check(ord("D"));

KeyPowerBeam         = keyboard_check_pressed(ord("1"));
KeyWaveBeam          = keyboard_check_pressed(ord("2"));
KeyPlasmaBeam        = keyboard_check_pressed(ord("3"));
KeySpazerBeam        = keyboard_check_pressed(ord("4"));
KeyPulseBeam         = keyboard_check_pressed(ord("5"));
KeyIceBeam           = keyboard_check_pressed(ord("6"));
KeyRuptureBeam       = keyboard_check_pressed(ord("7"));
KeyPhazonBeam        = keyboard_check_pressed(ord("8"));

KeySecondaryHeld     = keyboard_check(vk_shift);
KeySecondaryReleased = keyboard_check_released(vk_shift);
KeySecondarySwitch   = keyboard_check_pressed(vk_control);
KeyMorph             = keyboard_check_pressed(ord("Z"));
KeyVisor             = keyboard_check_pressed(ord("X"));

KeyFireNormal        = mouse_check_button(mb_left);
KeyFireClickSpeed    = mouse_check_button_pressed(mb_left);
KeyFireReleased      = mouse_check_button_released(mb_left);

KeyChargeUp          = mouse_check_button(mb_right);
KeyChargePressed     = mouse_check_button_pressed(mb_right);
KeyChargeRelease     = mouse_check_button_released(mb_right);

// --- Under Review ---
KeyDodge             = keyboard_check_pressed(vk_space);
KeyDodgeHold         = keyboard_check(vk_space);
KeyTorch             = keyboard_check_pressed(ord("F"));

if (KeyMorph = true) and (eId.HasMorphBall = true) and (!Overheated)
{
    if (MorphBall) and (collision_circle(x,y,8,oBlockParent,true,false)) exit;
    MorphBall = !MorphBall;
    if (MorphBall = false) sound_play(SamusUnmorph)
    else sound_play(SamusMorph)
    me = instance_create(x,y,oEffect);
    me.image_alpha = 1;
    me.image_angle = random(360);
    me.depth = 1;
    switch (Suit)
    {
        case Other.sPowerSuit: me.sprite_index = sprMorphPower; break;
        case Other.sVariaSuit: me.sprite_index = sprMorphVaria; break;
        case Other.sGravitySuit: me.sprite_index = sprMorphGravity; break;
        case Other.sCorruptionSuit: me.sprite_index = sprMorphCorruption; break;
    }
}
if (MorphBall = false) && (sprite_index = sprPlayerMorphBall)
    { sprite_index = sprPlayer; image_single = AnimationStart; mask_index = sprPlayerMask; }
if (MorphBall = true) && (sprite_index = sprPlayer)
    { sprite_index = sprPlayerMorphBall; image_single = BallAnimationStart; mask_index = sprPlayerMorphBallMask; }

if (KeyVisor) eId.visor = !eId.visor;

if (tile_layer_find(1999,x,y))
and (!tile_layer_find(1001,x,y))
{
    if (MorphBall) SpeedInterval = 35;
    else SpeedInterval = 45;
    OnIce = true;
}
else
{
    if (MorphBall) SpeedInterval = 10;
    else SpeedInterval = 5;
    OnIce = false;
}

if (DodgeCooldown > 0) DodgeCooldown -= 1;
if (Dodge > 0)
{
    if (!KeyDodgeHold) Dodge = 1;
    if (Dodge = 1)
        { MorphBall = false; sprite_index = sprPlayer; }
    Dodge -= 1;
    DodgeCooldown += 2;
}
else
{
    moving_direction_previous = moving_direction;
    moving_direction = 0;
    
    moving = true;    
    if (KeyUp)
        { mvspeed -= MaxSpeed/(SpeedInterval/1.5); moving_direction = 90; }
    if (KeyLeft)
        { mhspeed -= MaxSpeed/(SpeedInterval/1.5); moving_direction = 180; }
    if (KeyDown)
        { mvspeed += MaxSpeed/(SpeedInterval/1.5); moving_direction = 270; }
    if (KeyRight)
        { mhspeed += MaxSpeed/(SpeedInterval/1.5); moving_direction = 0; }
   
    hspeed = mhspeed;
    vspeed = mvspeed;
    if (MorphBall) maxs = MaxBallSpeed;
    else maxs = MaxSpeed;
    
    if (KeyRight) and (KeyUp) moving_direction = 45;
    if (KeyRight) and (KeyDown) moving_direction = 315;
    if (KeyLeft) and (KeyUp) moving_direction = 135;
    if (KeyLeft) and (KeyDown) moving_direction = 225;
    
    speed = min(speed,maxs);
    if ((KeyUp + KeyLeft + KeyDown + KeyRight) = 0)
    {
        moving_direction = -1;
        if (OnIce) speed = max(speed*0.95,0);
        else speed = max(speed*0.55,0);
        if (abs(speed) < 0.5) speed = 0;
        moving = false;
    }
    
    mhspeed = lengthdir_x(speed,direction);
    mvspeed = lengthdir_y(speed,direction);
    
    if (MorphBall)
    {
        if ((KeyUp + KeyLeft + KeyDown + KeyRight) = 0)
            { AnimationTimer = 0; }
        else AnimationTimer += 1;
        
        if (AnimationTimer = BallAnimationLimit)
        {
            if (BallAnimationStart != BallAnimationEnd)
            {
                image_single += 1;
                if (image_single > BallAnimationEnd) image_single = BallAnimationStart;
            }
            AnimationTimer = 0;
        }
        if (speed > maxs) speed = maxs;
        image_angle = direction;
    }
    else
    {
        if ((KeyUp + KeyLeft + KeyDown + KeyRight) = 0)
            { image_single = AnimationStart; AnimationTimer = 0; }
        else AnimationTimer += 1;
        if (AnimationTimer = 2)
        {
            if (AnimationStart != AnimationEnd)
            {
                image_single += 1;
                if (image_single > AnimationEnd) image_single = AnimationStart;
            }
            AnimationTimer = 0;
        }
    }
    
    move_step_ext(x+mhspeed,y+mvspeed,sign(0)*min(1,abs(0)),oBlockParent);
    speed = 0;
}
